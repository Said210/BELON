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
public class LoadThemes extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        Conn conn = new Conn();
        conn.conectar();
         PrintWriter out = res.getWriter();
        res.setContentType("text/html");
        int Selecter=Integer.parseInt(req.getParameter("th"));
        String ToDo="SELECT * FROM Tema WHERE fk_UA="+Selecter+" LIMIT 1;";
        try{
             conn.set = conn.con.createStatement();
              conn.rs = conn.set.executeQuery(ToDo);
            while(conn.rs.next()){
                out.print("<h3 class=\"H3\" style=\"font-family: RobotoL\">"+conn.rs.getString("Nombre")+"</h3>");
                out.print("<script>"
                        + "$('#EXHold').load(\"LoadEx?th="+Selecter+"\");"
                        + "</script>");
            }
        }catch(Exception E){
           System.out.print("Error en LoadThemes "+E);
           out.print(E);
        }
    }
}
