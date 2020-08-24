<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%
    //session取值的方式  同上
    String tel=session.getAttribute("tel")+"";
    out.println("<p style='color:yellow'>"+tel+"</p>");
    %>
</body>
</html>