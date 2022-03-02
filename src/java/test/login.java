/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author user
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

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
            out.println("<title>Servlet login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath() + "</h1>");
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
        ConnectionCls c=new ConnectionCls();
        HttpSession s=request.getSession();
        PrintWriter out=response.getWriter();
        try { 
             c.getDetails("select * from login where username='"+request.getParameter("t1")+"' and password='"+request.getParameter("t2")+"'");
       //out.println("<script>alert('text');</script>");
      // out.println("select  from login where username='"+request.getParameter("t1")+"' and password='"+request.getParameter("t2")+"'");
            if(c.rs.next())
            {
                s.setAttribute("id", c.rs.getString("log_id"));
                s.setAttribute("role", c.rs.getString("role"));
                if(c.rs.getString("role").equals("admin"))
                {
                    response.sendRedirect("Adminhome.jsp");
                }/*else if((c.rs.getString("role").equals("company"))||c.rs.getString("role").equals("architect"))
                {if(c.rs.getString("role").equals("company"))
                {
                c.getDetails("select * from company where username='"+request.getParameter("t1")+"' and Status='approved'");
                if(c.rs.next())
                {
                    s.setAttribute("id", c.rs.getString(1));
                response.sendRedirect("contractorhome.jsp");
                }else{
                out.println("<script>alert('your request on processing ..');location.href='index.jsp';</script>"); 
                }
                }else{
                    c.getDetails("select * from architect where username='"+request.getParameter("t1")+"'");
                if(c.rs.next())
                {
                    s.setAttribute("id", c.rs.getString(1));
                response.sendRedirect("contractorhome.jsp");
                }
                response.sendRedirect("contractorhome.jsp");
                }
                }*/
                else if(c.rs.getString("role").equals("staff"))
                {
                     c.getDetails("select * from staff where log_id='"+c.rs.getString("log_id")+"' ");
                if(c.rs.next())
                {   s.setAttribute("sid", c.rs.getString("sid"));
                 s.setAttribute("id", c.rs.getString("log_id"));
                response.sendRedirect("staffhome.jsp");
                }else
                {
                out.println("<script>alert('invalid');</script>");
                }
                }else if(c.rs.getString("role").equals("user"))
                {
                     c.getDetails("select * from reg where log_id='"+c.rs.getString("log_id")+"' ");
                if(c.rs.next())
                {  
                    if(c.rs.getString("u_stat").matches("Approved"))
                            {
                                s.setAttribute("uid", c.rs.getString(1));
                s.setAttribute("id", c.rs.getString("log_id"));
                response.sendRedirect("userhome.jsp");
                }else if(c.rs.getString("u_stat").matches("Rejected"))
                {
                out.println("<script>alert('Your Account is Blocked');</script>");
                }
                else
                {
                     out.println("<script>alert('invalid');</script>");
                }
                }
                }
                else{
                
                out.print("<script>alert('OOPs!!...invalid acess');location.href='index.jsp';</script>");
                }
                
                
            }else
            {
             out.print("<script>alert('OOPs!!...invalid username or password ');location.href='index.jsp';</script>");
               
            
            }
        } catch (Exception ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
       // out.println("<script>alert('"+ex+"');</script>");
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
