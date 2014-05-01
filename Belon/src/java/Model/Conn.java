/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Model;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author saidpelaez
 */
public class Conn extends HttpServlet {

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
    public Connection con;                     //
   public Statement set;
   public ResultSet rs;
    String URL;  //se traza la ruta de conexion
    String userName;                               //se determina el usuario de conecion de mysql
    String password;
    public Conn(){
         URL = "jdbc:mysql://localhost:3306/Belon";  //se traza la ruta de conexion
         userName = "root";                               //se determina el usuario de conecion de mysql
         password = "";                      //el password si es que cuenta con uno
    }
    public void conectar(){
         try {
        Class.forName("com.mysql.jdbc.Driver");                 
        URL = "jdbc:mysql://localhost:3306/Belon";
        
        con = DriverManager.getConnection(URL,userName,password);
        set = con.createStatement();

        System.out.println("Se ha conectado a '" +URL+"' proceda con su chamba.");
        
        
        } catch (Exception e) {
        System.out.println("No se ha conectado "+e);
        }
    }
    public void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
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
        processRequest(request, response);
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
        processRequest(request, response);
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
