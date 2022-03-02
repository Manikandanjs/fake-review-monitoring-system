<%-- 
    Document   : find_district
    Created on : May 23, 2019, 10:54:01 AM
    Author     : user
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="test.ConnectionCls"%>
<%ConnectionCls c=new ConnectionCls();
        ResultSet rs;
        rs=c.getDetails("SELECT * FROM `subcat` WHERE `cat_id`='"+request.getParameter("q")+"'");
        
%>

      <div class="input-group margin-bottom-20" style="width:420px;" >
          <%-- <span class="input-group-addon">
                                                <i class="fa fa-user"></i>
                                            </span>--%>

<select  class="" style="width:300px"  name="sub"  >

<option>Select Sub Category</option>
<%
    while(rs.next())
    {
    %>
<option value="<%out.print(rs.getString(1));%>"><%out.print(rs.getString(3));%></option>
<%}%>
</select>
</div>
		
    
