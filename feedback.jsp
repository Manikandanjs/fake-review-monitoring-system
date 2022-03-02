<%-- 
    Document   : admin_head
    Created on : Mar 13, 2019, 8:58:49 AM
    Author     : user
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="test.ConnectionCls"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<a name="active"></a>
    <body>
        <div class="container" >
				<div class="row" >
                                    
                                                    
                                                       <form method="post">  
                                                          
                                                           <br><br>
                                                                <table align="center" >
                                                                <tr>
                                                            <td colspan="2" align="center">
                                                                
                                                                
                                                                <h1 style="margin-top: 130px; margin-left: 300px;color:#14a0da;" >
                                                                   Add Feedback
                                                                </h1>
                                                            </td>
                                                        </tr>
                                                           </table>        
                                                           
                                       <br>



<div id="otherType" style="display:none;" >
   
     
    <% 
        
        ConnectionCls obj=new ConnectionCls();
        String v=null;
      //  String ui=session.getAttribute("sid").toString();
                                             ResultSet rs;
                                            
%>
    
</div>
    <br><br>
    <div align="center">
<label  style="border-radius: 4px;width: 10%;margin-left: 320px;"> <h4>Feedback Title</h4></label>
<input type="text" name="n4" required style="border-radius: 4px;width: 30%;height:30px ;margin-left: 120px;" >
<br>
<br>
<label  style="border-radius: 4px;width: 10%;margin-left: 320px;"> <h4>Message</h4></label>
<input type="text" name="n3" required style="border-radius: 4px;width: 30%;height: 30px;margin-left: 120px;" >
<br>
<!--<input type="text" name="n2" required style="border-radius: 4px;width: 50%;margin-left: 130px;">-->

<br>
    </div>
<br><br>
  <input type="submit" class="btn btn-success" style=" background-color: #14a0da;margin-left:500px;margin-top: -5%" name="submit" value="Send">




  








    
                                                        
           <%
                                             
                                             if(request.getParameter("submit")!=null)
                                             {
                                                
                                                    
                                             String qry="INSERT INTO `complaint`(`c_msg`, `creplay`, `cstatus`,`u_id`,`c_title`,c_role) VALUES ('"+request.getParameter("n3")+"','null','0','0','"+request.getParameter("n4")+"','public')";
obj.InsertUpdate(qry);
//out.print(qry);
out.println("<script type=\"text/javascript\">");
      out.println("alert('Added Sucessfully');");
     out.println("window.location.href ='index.jsp';");
     out.println("</script>");
                                                 }

  
            
                                                            %>
 
                                                
                                                         
                                            
                                                    
                                                                                
                                                        
</form>
                                                 
                                                        <br>    <br><br><br><br> <br><br><br><br> <br><br><br><br>      <br><br><br><br> <br><br><br><br> <br><br><br><br>      <br><br><br><br> <br><br><br><br> <br><br><br><br>       
					
                                             </div>
                                        </div>
                                                  
                              
    </body>


