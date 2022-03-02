<%-- 
    Document   : admin_head
    Created on : Mar 13, 2019, 8:58:49 AM
    Author     : user
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="test.ConnectionCls"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="Adminhome.jsp"/>
<a name="active"></a>
    <body>
        <div class="container" >
				<div class="row" >
                                    
                                                    
                                                       <form method="post">  
                                                          
                                                           <br><br>
                                                                <table align="center"  style="margin-top: 15px;color:#14a0da;margin-left: 25%;width:550px" >
                                                                <tr>
                                                            <td colspan="2" align="center">
                                                                
                                                                
                                                                <h3 style="margin-top: 35px;color:#14a0da;margin-left: 30%;width: 250px" >
                                                                   Add Categories
                                                                </h3>
                                                            </td>
                                                        </tr>
                                                           </table>        
                                                           
                                       <br>                    
                                       <br>



<div id="otherType" style="display:none;">
   
     
    <% 
        
        ConnectionCls obj=new ConnectionCls();
        String v=null;
      //  String ui=session.getAttribute("uid").toString();
                                             ResultSet rs;
                                            
%>
    
</div>
    
    <label  style="border-radius: 4px;width: 250%;margin-left:75%;"> <h4>Category Name</h4></label>
    <br><br>
<input type="text" name="n4" required style="border-radius: 4px;width: 30%;height:30px ;margin-left: 75%;" >
<br>

<!--<input type="text" name="n2" required style="border-radius: 4px;width: 50%;margin-left: 130px;">-->

<br>

<br><br>
  <input type="submit" class="btn btn-success" style=" background-color: #14a0da;margin-left:82%;margin-top: -5%;width:10%" name="submit" value="Send">




  








    
                                                        
                                                            <%
                                             
                                             if(request.getParameter("submit")!=null)
                                             {
                                                
                                                    
                                             String qry="INSERT INTO `cat`( `cat`) VALUES ('"+request.getParameter("n4")+"')";
obj.InsertUpdate(qry);
out.println("<script type=\"text/javascript\">");
      out.println("alert('Added Sucessfully');");
     out.println("window.location.href ='Adminhome.jsp';");
     out.println("</script>");
                                                 }

  
            
                                                            %>
                                                              
                                                
                                                         
                                            
                                                    
                                                                                
                                                        
</form>
                                                 
                                                        <br>    <br><br><br><br> <br><br><br><br> <br><br><br><br>      <br><br><br><br> <br><br><br><br> <br><br><br><br>      <br><br><br><br> <br><br><br><br> <br><br><br><br>       
					
                                             </div>
                                        </div>
                                                  
                              
    </body>


