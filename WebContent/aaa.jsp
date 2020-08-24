<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   6部分内容
   1、静态内容  html css js
   2、小脚本   嵌套java代码逻辑
   <%
     int a=1;
     a=3+4;
     if(1>2){
    	 a=-1;
     }else{
    	 a=5;
     }
     System.out.println(a);
   %> 
    3、表达式
    <%=a %>
    <%=a+5 %>
    4、声明    变量 、方法
     <%! 
         public void show(){
    	System.out.println("Hello");
    }
     %>
     5、注释
     <%-- jsp的注释  --%>
      <!-- html的注释 -->
      6、导包
      <%
        Random  rd=new Random();
        int num=rd.nextInt();
      %>
      <%=num %>
      
</body>
</html>