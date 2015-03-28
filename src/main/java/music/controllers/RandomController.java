package music.controllers;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.Random;

public class RandomController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url= processRequest(request, response);

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url= processRequest(request, response);

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

   public String processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       //choose random album
       String[] albums = {"8601","jr01","pf01","pf02"};
       int idx = new Random().nextInt(albums.length);
       String random = (albums[idx]);

       String path = "/images/" + random +  "_cover.jpg";

       return path;
   }
}
