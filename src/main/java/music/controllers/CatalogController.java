package music.controllers;

import music.business.Customer;
import music.business.Download;
import music.business.Product;
import music.data.CustomerDB;
import music.data.DownloadDB;
import music.data.ProductDB;
import music.util.CookieUtil;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class CatalogController extends HttpServlet {


    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String requestURI = request.getRequestURI();
        String url;
        if (requestURI.endsWith("/listen")) {
            url = listen(request, response);
        } else {
            url = showProduct(request, response);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String requestURI = request.getRequestURI();
        String url = "/catalog";
        if (requestURI.endsWith("/register")) {
            url = registerUser(request, response);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    private String showProduct(HttpServletRequest request, HttpServletResponse response) {
        String productCode = request.getPathInfo();
        System.out.println(request.getPathInfo());
        // This should never be null. But just to be safe.
        if (productCode != null) {
            productCode = productCode.substring(1);
            Product product = ProductDB.selectProduct(productCode);
            HttpSession session = request.getSession();
            session.setAttribute("product", product);
        }
        return "/catalog/" + productCode + "/index.jsp";
    }

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
                user = CustomerDB.selectCustomer(emailAddress);
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

    private String registerUser(HttpServletRequest request, HttpServletResponse response) {

        HttpSession session = request.getSession();
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");

        Customer user;
        if (CustomerDB.emailExists(email)) {
            user = CustomerDB.selectCustomer(email);
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setEmail(email);
            CustomerDB.update(user);
        } else {
            user = new Customer();
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setEmail(email);
            CustomerDB.insert(user);
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