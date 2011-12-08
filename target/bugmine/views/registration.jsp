<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<html>
<head>
	<title>BLACKMINE REGISTRATION FORM!...</title>
    <style type="text/css">
/* <![CDATA[ */

table, td
{
    border-color: #600;
    border-style: solid;
	
}


td
{
    margin: 0;
    padding: 4px;
    border-width: 1px 1px 0 0;
    background-color: #FFC;
}

/* ]]> */
</style>
</head>
<body>
<jsp:include page="header.html"></jsp:include>
<div  style="background-color:#666666;width:100%;height:63%; " align="center">

<form:form action="registration.do"  commandName="registrationForm" method="POSt">



  <table width="50%" style="margin-top:10%"  border="1" cellspacing="0" cellpadding="0">
  <tr>
    <td width="205">Login Id<FONT color="red"><form:errors
				path="userName" /></FONT></td>
    <td width="271" ><form:input path="userName" /></td>
  </tr>
  
  <tr>
    <td>Password<FONT color="red"><form:errors
				path="password" /></FONT></td>
    <td><form:password path="password" /></td>
  </tr>
   <tr>
    <td>Confirm Password<FONT color="red"><form:errors
				path="confirmPassword" /></FONT></td>
    <td><form:password path="confirmPassword" /></td>
  </tr>
  <tr>
    <td width="205">Email Id<FONT color="red"><form:errors
				path="email" /></FONT></td>
    <td width="271" ><form:input path="email" /></td>
  </tr>
  <tr>
    <td colspan="2"><input type ="submit" /></td>
    </tr>
  
  
</table></form:form>
</div>
<div style="clear:both"></div>
<jsp:include page="footer.html"></jsp:include>
</body>
</html>
