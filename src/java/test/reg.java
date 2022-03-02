/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author user
 */
public class reg extends HttpServlet {

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
            out.println("<title>Servlet reg</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet reg at " + request.getContextPath() + "</h1>");
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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
      ConnectionCls c= new ConnectionCls();
       String str1,str2;
       String contentType, fileName=null;
       int r;
         try {
              
          String x=null,es=null;
         String t1=null,t2=null,t4=null,t5=null,t6=null,t7=null,t8=null,t9=null,t10=null,t11=null,t12=null,t13=null,s1=null,s2=null,t14=null;
         String typ=null,st=null,em=null,pw1=null,pw2=null,p=null,se=null,e=null,f=null;   
           
           if(!ServletFileUpload.isMultipartContent(request)){
   out.println("Nothing to upload");
   return; 
  }
         //  String name=request.getParameter("n1");
        
  FileItemFactory itemfactory = new DiskFileItemFactory(); 
 ServletFileUpload upload = new ServletFileUpload(itemfactory);
    String root=request.getServletContext().getRealPath("/");
String path=root.replace("build", "");
   List<FileItem>  items = upload.parseRequest(request);
 
   for(FileItem item:items){ 
       if ( !item.isFormField () ){
      fileName = new File(item.getName()).getName();
      f=fileName;
    contentType = item.getContentType();      
     File uploadDir = new File(path+"images/"+fileName);
     if(contentType.equals("image/png")){
   // File file = File.createTempFile(fileName,".png",uploadDir);
    item.write(uploadDir);
    }
    else if(contentType.equals("image/jpg")){
  //  File file = File.createTempFile(fileName,".jpg",uploadDir);
    item.write(uploadDir);
    }
    else if(contentType.equals("image/jpeg")){
   // File file = File.createTempFile(fileName,".jpeg",uploadDir);
    item.write(uploadDir);
    }

    else{
        out.println("This format image file not supported");
    }
   
  //  out.println("File Saved Successfully "+path+"images/"+ fileName);
    String nam=fileName;
    
   //  out.println(nam);
       }
           
            

else{
            out.println("");
           x=item.getFieldName();
            switch(x){
           case "t1": t1=item.getString();
           break;
           case "t2": t2=item.getString();
           break;
           
           case "t4": t4=item.getString();
           break;
           case "t5": t5=item.getString();
           break;
           case "t6": t6=item.getString();
           break;
           case "t7": t7=item.getString();
           break;
           case "t8": t8=item.getString();
           break;
           case "t9": t9=item.getString();
           break;
          
            }
        }
   }
  
       out.println(t1+t2+t4+t5+t6+t7+t8+t9+f);
       c.getDetails("select * from reg where u_em='"+t7+"'");
         
                if(c.rs.next())
                {
                    out.println("<script>alert(' Already have account for this email id ');location.href='index.jsp';</script>");
                }
                else
                {
                    c.InsertUpdate("INSERT INTO `login`(`username`, `password`, `role`) VALUES('"+t7+"','"+t9+"','user')");
                    // out.print("INSERT INTO `login`(`username`, `password`, `role`) VALUES('"+t8+"','"+t9+"','user')");
                    c.getDetails("select * from login where username='"+t7+"' and password='"+t9+"' and role='user'");
                    if(c.rs.next())
                    {
                        
                        c.InsertUpdate("INSERT INTO `reg`(`log_id`, `u_name`, `u_lname`, `u_photo`, `u_dob`, `u_add`, `u_ph`, `u_em`, `u_stat`) VALUES ('"+c.rs.getString("log_id")+"','"+t1+"','"+t2+"','"+f+"','"+t4+"','"+t5+"','"+t6+"','"+t7+"','waiting')");
                        // out.print("INSERT INTO `reg`(`log_id`, `u_name`, `u_lname`, `u_photo`, `u_dob`, `u_add`, `u_ph`, `u_em`, `u_stat`) VALUES ('"+c.rs.getString("log_id")+"','"+t1+"','"+t2+"','"+f+"','"+t4+"','"+t5+"','"+t6+"','"+t7+"','waiting')");
                        out.println("<script>alert('sucessfuly registred .you can login after verification ');location.href='index.jsp';</script>");
                        
                    }
                    
                }   
         }
catch(Exception e1)
    {
    out.println(e1+"");
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
