package Clases;


public class Usuario {
    
    String nombre;
    String ap;
    String am;
    String inst;
    String unidad;
    int no_empleado;
    int seccion_sindi;
    String correo;
    String pass;

    public Usuario(String nombre, String ap, String am, String inst, String unidad, int no_empleado, int seccion_sindi, String correo, String pass) {
        this.nombre = nombre;
        this.ap = ap;
        this.am = am;
        this.inst = inst;
        this.unidad = unidad;
        this.no_empleado = no_empleado;
        this.seccion_sindi = seccion_sindi;
        this.correo = correo;
        this.pass = pass;
    }
    public Usuario(){}
    
    
    
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

    public String getUnidad() {
        return unidad;
    }

    public int getNo_empleado() {
        return no_empleado;
    }

    public int getSeccion_sindi() {
        return seccion_sindi;
    }

    public String getCorreo() {
        return correo;
    }

    public String getPass() {
        return pass;
    }

    
    
    
    
}
