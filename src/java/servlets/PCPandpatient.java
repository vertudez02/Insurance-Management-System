package servlets;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 import java.util.ArrayList;
 import java.sql.DriverManager; 
 import java.sql.ResultSet;
 import java.sql.Statement;
 import java.sql.Connection;
 import java.sql.PreparedStatement;
 import java.sql.*;

/**
 *
 * @author new
 */
@WebServlet(urlPatterns = {"/PCPandpatient"})
public class PCPandpatient extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
                                        try
                                        {
                                        String query="select * from hms_hmo_r_application where pcpid=?";
                                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance","root","");
                                        PreparedStatement psmt=con.prepareStatement(query);
                                        psmt.setString(1, request.getParameter("pcpid"));
                                        ResultSet rs=psmt.executeQuery();
                                        
                                        ArrayList<String> my_array = new ArrayList<String>();
                                        while(rs.next())   
                                           {
                                               
//                                            my_array.add(rs.getString("statename"));
                                               out.print("<option value="+rs.getInt("appid")+"> "+rs.getString("appfname")+"  "+rs.getString("appmname")+" "+rs.getString("applname")+"</option>");
                                            }
                                        
                                               
                                        }
                                        catch(Exception ex)
                                        {
                                         ex.printStackTrace();
                                        }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
