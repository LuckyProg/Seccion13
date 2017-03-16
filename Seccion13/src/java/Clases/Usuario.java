package Clases;

//import java.util.ArrayList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


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
    public Usuario(int id_usuario,String nombre, String ap, String am, String inst, int no_empleado, int seccion_sindi, String unidad_ads, String correo, String pass, int rol) {
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
    public Usuario(String nombre, String ap, String am, String inst, int no_empleado, int seccion_sindi, String unidad_ads, String correo, String pass, int rol) {
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

    /**
     * Constructor vacio como su cora
     */
    public Usuario(){}
    
    
    /**
     * 
     * @return true si hay un registro exitoso
     */
    public boolean registrarUsuario(){
        Connection c = null;
        PreparedStatement ps = null;
        
        try{
            c = new Conexion().getConexion();
            
            String sql = "INSERT INTO usuario (nombre, apaterno, amaterno, instlabo, no_empleado, seccionsindi, unidad_ads, correo, pass, rol) values (?,?,?,?,?,?,?,?,?,?)";
            ps = c.prepareStatement(sql);
            ps.setString(1, this.nombre);
            ps.setString(2, this.ap);
            ps.setString(3, this.am);
            ps.setString(4, this.inst);
            ps.setInt(5, this.no_empleado);
            ps.setInt(6, this.seccion_sindi);
            ps.setString(7, this.unidad_ads);
            ps.setString(8, this.correo);
            ps.setString(9, this.pass);
            ps.setInt(10, this.rol);
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
        return usu;
        
        
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
    
    
    
    
    
    
    
}
