package Clases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Diploma {
    private String titulo;
    private String nombre;
    
    public Diploma(){
    }
    
    public Diploma(String titulo, String nombre) {
        this.titulo = titulo;
        this.nombre = nombre;
    }
    
    public ArrayList<Diploma> mostrarDiplomas(){
        ArrayList<Diploma> dips = new ArrayList<Diploma>();
        Connection c = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Diploma dipper = null;
        try {
            c = new Conexion().getConexion();
            String sql = "select tit_dip, nom_dip from diplomas;";
            ps = c.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                dipper = new Diploma(rs.getString("tit_dip"), rs.getString("nom_dip"));
                dips.add(dipper);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            dipper = null;
        }
        finally{
            try {
                rs.close();
                ps.close();
                c.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return dips;
    }


    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
}
