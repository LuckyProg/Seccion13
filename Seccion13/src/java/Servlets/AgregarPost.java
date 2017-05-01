/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Clases.Documento;
import Clases.Imagen;
import Clases.Post;
import java.io.File;
import java.io.FileOutputStream;
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
 * @author derda
 */
@MultipartConfig(maxFileSize = 169999999)
public class AgregarPost extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String ext="";
            String extd="";
            InputStream is = null;
            InputStream doc = null;
            boolean i = false;
            boolean d = false;
            Part archi = null;
            Part archi2 = null;
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
                extd = request.getParameter("extd");
                archi2 = request.getPart("documento");
                if(archi2 !=null && archi2.getSize()>0){
                    doc = archi2.getInputStream();
                    d = true;
                }
            }catch (IOException e) {
                e.printStackTrace();
            }
            try{
                if(!i&&!d){
                    new Post(request.getParameter("texto"), request.getParameter("titulo"), null, null).agregarPost();
                }
                if(i&&!d){
                    new Post(request.getParameter("texto"), request.getParameter("titulo"), new Imagen(is, ext, archi.getSize()).guardarImagen(), null).agregarPost();
                }
                if(!i&&d){
                    new Post(request.getParameter("texto"), request.getParameter("titulo"), null, new Documento(doc, extd, archi2.getSize()).guardarDocumento()).agregarPost();
                }
                if(i&&d){
                    new Post(request.getParameter("texto"), request.getParameter("titulo"), new Imagen(is, ext, archi.getSize()).guardarImagen(), new Documento(doc, extd, archi2.getSize()).guardarDocumento()).agregarPost();
                }
            }catch(Exception e){
                e.printStackTrace();
            }
            
            response.sendRedirect("Todo bien");
    }
    
}
