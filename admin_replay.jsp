<%-- 
    Document   : admin_replay
    Created on : Mar 22, 2019, 4:50:35 PM
    Author     : user
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="test.ConnectionCls"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="Adminhome.jsp"/>
    <body>
        <div>
            <br><br><br><br><br><br>
        </div>
          <form method="post"> 
              <center>  <table>
            <tr>
                <td>
                    <h3> Replay &nbsp; &nbsp; &nbsp; &nbsp; </h3>
                </td>
               
           
                <td>
                    <textarea name="n3" style="width:300px; height:200px"required=""></textarea>
                    
                </td>
            <tr>
                <td>
                    <br>
                </td>
                 <td>
                    <br>
                </td>
            </tr>
                 </tr>
                      <tr colspan="2">
                          <td style="width: 90px" colspan="2">
                      <center>  <input type="submit" name="bb" value="Send"/></center>
                </td>
            </tr>
        </table>
              </center>

<br><br>

        
        <%
        
      ConnectionCls obj=new ConnectionCls();
      if(request.getParameter("bb")!=null)
      {
        String qry="UPDATE `complaint` SET `creplay`='"+request.getParameter("n3")+"',`cstatus`='1' WHERE `cid`='"+request.getParameter("id_u")+"'";
        
        obj.InsertUpdate(qry);
        response.sendRedirect("Adminhome.jsp");
      }
        //
        
        %>
    
          </form></body>
    <div>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    </div>
   
</html>
