<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<html>
<head>
	<title>BUGMINE  LOGIN!...</title>
    <LINK REL="SHORTCUT ICON"  href="http://localhost:8080/bugmine/images/favicon.ico">
    <link rel="stylesheet" href="css/ani.css" >
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
<link rel="stylesheet"  href="css/login.css" >
</head>
<body>

<jsp:include page="header.html"></jsp:include>
<div  style="background-color:#666666;width:100%;height:63%;float:left " align="left">
<div style="width:70%;height:100%;float:left"><img src="images/welcome.jpg"  width="100%" height="100%"></div>
<div style="width:30%;height:100%;float:left; background-color: #fff;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#fff), to(#eee));
    background-image: -webkit-linear-gradient(top, #fff, #eee);
    background-image: -moz-linear-gradient(top, #fff, #eee);
    background-image: -ms-linear-gradient(top, #fff, #eee);
    background-image: -o-linear-gradient(top, #fff, #eee);
    background-image: linear-gradient(top, #fff, #eee);  
  ">
    <form:form action="login.do" id="login"  commandName="loginForm" method="POST">


   <h1>Log In</h1>
  
   
    <fieldset id="inputs">
       <form:input path="userName"  placeholder="Username" autofocus="" required="" /> <form:errors	path="userName" />  
        <form:password path="password" id="password" placeholder="Password" required="" /> <form:errors	path="password" />
    </fieldset>
    <fieldset id="actions">
        <input id="submit" value="Log in" type="submit">
        <a href="">Forgot your password?</a><a href="">Register</a>
    </fieldset>
</form:form>


</div>

</div>
<div style="clear:both"></div>
<jsp:include page="footer.html"></jsp:include>
</body>
</html>
