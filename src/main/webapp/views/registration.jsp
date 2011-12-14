<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<html>
<head>
	<title>BLACKMINE REGISTRATION FORM!...</title>
    <style type="text/css">
/* <![CDATA[ */
html,body{
	margin-top:0px;
	top:0px;
	margin-bottom:0px;
	margin-left:0px;
	margin-right:0px;
	background-color:#000;
	}
.reg{
  -moz-border-radius: 10px;
    -webkit-border-radius: 10px;
    border-radius: 10px;
    border: 1px solid;
	background-color:#666666;
	width:100%;height:40%;
	color:#FFFFFF;
	font-family:Arial, Helvetica, sans-serif;
	
}

.row{
  -moz-border-radius: 10px;
    -webkit-border-radius: 10px;
    border-radius: 10px;
    border: 1px solid;
	color:#006699;
	
}
/* ]]> */
</style>
</head>
<body>
<jsp:include page="header.html"></jsp:include>
	<h1 style="color:#009900">Registration Form</h1>
<form:form action="registration.do"  commandName="projectBean" method="POST">
	
<div  align="center" class="reg"  style="margin-top:2%;">

    <div style="width:100%;height:100%;">
           <div style="width:100%;height:30px;float:left;background-color:#FFFFFF" class="row">
              <div style="width:20%;float:left">Project Name</div>
              <div style="width:40%;float:left"><form:input path="projectname" /></div>
              <div style="width:40%;float:left"><form:errors	path="projectname" /></div>           
          </div>
          <div style="width:100%;height:30px;float:left;background-color:#FFFFFF" class="row">
              <div style="width:20%;float:left">Number of Members</div>
              <div style="width:40%;float:left"><form:input path="no_of_members" /></div>
              <div style="width:40%;float:left"><form:errors	path="no_of_members" /></div>           
          </div>
          <div style="width:100%;height:30px;float:left;background-color:#FFFFFF" class="row">
              <div style="width:20%;float:left">Start Date</div>
              <div style="width:40%;float:left">Project Name</div>
              <div style="width:40%;float:left">Project Name</div>           
          </div>
           <div style="width:100%;height:30px;float:left;background-color:#FFFFFF" class="row">
              <div style="width:20%;float:left">End Date</div>
              <div style="width:40%;float:left">Project Name</div>
              <div style="width:40%;float:left">Project Name</div>           
          </div>
           <div style="width:100%;height:30px;float:left;background-color:#FFFFFF" class="row">
              <div style="width:20%;float:left">Email</div>
              <div style="width:40%;float:left"><form:input path="leader_email" /></div>
              <div style="width:40%;float:left"><form:errors	path="leader_email" /></div>           
          </div>
          
          <div style="width:100%;height:30px;float:left;background-color:#FFFFFF" class="row">
              <div style="width:20%;float:left">Enter Code</div>
              <div style="width:40%;float:left"><form:input path="capchaCode" /></div>
              <div style="width:40%;float:left"><form:errors	path="capchaCode" /></div>           
          </div>
              
             
        </div>


</div>
<input type="submit" value="Register"  />
		</p>
	</div>
</form:form>
</div>
<div style="clear:both"></div>
<jsp:include page="footer2.html"></jsp:include>
</body>
</html>
