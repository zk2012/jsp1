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
        //访问量统计
        int count=0;
        //整个程序共享一个application
        //第一次访问
        if(application.getAttribute("count")==null){
        	count++;
        }else{
        	//不是第一个访问   就取出来并累计  计数
        	count = Integer.parseInt(application.getAttribute("count")+"");
        	count++;
        }
        //存值
        application.setAttribute("count", count);
     %>
     你是第<%=count %>位访问该页面的用户
</body>
</html>