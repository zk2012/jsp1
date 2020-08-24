<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>源辰信息</title>
</head>
<body>
      <%
          //设置请求的编码
          request.setCharacterEncoding("UTF-8"); //解决中文乱码的问题
          //form表单发送请求到这个网页   那么此网页就可以通过jsp内置对象request请求获取参数
          //从页面取值  提交表单元素的值   表单元素的name属性    键值对
          //一次只取一个参数
          String username=request.getParameter("username");
          String userpwd=request.getParameter("userpwd");
          System.out.println(username+"--"+userpwd);
          //无法获取多个值
          String inter=request.getParameter("inter");
         // System.out.println(inter);
          
          //获取一组参数需要使用getParameterValues() 返回一个数组
          String[] inters=request.getParameterValues("inter");
          
          //打印特长
          if(inter==null){
        	  System.out.println("抱歉，该用户没有特长");
          }else{
        	  for(String s : inters){
            	  System.out.println(s);
              }
          }
          
          //判断
          if("yc".equals(username) && "a".equals(userpwd)){
        	  //登录成功
        	  //给request额外设置参数
        	  request.setAttribute("utype", "管理员");
        	  
        	  //1、请求转发
        	  //request.getRequestDispatcher("index.jsp").forward(request,response);
        	  
        	  //2、重定向
        	  response.sendRedirect("index.jsp");
        	  
        	  //3、使用session存值
        	  session.setAttribute("tel", "18673639802");
              %>  
        	  <%-- 欢迎：用户：<%=username %> 密码：<%=userpwd %> --%>
        	  
        	  <%
        	     }else{
        	    	 response.sendRedirect("http://www.hyycinfo.com"); //外部网站
        	     }
        	  %>
          
      
</body>
</html>