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
@WebServlet(name = "staff", urlPatterns = {"/staff"})
public class staff extends HttpServlet {

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
            out.println("<title>Servlet staff</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet staff at " + request.getContextPath() + "</h1>");
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
        PrintWriter out= response.getWriter();
      ConnectionCls c= new ConnectionCls();
     
  
      if(request.getParameter("submit")!=null)
      { 
            try {
                c.InsertUpdate("INSERT INTO `login`(`username`, `password`, `role`) VALUES('"+request.getParameter("n6")+"','"+request.getParameter("n7")+"','staff')");
                // out.print("INSERT INTO `login`(`username`, `password`, `role`) VALUES('"+t8+"','"+t9+"','user')");
                c.getDetails("select * from login where username='"+request.getParameter("n6")+"' and password='"+request.getParameter("n7")+"' and role='staff'");
                if(c.rs.next())
                {
                    
                    c.InsertUpdate("INSERT INTO `staff`(`name`, `add`, `date`, `email`, `no`, `log_id`) VALUES ('"+request.getParameter("n1")+"','"+request.getParameter("n2")+"','"+request.getParameter("n3")+"','"+request.getParameter("n4")+"','"+request.getParameter("n5")+"','"+c.rs.getString(1)+"')");
//out.print("UPDATE `reg` SET `u_add`='"+request.getParameter("n4")+"',`u_ph`="+request.getParameter("n3")+"',`u_em`='"+request.getParameter("n2")+"' WHERE `log_id`="+request.getParameter("n1")+"'");
                    out.println("<script>alert('sucessfuly added.');location.href='Adminhome.jsp';</script>");
                }     } catch (SQLException ex) {
                Logger.getLogger(staff.class.getName()).log(Level.SEVERE, null, ex);
            }
      }
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
