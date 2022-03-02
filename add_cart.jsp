<%-- 
    Document   : add_cart
    Created on : Aug 22, 2019, 9:41:55 AM
    Author     : user
--%>

<%@page import="test.ConnectionCls"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       ConnectionCls c=new ConnectionCls();
       c.InsertUpdate("INSERT INTO `cart`(`user_id`, `pdt_id`, `cart_qty`, `c_price`, `c_date`, `c_status`,`c_size`) VALUES ('"+session.getAttribute("uid") +"','"+request.getParameter("id") +"','null','null',curdate(),'null','null')");
       
        out.println("<script>alert('sucessfuly added. ');location.href='view_pdt.jsp';</script>");
       %>
    </body>
</html>
