/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package View;

import Model.Conn;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author saidpelaez
 */
public class LoadUA extends HttpServlet {


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
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        PrintWriter out = res.getWriter();
        res.setContentType("text/html");
        Conn con= new Conn();
        con.conectar();
        try{
        con.set = con.con.createStatement();
        con.rs = con.set.executeQuery("SELECT * FROM `Unidad De Aprendizaje` ");
        while(con.rs.next()){
            out.print("<tr><td><span class=\"glyphicon glyphicon-briefcase\"></span></td><td><span>"+con.rs.getString("Nombre")+"</span></td></tr>");
        }
        }catch(Exception e){
            
        }
       
    }

    
}
