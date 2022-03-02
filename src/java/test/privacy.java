/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
@WebServlet(name = "privacy", urlPatterns = {"/privacy"})
public class privacy extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet privacy</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet privacy at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        PrintWriter out=response.getWriter();  
    ConnectionCls obj=new ConnectionCls();
         if(request.getParameter("submit")!=null)
                                                      {
                                         try {
                                             obj.getDetails("SELECT * FROM `login` WHERE log_id='"+request.getParameter("n1")+"' and `password`='"+request.getParameter("n2")+"'");
                                           //  out.print("SELECT * FROM `login` WHERE log_id='"+lo_id+"' and `password`='"+c_p+"'");
                                           //  out.print(request.getParameter("n1"));
                                             while(obj.rs.next())
                                             {
                                                 String query1="UPDATE `login` SET `password`='"+request.getParameter("n3")+"' WHERE `log_id`='"+request.getParameter("n1")+"'";
                                                 obj.InsertUpdate(query1);
                                                // out.print("UPDATE `login` SET `password`='"+request.getParameter("n3")+"' WHERE `log_id`='"+request.getParameter("n1")+"'");
                                                 if(obj.rs.getString("role").matches("user"))
                                                 {
                                                out.println("<script type=\"text/javascript\">");
                                                 out.println("alert('Successfully Updated');");
                                                 out.println("window.location.href ='userhome.jsp';");
                                                 out.println("</script>");
                                                 }
                                                 else if(obj.rs.getString("role").matches("admin"))
                                                 {
                                                      out.println("<script type=\"text/javascript\">");
                                                 out.println("alert('Successfully Updated');");
                                                 out.println("window.location.href ='Adminhome.jsp';");
                                                 out.println("</script>");
                                                     
                                                 }
                                                 else if(obj.rs.getString("role").matches("staff"))
                                                 {
                                                      out.println("<script type=\"text/javascript\">");
                                                 out.println("alert('Successfully Updated');");
                                                 out.println("window.location.href ='staffhome.jsp';");
                                                 out.println("</script>");
                                                     
                                                 }
                                             }}catch (SQLException ex) {
                                             Logger.getLogger(privacy.class.getName()).log(Level.SEVERE, null, ex);
                                         }
    }}

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
