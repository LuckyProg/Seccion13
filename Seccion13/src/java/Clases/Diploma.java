package Clases;

import com.itextpdf.text.BadElementException;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Font.FontFamily;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

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
            String sql = "select tit_dip, nom_dip from diplomas order by nom_dip;";
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
    
    public byte[] obtenerDiploma(String tit, String nom) throws DocumentException, BadElementException, IOException {
        Document dip = new Document(PageSize.LETTER.rotate());
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ByteArrayOutputStream baos2 = new ByteArrayOutputStream();
        PdfWriter writer = PdfWriter.getInstance(dip, baos);
        dip.open();
        System.out.println(tit+nom);
        Paragraph p = new Paragraph("A: "+tit+" "+nom, new Font(FontFamily.HELVETICA, 18));
        p.setAlignment(Element.ALIGN_CENTER);
        p.setMultipliedLeading(15);
        dip.add(p);
        PdfContentByte canvas = writer.getDirectContentUnder();
        Image virgencita = Image.getInstance(new Imagen().ob2());
        virgencita.scaleAbsolute(792,612);
        virgencita.setAbsolutePosition(0, -5);
        canvas.addImage(virgencita);
        dip.close();
        return baos.toByteArray();
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
