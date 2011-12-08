<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>

</head>

<body style="color:white">
<h1>Project Name:<c:out value="${projectInfoForm.projectName}" /></h1>
<form:form action="registrationaddnewuser.do" commandName="registrationForm">
<table bgcolor="#000000" style="color:#FF9900" width="49%" border="2" cellspacing="0" cellpadding="0">
  <tr>
  <th width="39%" scope="col">UserNumber</th>
    <th width="39%" scope="col">User Name</th>
    <th width="61%" scope="col">Password</th>
        <th width="61%" scope="col">User Email</th>
         <th width="61%" scope="col">Action</th>
  </tr>
  <c:forEach var="x" begin="1" end="${projectInfoForm.noOfMembers}" step="1">
    <tr>
  	<td><c:out value="${x}"></c:out></td>
    <td><form:input path="userName"></form:input></td>
    <td><form:password path="password"></form:password></td>
     <td><form:input path="userName"></form:input></td>
     <td><a href="registrationaddnewuser.do" >Insert</a></td>
  </tr>
  </c:forEach>
  <input type="submit" ></input>
</table>

</form:form>
<h1></h1>
</body>
</html>
