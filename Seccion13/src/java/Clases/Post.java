/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

/**
 *
 * @author derda
 */
public class Post {
    
    private String texto;
    private String titulo;
    private String idImagen;
    private String idDocumento;
    private String fecha;
    
    public Post(String texto, String titulo, String idImagen, String idDocumento){
        
        this.texto = texto;
        this.titulo = titulo;
        this.idImagen = idImagen;
        this.idDocumento = idDocumento;
        
    }
    
    public Post(){}
    
    public boolean agregarPost(){
        
        Connection c = null;
        PreparedStatement ps = null;
        try{
            c = new Conexion().getConexion();
            
            String sql = "INSERT INTO post (texto, titulo, id_img, id_doc, fecha) values (?,?,?,?,now())";
            ps = c.prepareStatement(sql);
            ps.setString(1, this.texto);
            ps.setString(2, this.titulo);
            ps.setString(3, this.idImagen);
            ps.setString(4, this.idDocumento);
            ps.executeUpdate();
            return true;            

        }catch(SQLException ex){
            ex.printStackTrace();
            return false;
        }finally{
            try{
                ps.close();
                c.close();
            }catch(SQLException ex){
                ex.printStackTrace();
            }
        }
    }
    
    public Vector<Post> obtenerPost(){
        
        Vector<Post> post =  new Vector<Post>();
        Connection c = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Post postit = null;
        
        try{
            c = new Conexion().getConexion();
            
            String sql = "select * from Post order by id_post DESC";
            ps = c.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                postit = new Post();
                postit.setTexto(rs.getString("texto"));
                postit.setTitulo(rs.getString("titulo"));
                postit.setRutaImagen(rs.getString("id_img"));
                postit.setRutaDocumento(rs.getString("id_doc"));
                postit.setFecha(rs.getString("fecha"));
                post.add(postit);
            }
        }catch(SQLException ex){
            System.out.println(ex);
            ex.printStackTrace();
            post=null;
        }finally{
            try{
                //rs.close();
                //ps.close();
                c.close();
            }catch(SQLException ex){
                ex.printStackTrace();
            }
        }
        return post;
        /*Vector <Quinela> q =new Quinela().mostrarPronosticos(id_usuario,semana);
                    Vector <Quinela> q2 =new Quinela().mostrarPronosticos(id2,semana);
                    int pos = 0;
                    for(Quinela qui:q){*/
    
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getRutaImagen() {
        return idImagen;
    }

    public void setRutaImagen(String rutaImagen) {
        this.idImagen = rutaImagen;
    }

    public String getRutaDocumento() {
        return idDocumento;
    }

    public void setRutaDocumento(String rutaDocumento) {
        this.idDocumento = rutaDocumento;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
}
