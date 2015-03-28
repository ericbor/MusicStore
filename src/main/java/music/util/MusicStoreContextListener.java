package music.util;

import javax.servlet.*;
import java.util.*;

public class MusicStoreContextListener implements ServletContextListener {


    @Override
    public void contextInitialized(ServletContextEvent event) {
        
        ServletContext sc = event.getServletContext();

        // get the absolute paths for switching regular and secure connections
        String contextPath = sc.getContextPath();
        String absolutePath = "http://localhost:8080" + contextPath;
        String absolutePathSecure = "https://localhost:8443" + contextPath;
        sc.setAttribute("absolutePath", absolutePath);
        sc.setAttribute("absolutePathSecure", absolutePathSecure);
        
        // initialize the customer service email address that's used throughout the web site
        String custServEmail = sc.getInitParameter("custServEmail");
        sc.setAttribute("custServEmail", custServEmail);

        // initialize the current year that's used in the copyright notice
        GregorianCalendar currentDate = new GregorianCalendar();
        int currentYear = currentDate.get(Calendar.YEAR);
        sc.setAttribute("currentYear", currentYear);

        // initialize the array of years that's used for the credit card year
        ArrayList<String> creditCardYears = new ArrayList<String>();
        for (int i = 0; i < 8; i++) {
            int year = currentYear + i;
            String yearString = Integer.toString(year);
            creditCardYears.add(yearString);
        }
        sc.setAttribute("creditCardYears", creditCardYears);

        //display random album on deploy
        String[] albums = {"8601","jr01","pf01","pf02"};
        int idx = new Random().nextInt(albums.length);
        String random = (albums[idx]);
        //String path = "/musicStore/images/" + random + "_cover.jpg";
        sc.setAttribute("random", random);
    }

    @Override
    public void contextDestroyed(ServletContextEvent event) {
        // no cleanup necessary
    }
}