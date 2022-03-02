<%-- 
    Document   : view_user
    Created on : Aug 9, 2019, 10:56:12 AM
    Author     : user
--%>

<%@page import="test.ConnectionCls"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
<!DOCTYPE html>
<html lang="zxx">
<jsp:include page="Adminhome.jsp"/>
<head>
    <title>Fashion Hub Ecommerce Category Bootstrap Responsive Website Template| Blog Single :: w3layouts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="keywords" content="Fashion Hub Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <!-- shop css -->
    <link href="css/shop.css" type="text/css" rel="stylesheet" media="all">
    <!-- shop css -->
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="css/fontawesome-all.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Elsie+Swash+Caps:400,900" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i" rel="stylesheet">
    <!-- //online-fonts -->
</head>

    <body>
      <div style="height: 300px;margin-top: 10%;margin-right: 40%;margin-left: 25%;" border="4">
          <h1 style="text-align: center;color:#14a0da;">Staff Details</h1><br><br>
            <table cellpadding="50px" border='4' style="margin-left: 10%;margin-right: 50%" id="dynamic-table" class="table table-striped table-bordered table-hover">
            <tr style=' '>
                
                <td style="text-align: justify"> Name</td>
                <td style="text-align: justify">Address</td>
               
                <td style="text-align: justify">Dob</td>
                <td style="text-align: justify"> Contact No.</td>
                <td style="text-align: justify"> Email Id</td>
                 <td style="text-align: justify"> Action</td>
             
               
            </tr>
            <%
            ConnectionCls c1= new ConnectionCls();
            c1.getDetails("SELECT * FROM `staff` ");
            while(c1.rs.next())
            {//````````````
            %>
            <tr style="">
              <td><%=c1.rs.getString("name")%></td>
               <td><%=c1.rs.getString("add")%></td>
                <td><%=c1.rs.getString("date")%></td>
                
                <td><%=c1.rs.getString("no")%></td>
                <td><%=c1.rs.getString("email")%></td>
                <td><a href="view_staff_complaint.jsp">Complaint</a></td>
            </tr>
             <%}%> 
        </table>
        </div>
    </body>
</html>
