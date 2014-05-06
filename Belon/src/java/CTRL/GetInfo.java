/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package CTRL;

import Model.Conn;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author saidpelaez
 */
public class GetInfo extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   public GetInfo(){
       
   }
   public String GetG(String b){
         Conn conn = new Conn();
         conn.conectar();
         Conn conn2 = new Conn();
         conn2.conectar();
         String a="Couldn't get Group";
        try{
        conn.set = conn.con.createStatement();
        conn.rs = conn.set.executeQuery("SELECT * FROM Grupos WHERE Usuario='"+b+"';");
        if(conn.rs.next()){ 
        conn2.set = conn.con.createStatement();
        conn2.rs = conn.set.executeQuery("SELECT * FROM GruposList WHERE id='"+conn.rs.getString("Gr_Name")+"';");
        while(conn2.rs.next()){
            
            a=conn2.rs.getString("Nombre");
        }
        }
        }catch(Exception e){
            System.out.print("Error en GetG "+e);
        }
       
       return a;
    }
   public String GetB(String b){
         Conn conn = new Conn();
         conn.conectar();
         String a="Couldn't get Bole";
        try{
        conn.set = conn.con.createStatement();
        conn.rs = conn.set.executeQuery("SELECT Boleta FROM alumno WHERE fk_Mail='"+b+"';");
        while(conn.rs.next()){
            a=conn.rs.getString("Boleta");
        }
        }catch(Exception e){
            System.out.print("Error en GetB "+e);
        }
       
       return a;
    }
    public String GetCookies(String b){
         Conn conn = new Conn();
         conn.conectar();
         String a="";
         int i=1;
        try{
        conn.set = conn.con.createStatement();
        conn.rs = conn.set.executeQuery("SELECT * FROM galletitas WHERE Who='"+b+"';");
        while(conn.rs.next()){
            a=a+"<img class=\"achievement\" src=\"Resources/Img/achievement.png\" draggable=\"false\" onmouseover=\"holis(this)\" onmouseout=\"holis(this)\" class=\"btn btn-default\" data-container=\"body\" data-toggle=\"popover\" data-placement=\"top\" data-content=\""+conn.rs.getString("Descrip")+"\" />";
        }
        }catch(Exception e){
            System.out.print("Error en GetB "+e);
        }
       
       return a;
    }
   public String GetNE(String b){
         Conn conn = new Conn();
         conn.conectar();
         String a="Couldn't get NE";
        try{
        conn.set = conn.con.createStatement();
        conn.rs = conn.set.executeQuery("SELECT * FROM profesor WHERE fk_Mail='"+b+"';");
        while(conn.rs.next()){
            a=conn.rs.getString("NumEmpleado");
        }
        }catch(Exception e){
            System.out.print("Error en GetNE "+e);
        }
       
       return a;
    }
   
   public String GetMat(String b){
         Conn conn = new Conn();
         conn.conectar();
         String a="Couldn't get As";
        try{
        conn.set = conn.con.createStatement();
        conn.rs = conn.set.executeQuery("SELECT * FROM profesor WHERE fk_Mail='"+b+"';");
        while(conn.rs.next()){
            a=conn.rs.getString("Materia");
        }
        }catch(Exception e){
            System.out.print("Error en GetMat "+e);
        }
       
       return a;
    }
   
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
