package CTRL;

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
       
       if("diego.210@hotmail.es".equals(user) && "FirstDance".equals(pw)){
            HttpSession sesion = req.getSession(true);
             sesion.setAttribute("Nombre","Diego Said");
             sesion.setAttribute("Ap","Pelaez");
             sesion.setAttribute("Am","Tellitud");
             sesion.setAttribute("Mail",user);
             sesion.setAttribute("TU","1");
             sesion.setAttribute("DATA","4IV7");
             res.sendRedirect("Profile.jsp");
       }else{
           if("hola@mundo.java".equals(user) && "C++B".equals(pw)){
            HttpSession sesion = req.getSession(true);
             sesion.setAttribute("Nombre","Mario Ivan");
             sesion.setAttribute("Ap","Garcia");
             sesion.setAttribute("Am","Flores");
             sesion.setAttribute("Mail",user);
             sesion.setAttribute("TU","2");
             sesion.setAttribute("DATA","Dibujo Técnico");
             res.sendRedirect("Profile.jsp");
       }else{
           res.sendRedirect("inicio.jsp?Er=true");
       }
       }
  }
  
  // Devuelve una descripción breve.
  public String getServletInfo()
  {
    return "Servlet SeguimientoSesion";
  }
   
}