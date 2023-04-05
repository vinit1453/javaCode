<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.test.*,java.util.*,com.google.gson.*,com.liferay.portal.kernel.json.*"  %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>not Required</title>
</head>
<%Project prj=new Project();
   String str=prj.getAllComments("PW1001-B");
 
    String[] array=str.split("-");
%>
<body>
<%-- change
Array<%=array.toString() %><br> --%>
<% for(String s:array){%>
<%=s.replace("\"", "") %><br>
<%} %>
</body>
</html>