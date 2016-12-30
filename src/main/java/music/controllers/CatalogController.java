package music.controllers;

import music.business.Customer;
import music.business.Download;
import music.business.Product;
import music.dao.ProductDao;
import music.dao.impl.CustomerDaoImpl;
import music.dao.impl.DownloadDB;
import music.util.CookieUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/catalog/product")
public class CatalogController {
    ProductDao productDao;

    public ProductDao getProductDao() {
        return productDao;
    }

    public void setProductDao(ProductDao productDao) {
        this.productDao = productDao;
    }

    @RequestMapping(value = "/{productCode}", method= RequestMethod.GET)
    private String showProduct(@PathVariable String productCode, Model model) {

        if (productCode != null) {
            Product product = productDao.selectProduct(productCode);
            model.addAttribute("product", product);
        }

        return "/catalog/product.jsp";
    }

    @RequestMapping(value = "/{productCode}/listen", method= RequestMethod.GET)
    private String listen(HttpServletRequest request, HttpServletResponse response) {

        HttpSession session = request.getSession();
        Customer user = (Customer) session.getAttribute("user");

        // if the User object doesn't exist, check for the email cookie
        if (user == null) {
            Cookie[] cookies = request.getCookies();
            String emailAddress = CookieUtil.getCookieValue(cookies, "emailCookie");
            // if the email cookie doesn't exist, go to the registration page
            if (emailAddress == null || emailAddress.equals("")) {
                return "/catalog/register.jsp";
            } else {
                user = CustomerDaoImpl.selectCustomer(emailAddress);
                // if a user for that email isn't in the database, 
                // go to the registration page
                if (user == null) {
                    return "/catalog/register.jsp";
                }
                session.setAttribute("user", user);
            }
        }

        Product product = (Product) session.getAttribute("product");

        Download download = new Download();
        download.setUser(user);
        download.setProductCode(product.getCode());
        DownloadDB.insert(download);

        return "/catalog/" + product.getCode() + "/sound.jsp";
    }

    @RequestMapping(value = "/register", method= RequestMethod.POST)
    private String registerUser(HttpServletRequest request, HttpServletResponse response) {

        HttpSession session = request.getSession();
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");

        Customer user;
        if (CustomerDaoImpl.emailExists(email)) {
            user = CustomerDaoImpl.selectCustomer(email);
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setEmail(email);
            CustomerDaoImpl.update(user);
        } else {
            user = new Customer();
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setEmail(email);
            CustomerDaoImpl.insert(user);
        }

        session.setAttribute("user", user);

        Cookie emailCookie = new Cookie("emailCookie", email);
        emailCookie.setMaxAge(60 * 60 * 24 * 365 * 2);
        emailCookie.setPath("/");
        response.addCookie(emailCookie);

        Product product = (Product) session.getAttribute("product");
        String url = "/catalog/" + product.getCode() + "/sound.jsp";
        return url;
    }
}