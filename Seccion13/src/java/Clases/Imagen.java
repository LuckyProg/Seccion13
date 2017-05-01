/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.io.File;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author derda
 */
public class Imagen {
    
    private String id_img;
    private InputStream img;
    private String ext;
    private long len;
    
    public Imagen(){};
    
    public Imagen(InputStream img, String ext, long len){
        
        this.id_img = generarId();
        this.img = img;
        this.ext = ext;
        this.len = len;
        
    }
    
    public String guardarImagen(){
        
        Connection c = null;
        PreparedStatement ps = null;
        try{
            c = new Conexion().getConexion();
            
            String sql = "INSERT INTO imagenes (id_img, img, ext) values (?,?,?)";
            ps = c.prepareStatement(sql);
            ps.setString(1, id_img);
            ps.setBinaryStream(2, img, len);
            ps.setString(3, ext);
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
        return id_img;
        
    }
    
    public String generarId(){
    
        String passt = "";
        String num = "0123456789";
        String min = "abcdefghijklmnopqrstuvwxyz";
        String may = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        int temp = 0;
        String tem = "";
        for(int i=0; i<10; i++){
        //(int)(Math.random()*(HASTA-DESDE+1)+DESDE); 
        
        temp =  (int)(Math.random()*(3-1+1)+1);
        switch(temp){
            case 1: 
                tem=String.valueOf(num.charAt((int)(Math.random()*(10))));
            break;
            case 2:
                tem=String.valueOf(min.charAt((int)(Math.random()*(26))));
            break;
            case 3:
                tem=String.valueOf(may.charAt((int)(Math.random()*(26))));
            break;
            default:
                System.out.println("ERROR NUCLIAR");
                break;
        }
         passt = passt+""+tem;;
        }
        return passt;
        
    }
    
    public byte[] obtenerImagen(String id_img){
        Connection c = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        byte[] data = null;
        try{
            c = new Conexion().getConexion();
            
            String sql = "SELECT img FROM imagenes where id_img = ?";
            ps = c.prepareStatement(sql);
            ps.setString(1, id_img);
            rs = ps.executeQuery();
            
            while(rs.next()){             
                Blob blob = rs.getBlob("img");
                data = blob.getBytes(1, (int)blob.length());
            }
        }catch(SQLException ex){
            ex.printStackTrace();
        }finally{
            try{
                rs.close();
                ps.close();
                c.close();
            }catch(SQLException ex){
                ex.printStackTrace();
            }
        }
        return data;
    }
    
    public String obtenerExt(String id_img){
        Connection c = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String ext = null;
        try{
            c = new Conexion().getConexion();
            
            String sql = "SELECT ext FROM imagenes where id_img = ?";
            ps = c.prepareStatement(sql);
            ps.setString(1, id_img);
            rs = ps.executeQuery();
            
            while(rs.next()){             
                ext = rs.getString("ext");
            }
        }catch(SQLException ex){
            ex.printStackTrace();
        }finally{
            try{
                rs.close();
                ps.close();
                c.close();
            }catch(SQLException ex){
                ex.printStackTrace();
            }
        }
        return ext;
    }
    
}
