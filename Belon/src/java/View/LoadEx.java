/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package View;

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
public class LoadEx extends HttpServlet {

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
      Conn conn = new Conn();
      conn.conectar();
      String Theme=request.getParameter("th");
       PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        out.print("<tr><td>Estado</td><td>Nombre</td><td>Dificultad</td></tr>");
      try{
          String Hazelhoff="SELECT * FROM Ejercicios WHERE Tema="+Theme;
          conn.set=conn.con.createStatement();
          conn.rs=conn.set.executeQuery(Hazelhoff);
          while(conn.rs.next()){
              
         if(("1").equals(conn.rs.getString("Disponible"))){
                  out.print("<tr class=\"bs-callout-ok\" onclick=\"launch('"+conn.rs.getString("Donde")+"')\"><td><span class=\"glyphicon glyphicon-ok\"></span></td><td>"+conn.rs.getString("Nombre")+"</td><td>"+conn.rs.getString("Dificultad")+"</td></tr>");
          }else{
              out.print("<tr class=\"bs-callout-danger\" onclick=\"launch('"+conn.rs.getString("Donde")+"')\"><td><span class=\"glyphicon glyphicon-remove\"></span></td><td>"+conn.rs.getString("Nombre")+"</td><td>"+conn.rs.getString("Dificultad")+"</td></tr>");
          }
        }
      }catch(Exception e){
          System.out.printf("Error en LoadEx "+e);
      }
      
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
      Conn conn = new Conn();
      conn.conectar();
      String Theme=request.getParameter("th");
       PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        out.print("<tr><td>Estado</td><td>Nombre</td><td>Dificultad</td></tr>");
      try{
          String Hazelhoff="SELECT * FROM Ejercicios WHERE Tema="+Theme;
          conn.set=conn.con.createStatement();
          conn.rs=conn.set.executeQuery(Hazelhoff);
          while(conn.rs.next()){
              
          if(("1").equals(conn.rs.getString("Disponible"))){
                  out.print("<tr class=\"bs-callout-ok\" onclick=\"launch('"+conn.rs.getString("Donde")+"')\"><td><span class=\"glyphicon glyphicon-ok\"></span></td><td>"+conn.rs.getString("Nombre")+"</td><td>"+conn.rs.getString("Dificultad")+"</td></tr>");
          }else{
              out.print("<tr class=\"bs-callout-danger\" onclick=\"launch('"+conn.rs.getString("Donde")+"')\"><td><span class=\"glyphicon glyphicon-remove\"></span></td><td>"+conn.rs.getString("Nombre")+"</td><td>"+conn.rs.getString("Dificultad")+"</td></tr>");
          }
        }
      }catch(Exception e){
          System.out.printf("Error en LoadEx "+e);
      }
      
    }
}
