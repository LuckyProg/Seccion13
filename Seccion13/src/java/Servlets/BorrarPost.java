/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Clases.Post;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Fernando
 */
public class BorrarPost extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            int id_post = Integer.parseInt(request.getParameter("id_post"));
            try{
                new Post().borrarPost(id_post);
                response.sendRedirect("paginas_admin/posts.jsp");
            }catch (IOException e) {
                System.out.println(e);
                e.printStackTrace();
                response.sendRedirect("error.jsp");
            }
            
            
    }
    
}