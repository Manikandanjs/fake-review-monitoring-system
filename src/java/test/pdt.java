/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
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
@WebServlet(name = "pdt", urlPatterns = {"/pdt"})
public class pdt extends HttpServlet {

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
            out.println("<title>Servlet pdt</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet pdt at " + request.getContextPath() + "</h1>");
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
         String t0=null,t1=null,t2=null,t4=null,t5=null,t6=null,t7=null,t3=null,t9=null,t10=null,t11=null,t12=null,t13=null,s1=null,s2=null,t14=null;
         String typ=null,st=null,em=null,pw1=null,pw2=null,p=null,se=null,e=null,f=null,p0=null;   
           
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
                
           case "p1": t1=item.getString();
           break;
           case "p77": t7=item.getString();
           break;
           case "p2": t2=item.getString();
           break;
            case "p3": t3=item.getString();
           break;
            case "p5": t4=item.getString();
           break;
           case "cat": t5=item.getString();
           break;
           case "sub": t6=item.getString();
           break;
          case "p7": t0=item.getString();
           break;
          
            }
        }
   }
                                                          c.InsertUpdate("INSERT INTO `product`( `pname`, `pdeta`, `pfea`, `cat_id`, `sub_id`, `image`, `pstatus`,`p_price`,`s_id`) VALUES ('"+t1+"','"+t2+"','"+t3+"','"+t5+"','"+t6+"','"+f+"','1','"+t4+"','"+t7+"')");
                                                     //  out.print("INSERT INTO `product`( `pname`, `pdeta`, `pfea`, `cat_id`, `sub_id`, `image`, `pstatus`,`p_price`,`s_id`) VALUES ('"+t1+"','"+t2+"','"+t3+"','"+t5+"','"+t6+"','"+f+"','1','"+t4+"','"+t7+"')");
                                                          out.println("<script>alert('sucessfuly added ');location.href='staffhome.jsp';</script>");
         } catch(Exception e)
    {
    out.println(e+"");
    }  // INSERT INTO `product`( `pname`, `pdeta`, `pfea`, `cat_id`, `sub_id`, `image`, `pstatus`) VALUES ([value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8])
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
