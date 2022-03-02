<%-- 
    Document   : approve_user
    Created on : Aug 9, 2019, 11:08:29 AM
    Author     : user
--%>

<%@page import="test.ConnectionCls"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
ConnectionCls c=new ConnectionCls();
c.InsertUpdate("UPDATE `reg` SET `u_stat`='Rejected' WHERE `log_id`='"+request.getParameter("id") +"'");
c.InsertUpdate("DELETE FROM `review` WHERE `r_id`='"+request.getParameter("rid") +"'");
//response.sendRedirect("Adminhome.jsp");
out.println("<script>alert('Deleted. ');location.href='Adminhome.jsp';</script>");
%>
