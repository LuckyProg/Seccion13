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
import java.util.ArrayList;
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
    private int id_post;
    private String tipo;
    public Post(String texto, String titulo, String idImagen, String idDocumento, String tipo){
        
        this.texto = texto;
        this.titulo = titulo;
        this.idImagen = idImagen;
        this.idDocumento = idDocumento;
        this.tipo = tipo;
        
    }
    
    public Post(){}
    
    public boolean agregarPost(){
        
        Connection c = null;
        PreparedStatement ps = null;
        try{
            c = new Conexion().getConexion();
            
            String sql = "INSERT INTO post (texto, titulo, id_img, id_doc, fecha, tipo) values (?,?,?,?,now(),?)";
            ps = c.prepareStatement(sql);
            ps.setString(1, this.texto);
            ps.setString(2, this.titulo);
            ps.setString(3, this.idImagen);
            ps.setString(4, this.idDocumento);
            ps.setString(5, this.tipo);
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
    
    public ArrayList<Post> obtenerPost(){
        
        ArrayList<Post> post = new ArrayList();
        Connection c = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Post postit = null;
        
        try{
            c = new Conexion().getConexion();
            
            String sql = "select * from post order by id_post DESC";
            ps = c.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                postit = new Post();
                postit.setId_post(rs.getInt("id_post"));
                postit.setTexto(rs.getString("texto"));
                postit.setTitulo(rs.getString("titulo"));
                postit.setRutaImagen(rs.getString("id_img"));
                postit.setRutaDocumento(rs.getString("id_doc"));
                postit.setFecha(rs.getString("fecha"));
                postit.setTipo(rs.getString("tipo"));
                post.add(postit);
            }
        }catch(SQLException ex){
            System.out.println(ex);
            ex.printStackTrace();
            post=null;
        }finally{
            try{
                rs.close();
                ps.close();
                c.close();
            }catch(SQLException ex){
                ex.printStackTrace();
            }
        }
        return post;
    
    }

    public ArrayList<Post> obtenerPostporTipo(String tipo){
        System.out.println(tipo);
        ArrayList<Post> post = new ArrayList();
        Connection c = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Post postit = null;
        
        try{
            c = new Conexion().getConexion();
            
            String sql = "select * from post where tipo = '"+tipo+"' order by id_post DESC";
            ps = c.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                postit = new Post();
                postit.setId_post(rs.getInt("id_post"));
                postit.setTexto(rs.getString("texto"));
                postit.setTitulo(rs.getString("titulo"));
                postit.setRutaImagen(rs.getString("id_img"));
                postit.setRutaDocumento(rs.getString("id_doc"));
                postit.setFecha(rs.getString("fecha"));
                postit.setTipo(rs.getString("tipo"));
                post.add(postit);
            }
        }catch(SQLException ex){
            System.out.println(ex);
            ex.printStackTrace();
            post=null;
        }finally{
            try{
                //rs.close();
                ps.close();
                c.close();
            }catch(SQLException ex){
                ex.printStackTrace();
            }
        }
        return post;
    
    }

    public void borrarPost(int id_post){
        Connection c = null;
        PreparedStatement ps = null;
        try{
            c = new Conexion().getConexion();
            
            String sql = "DELETE from post where id_post = ?";
            ps = c.prepareStatement(sql);
            ps.setInt(1, id_post);
            ps.executeUpdate();          

        }catch(SQLException ex){
            ex.printStackTrace();
        }finally{
            try{
                ps.close();
                c.close();
            }catch(SQLException ex){
                ex.printStackTrace();
            }
        }
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

    public void setId_post(int id_post){
        this.id_post = id_post;
    }
    public int getId_post(){
        return id_post;
    }

    public void setTipo(String tipo){
        this.tipo = tipo;
    }
    public String getTipo(){
        return tipo;
    }
    
}
