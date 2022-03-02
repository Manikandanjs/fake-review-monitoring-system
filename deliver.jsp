<%-- 
    Document   : approve_user
    Created on : Aug 9, 2019, 11:08:29 AM
    Author     : user
--%>

<%@page import="test.ConnectionCls"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
ConnectionCls c=new ConnectionCls();
c.InsertUpdate("update cart set c_status='delivered' where cart_id='"+request.getParameter("id") +"'");
 out.println("<script>alert('sucessfuly Approved . ');location.href='Adminhome.jsp';</script>");
//response.sendRedirect("Adminhome.jsp");
%>
