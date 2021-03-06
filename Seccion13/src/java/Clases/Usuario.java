package Clases;

//import java.util.ArrayList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;


public class Usuario {
    
    private int id_usuario;
    private String nombre;
    private String ap;
    private String am;
    private String inst;
    private int no_empleado;
    private int seccion_sindi;
    private String unidad_ads;
    private String correo;
    private String pass;
    private int rol;
    private String telefono;

    //Constructores
    
    /**
     * @param id_usuario
     * @param nombre
     * @param ap
     * @param am
     * @param inst
     * @param no_empleado
     * @param seccion_sindi
     * @param unidad_ads
     * @param correo
     * @param pass
     * @param rol 
     */
    public Usuario(int id_usuario,String nombre, String ap, String am, String telefono, String inst, int no_empleado, int seccion_sindi, String unidad_ads, String correo, String pass, int rol) {
        this.id_usuario = id_usuario;
        this.nombre = nombre;
        this.ap = ap;
        this.am = am;
        this.telefono = telefono;
        this.inst = inst;
        this.no_empleado = no_empleado;
        this.seccion_sindi = seccion_sindi;
        this.unidad_ads = unidad_ads;
        this.correo = correo;
        this.pass = pass;
        this.rol = rol;
    }
    
    /**
     * @param nombre
     * @param ap
     * @param am
     * @param inst
     * @param no_empleado
     * @param seccion_sindi
     * @param unidad_ads
     * @param correo
     * @param pass
     * @param rol 
     */
    public Usuario(String nombre, String ap, String am, String telefono, String inst, int no_empleado, int seccion_sindi, String unidad_ads, String correo, String pass, int rol) {
        this.nombre = nombre;
        this.ap = ap;
        this.am = am;
        this.inst = inst;
        this.no_empleado = no_empleado;
        this.telefono = telefono;
        this.seccion_sindi = seccion_sindi;
        this.unidad_ads = unidad_ads;
        this.correo = correo;
        this.pass = pass;
        this.rol = rol;
    }

    /**
     * Constructor vacio como su cora
     */
    public Usuario(){}
    
    public ArrayList<Usuario> mostrarUsuario(){
        ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
        Connection c = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Usuario usu = null;
        
        try{
            c = new Conexion().getConexion();
            
            String sql = "SELECT id_usuario,AES_DECRYPT(nombre, 'cheng') as nombre,AES_DECRYPT(apaterno, 'cheng') as apaterno,AES_DECRYPT(amaterno, 'cheng') as amaterno,AES_DECRYPT(telefono, 'cheng') as telefono,AES_DECRYPT(instlabo, 'cheng') as instlabo,AES_DECRYPT(no_empleado, 'cheng') as no_empleado,AES_DECRYPT(seccionsindi, 'cheng') as seccionsindi,AES_DECRYPT(unidad_ads, 'cheng') as unidad_ads,AES_DECRYPT(correo, 'cheng') as correo,AES_DECRYPT(pass, 'cheng') as pass,rol FROM usuario where rol = ?";
            ps = c.prepareStatement(sql);
            ps.setInt(1, 1);
            rs = ps.executeQuery();
            
            while(rs.next()){             
                usu = new Usuario(rs.getInt("id_usuario"),
                                         rs.getString("nombre"),
                                         rs.getString("apaterno"),
                                         rs.getString("amaterno"),
                                         rs.getString("telefono"),
                                         rs.getString("instlabo"),
                                         rs.getInt("no_empleado"),
                                         rs.getInt("seccionsindi"),
                                         rs.getString("unidad_ads"),
                                         rs.getString("correo"),
                                         rs.getString("pass"),
                                         rs.getInt("rol")); 
                usuarios.add(usu);
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
        return usuarios;
    }
    /**
     * 
     * @return true si hay un registro exitoso
     */
    public boolean registrarUsuario(){
        Connection c = null;
        PreparedStatement ps = null;
        
        try{
            c = new Conexion().getConexion();
            
            String sql = "INSERT INTO usuario (nombre,apaterno,amaterno,telefono,instlabo,no_empleado, seccionsindi, unidad_ads,correo, pass, rol) values (  AES_ENCRYPT(?, 'cheng'),AES_ENCRYPT(?, 'cheng'),AES_ENCRYPT(?, 'cheng'),AES_ENCRYPT(?, 'cheng'),AES_ENCRYPT(?, 'cheng'),AES_ENCRYPT(?, 'cheng'),AES_ENCRYPT(?, 'cheng'),AES_ENCRYPT(?, 'cheng'),AES_ENCRYPT(?, 'cheng'),AES_ENCRYPT(?, 'cheng'),?)";
            ps = c.prepareStatement(sql);
            ps.setNString(1, this.nombre);
            ps.setNString(2, this.ap);
            ps.setNString(3, this.am);
            ps.setNString(4, this.telefono);
            ps.setNString(5, this.inst);
            ps.setInt(6, this.no_empleado);
            ps.setInt(7, this.seccion_sindi);
            ps.setNString(8, this.unidad_ads);
            ps.setNString(9, this.correo);
            ps.setNString(10, this.pass);
            ps.setInt(11, 1);
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

    public void cambiarPass(String correo, String pass){
        Connection c = null;
        PreparedStatement ps = null;
        
        try{
            c = new Conexion().getConexion();
            
            String sql = "UPDATE usuario set pass = AES_ENCRYPT(?, 'cheng') where AES_DECRYPT(correo, 'cheng') = ?";
            ps = c.prepareStatement(sql);
            ps.setNString(1, pass);
            ps.setNString(2, correo);
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

    
    
    /**
     * 
     * @param correo
     * @param pass
     * @return usuario para mandarlo como parametro de httpsession
     */
    public Usuario login(String correo, String pass){
        //ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
        Connection c = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Usuario usu = null;
        
        try{
            c = new Conexion().getConexion();
            
            String sql = "SELECT id_usuario,AES_DECRYPT(nombre, 'cheng') as nombre,AES_DECRYPT(apaterno, 'cheng') as apaterno,AES_DECRYPT(amaterno, 'cheng') as amaterno,AES_DECRYPT(telefono, 'cheng') as telefono,AES_DECRYPT(instlabo, 'cheng') as instlabo,AES_DECRYPT(no_empleado, 'cheng') as no_empleado,AES_DECRYPT(seccionsindi, 'cheng') as seccionsindi,AES_DECRYPT(unidad_ads, 'cheng') as unidad_ads,AES_DECRYPT(correo, 'cheng') as correo,AES_DECRYPT(pass, 'cheng') as pass,rol FROM usuario where  AES_DECRYPT(correo,'cheng') = ? and  AES_DECRYPT(pass,'cheng') = ?";
            ps = c.prepareStatement(sql);
            ps.setString(1, correo);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            
            while(rs.next()){             
                usu = new Usuario(rs.getInt("id_usuario"),
                                         rs.getString("nombre"),
                                         rs.getString("apaterno"),
                                         rs.getString("amaterno"),
                                         rs.getString("telefono"),
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
        return usu;
        
        
    }
    
    public InternetAddress[] getCorreos() throws AddressException {
        
        Connection c = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<InternetAddress> destinos = new ArrayList<InternetAddress>();
        
        try{
            c = new Conexion().getConexion();
            
            String sql = "SELECT AES_DECRYPT(correo,'cheng') as correo FROM usuario where rol = 1";
            ps = c.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){             
                destinos.add(new InternetAddress(rs.getString("correo")));
            }
        }catch(SQLException ex){
            ex.printStackTrace();
            destinos = null;
        }finally{
            try{
                rs.close();
                ps.close();
                c.close();
            }catch(SQLException ex){
                ex.printStackTrace();
            }
        }
        InternetAddress[] daniela = destinos.toArray(new InternetAddress[destinos.size()]);
        return daniela;
        
    }
    
    //GETTERS
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

    public String getTelefono() {
        return telefono;
    }
    
}
