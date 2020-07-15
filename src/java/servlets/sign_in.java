package servlets;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Statement;
import java.sql.ResultSet;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ryansky
 */
@WebServlet(urlPatterns = {"/sign_in"})
public class sign_in extends HttpServlet {

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
              HttpSession session = request.getSession();
              try
              {
               
               
              String username = null;
              String password = null;
              String roledescriptions = null;
              String userid = null;
              String name = null;
              String email = null;
              
              String get_username= request.getParameter("username_txt");
              String get_password= request.getParameter("password_txt");
               Statement query =connection_db.Get_Connect().createStatement();
               ResultSet result = query.executeQuery("select * from hms_hmo_t_user as u INNER JOIN hms_hmo_r_role as r on r.roleid=u.roleid where username='"+get_username+"' and password='"+get_password+"'");
               
               while(result.next())
               {
                    userid = result.getString("userid");
                    username = result.getString("username");
                    password = result.getString("password");
                    roledescriptions = result.getString("roledescriptions");
                    email = result.getString("email");
                    name = result.getString("Firstname")+" "+result.getString("Middlename")+" "+result.getString("Lastname") ;
               }

               if(get_username.equals(username) && get_password.equals(password)){
                       out.print("1");
                       session.setAttribute("userid",userid);
                       session.setAttribute("username",username);
                       session.setAttribute("roledescriptions",roledescriptions);
                       session.setAttribute("name",name);
                       session.setAttribute("email",email);
                       
                   }else{
                       out.print("0");                       
                   }    
               }
                catch(Exception e)
                {
                         out.print(e.getMessage());
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
