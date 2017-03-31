/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

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
            try{
                Part archi = request.getPart("imagen");
                InputStream is = null;
                if(archi !=null && archi.getSize()>0){

                    is = archi.getInputStream();
                    //BufferedInputStream bufin = new BufferedInputStream(is);
                    File imagen = new File("C:\\Users\\derda\\Desktop\\imagensita.jpg");
                    if (imagen.createNewFile()){
                        System.out.println("File is created!");
                      }else{
                        System.out.println("File already exists.");
                      }
                    FileOutputStream os = new FileOutputStream(imagen);

                    byte[] buffer = new byte[1024];
                    int bytesRead;
                    //read from is to buffer
                    while((bytesRead = is.read(buffer)) !=-1){
                        os.write(buffer, 0, bytesRead);
                    }
                    is.close();
                    //flush OutputStream to write any buffered data to file
                    os.flush();
                    os.close();
                }
                
            }catch (IOException e) {
                System.out.println(e);
                e.printStackTrace();
                response.sendRedirect("No lo guarda");
            }
            try{
                Part archi2 = request.getPart("documento");
                String fileC = archi2.getContentType();
                InputStream doc = null;
                if(archi2 !=null && archi2.getSize()>0){

                    doc = archi2.getInputStream();
                    //BufferedInputStream bufin = new BufferedInputStream(doc);
                    System.out.println(fileC);
                    File documento = new File("C:\\Users\\derda\\Desktop\\hola.txt");
                    OutputStream os = new FileOutputStream(documento);

                    byte[] buffer = new byte[1024];
                    int bytesRead;
                    //read from is to buffer
                    while((bytesRead = doc.read(buffer)) !=-1){
                        os.write(buffer, 0, bytesRead);
                    }
                    doc.close();
                    //flush OutputStream to write any buffered data to file
                    os.flush();
                    os.close();
                }
            }catch (IOException e) {
                e.printStackTrace();
            }
            
            response.sendRedirect("Todo bien");
    }
    
}
