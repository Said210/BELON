/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package CTRL;

import Model.Conn;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author saidpelaez
 */
public class RegAlumno extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       Conn conn=new Conn();
       conn.conectar();
        Conn conn2=new Conn();
       conn2.conectar();
      String Nom=request.getParameter("Nom");
      String Pat=request.getParameter("Pat");
      String Mat=request.getParameter("Mat");
      String Sexo=request.getParameter("Sexo");
      String Mail=request.getParameter("User");
      String Pass=request.getParameter("Pass");
      try{
          int boleta=Integer.parseInt(request.getParameter("Boleta"));
          String Un="INSERT INTO usuario(Nombre,APat,AMat,Mail,Contrasena,Sexo) VALUES ('"+Nom+"','"+Pat+"','"+Mat+"','"+Mail+"','"+Pass+"','"+Sexo+"')";
          conn.set = conn.con.createStatement();
          conn.set.executeUpdate(Un);
          String Deux="INSERT INTO alumno(Boleta,fk_Mail) VALUES("+boleta+",'"+Mail+"')";
           conn2.set = conn2.con.createStatement();
           
          conn2.set.executeUpdate(Deux);
          
      }catch(NumberFormatException | SQLException E){
          System.out.print("Error en RegA "+E);
      }
      PrintWriter out = response.getWriter();
        response.sendRedirect("inicio.jsp");
    }
}
