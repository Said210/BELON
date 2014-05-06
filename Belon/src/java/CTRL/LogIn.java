package CTRL;

import Model.Conn;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;

public class LogIn extends HttpServlet
{
   
   
  @Override
  protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException{
       String user=req.getParameter("User");
       String pw=req.getParameter("Pass");
       
       Conn conn = new Conn();
       conn.conectar();
       
      GetInfo inf = new GetInfo();
      HttpSession sesion = req.getSession(true);
       String Nom;
          String Pa = null;
          String Ma = null;
          String TU = null;
          String DATA = null;
            PrintWriter out = res.getWriter();
        res.setContentType("text/html");
      try{
          String Chain="SELECT * FROM usuario WHERE Mail='"+user+"' AND Contrasena='"+pw+"';";
         conn.set = conn.con.createStatement();
              conn.rs = conn.set.executeQuery(Chain);
          if(!conn.rs.next()){
               res.sendRedirect("inicio.jsp?Er=true");
          }else{
                  Nom=conn.rs.getString("Nombre");
                   System.out.print(Nom);
                  Pa=conn.rs.getString("APat");
                  System.out.print(Pa);
                  Ma=conn.rs.getString("AMat");
                  System.out.print(Ma);
                  TU=conn.rs.getString("Level");
                  System.out.print(TU);
                  
                  if("1".equals(TU)){
                    DATA=inf.GetB(user);
                        }else{
                    DATA=inf.GetNE(user);
                    }
                  
           
              
              sesion.setAttribute("Nombre",Nom);
              System.out.print(Nom);
             sesion.setAttribute("Ap",Pa);
               System.out.print(Pa);
             sesion.setAttribute("Am",Ma);
               System.out.print(Ma);
             sesion.setAttribute("Mail",user);
                System.out.print(user);
             sesion.setAttribute("TU",TU);
               System.out.print(TU);
             sesion.setAttribute("DATA",DATA);
                System.out.print(DATA);
            
              
             res.sendRedirect("Profile.jsp");
          }
      }catch(SQLException | IOException E){
          System.out.print("Error en Log "+E);
      }
       
       
  }
  
  // Devuelve una descripción breve.
  public String getServletInfo()
  {
    return "Servlet SeguimientoSesion";
  }
   
}