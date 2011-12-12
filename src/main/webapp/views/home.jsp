<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<html>
<head>
   <style type="text/css">
/* <![CDATA[ */
html,body{
	margin-top:0px;
	top:0px;
	margin-bottom:0px;
	margin-left:0px;
	margin-right:0px;
	background-color:#000;
	font-family:"Times New Roman", Times, serif;
	
	}
	</style>
	<title>BUGMINE HOME!...</title>
 <LINK REL="SHORTCUT ICON"  href="http://localhost:8080/bugmine/images/favicon.ico">
  
<link rel="stylesheet" href="css/menu_style.css" type="text/css" />
</head>
<body >
<jsp:include page="header.html"></jsp:include>

<div  style="width:100%;height:auto; float:left; " align="left">
<ul  id="menu">
<li><a href="#" >Welcome:<c:out value="${loginForm.userName}"></c:out></a></li>
<c:if test="${loginForm.usrType=='admin'}">
<li><a href="project.do" target="mainframe">Create New Project</a></li>

<li><a href="#" target="mainframe">User List</a></li>
</c:if>
<li><a href="#" target="mainframe">All Issues</a></li>
<li><a href="#" target="mainframe">My Account</a></li>
<li><a href="#" target="mainframe">Settings</a></li>
<li class="lastitem"><a href="#">Log Out</a></li>
<li></li>
</ul>

</div>
<div style=" width:100%;height:400px;background-color:#666666">
<iframe  align="right"  frameborder="0"  allowtransparency="true" src="views/welcome.jsp" name="mainframe" width="100%" height="100%"></iframe>
</div>
<jsp:include page="footer2.html"></jsp:include>
</body>
</html>
