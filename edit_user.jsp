
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <jsp:include page="userhome.jsp"/>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head
   
    <body>
        <h1 style="margin-top: 5px;color:#14a0da; margin-left: 37%" >
                   Edit Your Profile
                                                                </h1>
        <form method="post" action="edit" >
            <table style="margin-left: 40%; margin-top: 3%" cellpadding="10px">
                <tr><input type="hidden" value="<%=session.getAttribute("id")%>" name="n1"/>
                    <td>
                        <input type="email" name="n2"  placeholder="Your Email" required="">
                    </td>
                </tr>
               
                 <tr>
                   
                    <td>  <input type="text" name="n3" pattern="[0-9]{10}" onkeypress="return isNumberKey(event)" placeholder="Contact No" required=""> </td>
                </tr>
               
                 <tr>
                     <td>
                         <textarea name="n4" rows="7" placeholder="Address" required=""></textarea>
                     </td>
                   
                </tr>
              
                                      
                                                  
                                           
                                        <tr>
                                            <td>
                                                  <input type="submit" name="submit" value="Submit">
                                            </td>
                                        </tr><%
                                                       
                                                      
%>
                                    </table>
                                   
                               
                                </form>
                                
                         
                        </div>	
                  
                                      
<script language=Javascript>

function isNumberKey(evt)

{
  
var charCode = (evt.which) ? evt.which : event.keyCode;

if (charCode == 45||charCode == 47)
{
return true;
}

if (charCode > 31 && (charCode < 48 || charCode > 57))
{
return false;
}
return true;
}

</script>