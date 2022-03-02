<%-- 
    Document   : add_staff
    Created on : Aug 20, 2019, 3:08:51 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head><jsp:include page="Adminhome.jsp"/>
<a name="active"></a>
    <body>
        <a style="background-color:#5bc0de !important;border:none; color:#fff; margin-top: 5%;margin-left: 70%" class="btn btn-flat btn-lg pull-right" href="admin_view_staff.jsp">List Staff</a><br>
        <h3 style="margin-left:40%; margin-top:3%; color:#14a0da;">Add Staff Details</h3>
        <form  method="post"  action="staff" style="margin-left: 30%;margin-top:2%" >
            
					 <div class="col-sm-12"><div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1" style="margin-left: -13px">Staff Name</label>
										
										
											<input type="text" name="n1"  onBlur="checkchr(this)"  id="name" placeholder="Name" class="col-xs-10 col-sm-7 form-control" required/>
                                                                     </div></div><br>
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Address</label>
                                     <div class="col-sm-12">
                                         
                                         
											<textarea type="text" name="n2"  id="addr" placeholder="Enter Address" rows="4" class="col-xs-10 col-sm-7 form-control" required></textarea>
										</div>
                                                                        </div><br>
                                                                        
                                                                  
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Date of Birth</label>
                                     <div class="col-sm-12">
											<input type="date" name="n3"  id="dob"  class="col-xs-10 col-sm-7 form-control" requird=""/>
										</div>
									</div>
                                                                       
                                                                        <br>
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Email_Id</label>
                                     <div class="col-sm-12">
											<input type="email" name="n4"  id="email" placeholder="Enter Email Address" class="col-xs-10 col-sm-7 form-control" required/>
										</div>
									</div>
                                                                         <br>
                                                                      
                                                                        
									
									
									
		                           
									
									
									
                                    	<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Phone Number</label>
                                        <div class="col-sm-12">
											<input type="text" name="n5" onBlur="checkph(this)"  id="phone" placeholder="Enter Phone Number " class="col-xs-10 col-sm-7 form-control" required/>
										</div>
									</div><br>
									
								<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Username</label>
                                        <div class="col-sm-12">
											<input type="text" name="n6" id="form-field-1" placeholder="Enter Username" class="col-xs-10 col-sm-7 form-control" required/>
										</div>
									</div><br>
									
                                    	<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Password</label>
                                        <div class="col-sm-12">
											<input type="password" name="n7" id="form-field-1" placeholder="Enter Password" class="col-xs-10 col-sm-7 form-control" required/>
										</div>
									</div><br><br>
									
									
									
									
									<div style="margin-left: 25%" >
                                    <input type="submit" class="btn btn-info" name="submit" value="Submit" >
                                                                        </div>
&nbsp; &nbsp; &nbsp;</form> 
			</div>
</div></div>
	
			<script>
			function checkchr(a)
{
	var x=a.value;
	var letters=/^[A-Za-z ]+$/;
	if(!x.match(letters))
	{
		alert("please input alphabets");
		a.value=" ";
		a.focus();
	}
	
}
function checkph(a)
{
	var x=a.value;
	if(isNaN(x))
	{
		a.value=" ";
		a.focus();
	}
	else if(x.length>=10 && x.length<=11)
	{
	}
	else
		alert("enter 10 or 11 digits");
		
		
}
function num(a)
{
	var x=a.value;
	var letters=/^[0-9 ]+$/;
	if(!x.match(letters))
	{
		alert("please input numbers");
		a.value=" ";
		a.focus();
	}
	
}
</script>


    </body>
</html>
