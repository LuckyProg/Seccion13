package Clases;

import java.util.ArrayList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Usuario {
    
    int id_usuario;
    String nombre;
    String ap;
    String am;
    String inst;
    int no_empleado;
    int seccion_sindi;
    String unidad_ads;
    String correo;
    String pass;
    int rol;

    public Usuario(String nombre, String ap, String am, String inst, int no_empleado, int seccion_sindi, String unidad_ads, String correo, String pass, int rol) {
        this.id_usuario = id_usuario;
        this.nombre = nombre;
        this.ap = ap;
        this.am = am;
        this.inst = inst;
        this.no_empleado = no_empleado;
        this.seccion_sindi = seccion_sindi;
        this.unidad_ads = unidad_ads;
        this.correo = correo;
        this.pass = pass;
        this.rol = rol;
    }

    
    public Usuario(){}
    
    
    //Registro Usuario
    public boolean registrarUsuario(){
        if(validarUsuario()){
            guardarUsuario();
            return true;
        }else{
            return false;
        }
        
    }
    
    private boolean validarUsuario() {
       return false; 
    }

    private void guardarUsuario() {
        //TODO Conexion a base y registro
    }
    
    
    //Login Usuario
    
    public Usuario login(String correo, String pass){
        //ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
        Connection c = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Usuario usu = null;
        
        try{
            c = new Conexion().getConexion();
            
            String sql = "SELECT * FROM usuario where correo = ? and pass = ?";
            ps = c.prepareStatement(sql);
            ps.setString(1, correo);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            
            while(rs.next()){             
                usu = new Usuario(rs.getInt("id_usuario"),
                                         rs.getString("nombre"),
                                         rs.getString("apaterno"),
                                         rs.getString("amaterno"),
                                         rs.getString("instlabo"),
                                         rs.getInt("no_empleado"),
                                         rs.getInt("seccionsindi"),
                                         rs.getString("unidad_ads"),
                                         rs.getString("correo"),
                                         rs.getString("pass"),
                                         rs.getInt("rol")); 
            }
        }catch(SQLException ex){
            ex.printStackTrace();
            usu = null;
        }finally{
            try{
                rs.close();
                ps.close();
                c.close();
            }catch(SQLException ex){
                ex.printStackTrace();
            }
        }
        System.out.println(usu);
        return usu;
        
        
    }
    

    public int getId_usuario() {
        return id_usuario;
    }

    public String getNombre() {
        return nombre;
    }

    public String getAp() {
        return ap;
    }

    public String getAm() {
        return am;
    }

    public String getInst() {
        return inst;
    }

    public int getNo_empleado() {
        return no_empleado;
    }

    public int getSeccion_sindi() {
        return seccion_sindi;
    }

    public String getUnidad_ads() {
        return unidad_ads;
    }

    public String getCorreo() {
        return correo;
    }

    public String getPass() {
        return pass;
    }

    public int getRol() {
        return rol;
    }
    
    
    
    
    
    
    
}
