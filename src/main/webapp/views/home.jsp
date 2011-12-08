<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<html>
<head>
	<title>BUGMINE HOME!...</title>

<link rel="stylesheet" href="css/menu_style.css" type="text/css" />
</head>
<body bgcolor="darkgray">
<jsp:include page="header.html"></jsp:include>
<div  style="background-color:#666666;width:100%;height:auto; ">
<div  style="background-color:#666666;width:100%;height:auto; float:left; " align="left">
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
<div style="float:left">
<iframe  align="right"  frameborder="0"  allowtransparency="true" src="views/welcome.jsp" name="mainframe" width="1050px" height="420px"></iframe>
</div>
</div>
<div style="clear:both"></div>
<jsp:include page="footer.html"></jsp:include>
</body>
</html>
