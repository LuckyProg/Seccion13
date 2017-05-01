/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

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
public class Documento {
    
    private String id_doc;
    private InputStream doc;
    private String ext;
    private long len;
    
    public Documento(){};
    
    public Documento(InputStream doc, String ext, long len){
        
        this.id_doc = generarId();
        this.doc = doc;
        this.ext = ext;
        this.len = len;
        
    }
    
    public String guardarDocumento(){
        
        Connection c = null;
        PreparedStatement ps = null;
        try{
            c = new Conexion().getConexion();
            
            String sql = "INSERT INTO documentos (id_doc, doc, ext) values (?,?,?)";
            ps = c.prepareStatement(sql);
            ps.setString(1, id_doc);
            ps.setBinaryStream(2, doc, len);
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
        return id_doc;
        
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
    
    public String obtenerExt(String id_doc){
        Connection c = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String ext = null;
        try{
            c = new Conexion().getConexion();
            
            String sql = "SELECT ext FROM documentos where id_doc = ?";
            ps = c.prepareStatement(sql);
            ps.setString(1, id_doc);
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
    
    public byte[] obtenerDocumento(String id_doc){
        Connection c = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        byte[] data = null;
        try{
            c = new Conexion().getConexion();
            
            String sql = "SELECT doc FROM documentos where id_doc = ?";
            ps = c.prepareStatement(sql);
            ps.setString(1, id_doc);
            rs = ps.executeQuery();
            
            while(rs.next()){             
                Blob blob = rs.getBlob("doc");
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
    
}
