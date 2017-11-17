/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//Wola//
package Clases;

import java.util.ArrayList;
import java.util.Properties;
import javax.mail.Address;

import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class Correo {

    private String usuarioCorreo;
    private String pass;
    private String destino;
    private String asunto;
    private String mensaje;
    
    public Correo(String usuarioCorreo, String pass, String destino, String asunto, String mensaje) {
        this.usuarioCorreo = usuarioCorreo;
        this.pass = pass;
        this.destino = destino;
        this.asunto = asunto;
        this.mensaje = mensaje;
    }

    public Correo(){

    }
    
     public boolean enviarCorreo(InternetAddress[] destinos, String asunto, String mensa){
        Correo c = new Correo("seccionramamedica13@gmail.com", "ofndruxcsitmwxrf", destino, asunto, mensa);
        try{
            Properties p = new Properties();
            p.put("mail.smtp.host", "smtp.gmail.com");
            p.setProperty("mail.smtp.starttls.enable", "true");
            p.setProperty("mail.smtp.port", "587");
            p.setProperty("mail.smtp.user", c.getUsuarioCorreo());
            p.setProperty("mail.smtp.auth", "true");

            Session s =Session.getDefaultInstance(p, null);

            BodyPart texto = new MimeBodyPart();
            texto.setText(c.getMensaje());
            MimeMultipart m = new MimeMultipart();
            m.addBodyPart(texto);


            MimeMessage mensaje = new MimeMessage(s);
            mensaje.setFrom(new InternetAddress(c.getUsuarioCorreo()));
            mensaje.addRecipients(Message.RecipientType.TO, destinos);
            //mensaje.addRecipient(Message.RecipientType.TO, new InternetAddress(c.getDestino()));
            mensaje.setSubject(c.getAsunto());
            mensaje.setContent(m);

            Transport t = s.getTransport("smtp");
            t.connect(c.getUsuarioCorreo(), c.getPass());
            t.sendMessage(mensaje, mensaje.getAllRecipients());
            t.close();
            return true;


       }catch(Exception e){
        e.printStackTrace();
        return false;
       }
      }
     
     public boolean enviarUnCorreo(String destino, String asunto, String mensa){
        Correo c = new Correo("seccionramamedica13@gmail.com", "ofndruxcsitmwxrf", destino, asunto, mensa);
        try{
            Properties p = new Properties();
            p.put("mail.smtp.host", "smtp.gmail.com");
            p.setProperty("mail.smtp.starttls.enable", "true");
            p.setProperty("mail.smtp.port", "587");
            p.setProperty("mail.smtp.user", c.getUsuarioCorreo());
            p.setProperty("mail.smtp.auth", "true");

            Session s =Session.getDefaultInstance(p, null);

            BodyPart texto = new MimeBodyPart();
            texto.setText(c.getMensaje());
            MimeMultipart m = new MimeMultipart();
            m.addBodyPart(texto);


            MimeMessage mensaje = new MimeMessage(s);
            mensaje.setFrom(new InternetAddress(c.getUsuarioCorreo()));
            //mensaje.addRecipients(Message.RecipientType.TO, destinos);
            mensaje.addRecipient(Message.RecipientType.TO, new InternetAddress(c.getDestino()));
            mensaje.setSubject(c.getAsunto());
            mensaje.setContent(m);

            Transport t = s.getTransport("smtp");
            t.connect(c.getUsuarioCorreo(), c.getPass());
            t.sendMessage(mensaje, mensaje.getAllRecipients());
            t.close();
            return true;


       }catch(Exception e){
        e.printStackTrace();
        return false;
       }
      }

    public String getUsuarioCorreo() {
        return usuarioCorreo;
    }

    public void setUsuarioCorreo(String usuarioCorreo) {
        this.usuarioCorreo = usuarioCorreo;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getDestino() {
        return destino;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public String getAsunto() {
        return asunto;
    }

    public void setAsunto(String asunto) {
        this.asunto = asunto;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
     
    
}
