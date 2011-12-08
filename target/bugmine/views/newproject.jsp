<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
</head>
<h1>Project Info</h1>
<form:form action="project.do" commandName="projectInfoForm">
    <table width="50%" style="margin-top:10%"  border="1" cellspacing="0" cellpadding="0">
  <tr>
    <td width="205">Project Name<FONT color="red"><form:errors
				path="projectName" /></FONT></td>
    <td width="271" ><form:input path="projectName" /></td>
  </tr>
  
  <tr>
    <td>Number of Member<FONT color="red"><form:errors
				path="noOfMembers" /></FONT></td>
    <td><form:input path="noOfMembers" /></td>
  </tr>
    <tr>
    <td>Start Date<FONT color="red"><form:errors
				path="startDate" /></FONT></td>
    <td><form:input path="startDate" /></td>
  </tr>
   <tr>
    <td colspan="2">
        
        <input type="submit" value="Submit" name="submit" />
    </td>
    </tr>
  
</table>
</form:form>
<body>
</body>
</html>
