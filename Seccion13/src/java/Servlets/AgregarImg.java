/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Clases.Imagen;
import java.io.IOException;
import java.io.InputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


    @MultipartConfig(maxFileSize = 169999999)
public class AgregarImg extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String ext="";
            InputStream is = null;
            boolean i = false;
            Part archi = null;
            try{
                ext = request.getParameter("ext");
                archi = request.getPart("imagen");
                is = null;
                if(archi !=null && archi.getSize()>0){
                    is = archi.getInputStream();
                    i = true;
                }
                
            }catch (IOException e) {
                System.out.println(e);
                e.printStackTrace();
                response.sendRedirect("No lo guarda");
            }
            try{
                if(i){
                    new Imagen(is,ext,archi.getSize()).guardarImagen();
                }
                
              }catch(Exception e){
                e.printStackTrace();
            }
            
            response.sendRedirect("paginas_admin/agregarImg.jsp");
    }


}
