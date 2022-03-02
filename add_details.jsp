<%-- 
    Document   : user_view_cart
    Created on : Aug 22, 2019, 10:19:20 AM
    Author     : user
--%>

<%@page import="test.ConnectionCls"%>
<%--<%@page import="test.ConnectionCls"%>
<%@page import="java.io.File"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <%-- <table style="margin-left: 40%;margin-top: 20%">
        <tr>
            <td style="text-align: justify"> Name</td>
            <%--<td style="text-align: justify">Price</td>--%>
            <%-- <td style="text-align: justify"> Details</td>
             <td style="text-align: justify"> Features</td>
       <%
                 ConnectionCls cc=new ConnectionCls();
                  String tx="";String root=request.getServletContext().getRealPath("/");
String path=root.replace("build", "");
   String s1=null,str;
       tx=request.getParameter("i");
    File  f=new File(tx);
s1=path+f.getName();

       
    if(s1!=null){
       
        str=s1;
        
    }
       else{
      String   gt="userp.jpg";
        File f2=new File(gt);
        str=path+f2.getName();
    }       
       //`pdt_id``cart_qty``c_price``c_date``c_status`%>
        <tr> <td >
                    <img class="img-fluid" src="images/<%=tx%>"  style="width: 150px;height: 150px" alt="Image" >
                </td>
         
              <td><%=request.getParameter("n")%></td>
            <td><%=request.getParameter("d")%></td>
            <td><%=request.getParameter("f")%></td>
            
            
             
              <%--<td><%=c.rs.getString("c_price")%></td>--%>
           
                
               
            
            
               
               
               
            
          
            
              <%--   </table>--%>
                    
      <jsp:include page="userhome.jsp"/>
      <div class="modal fade" id="myModal_btn" tabindex="-1" role="dialog" aria-labelledby="myModal_btn" aria-hidden="true">
        <div class="agilemodal-dialog modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
      <table align='center' style="margin-left: 25%; margin-top: 5%" cellpadding='10px'>
            <tr>
            <input type="hidden" name="id" value="<%=request.getParameter("id")%>"/>
          
            <td> <label  style="border-radius: 4px;margin-left: 200px;"><h4>Price </h4></label></td>
            <td> <input type="number" name="pr" id="pr" value="<%out.print(request.getParameter("pr"));%>" required=""/></td>
            </tr> 
            <tr>
                <td><label style="border-radius: 4px;margin-left: 200px;">Quanity</label></td>
                <td><input type="number" name="qt" id="t1" onchange="myChangeFunction()"/></td>
            </tr>
            <tr>
                <td><label style="border-radius: 4px;margin-left: 200px;">Size</label></td>
                <td><select name="size">
                <option>XS</option>
                 <option>S</option>
                  <option>M</option>
                   <option>L</option>
                    <option>XL</option>
                     <option>XXL</option>
                    </select></td>
            </tr>
            <tr>
                <td><label  style="border-radius: 4px;margin-left: 200px;"> <h4>Total Amount</h3></label> </td> 
                <td><input type="number"   name="amount" id="am" required=""/></td>
            </tr>
            <tr align='center'>
                <td style="border-radius: 4px;margin-left: 200px;" colspan="2"><input type="submit" value="submit" name="submit"/></td>
            </tr>
          
            
       </table>
                </div>
            </div>
        </div>
      </div>
            
              <%
              ConnectionCls cc=new ConnectionCls();
            if(request.getParameter("submit")!=null)
            { cc.InsertUpdate("INSERT INTO `cart`(`user_id`, `pdt_id`, `cart_qty`, `c_price`, `c_date`, `c_status`,`c_size`) VALUES ('"+session.getAttribute("uid") +"','"+request.getParameter("id") +"','"+request.getParameter("qt")+"','"+request.getParameter("amount")+"',curdate(),'null','"+request.getParameter("size")+"')");
       
        //out.println("<script>alert('sucessfuly added. ');location.href='view_pdt.jsp';</script>");
           // cc.InsertUpdate("UPDATE `cart` SET `cart_qty`='"+request.getParameter("qt")+"',`c_status`='Added',`c_size`='"+request.getParameter("size")+"',`c_price`='"+request.getParameter("amount")+"' WHERE `cart_id`='"+request.getParameter("id")+"'");
       //  response.sendRedirect("pay.jsp?id="+request.getParameter("id"));
            }
            %>
    </body>
    <script type="text/javascript">
function myChangeFunction() {
   
 //var el1 = document.getElementById("ti").value;
//var el2 = document.getElementById("tick");
document.getElementById('am').value=document.getElementById("t1").value*document.getElementById("pr").value;



    }

</script>

</html>
