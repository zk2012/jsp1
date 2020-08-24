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
         //输出在网页上面
         out.write("<p style='color:red'>个人主页</p>");
         //从doLogin请求转发过的数据  此数据  来源于longin
         String username=request.getParameter("username");
         out.write("欢迎："+username);
         //在doLogin自己设置的数据  响应过来  返回值object  而用String来接收   就必须强制转换
         String utype=request.getAttribute("utype")+"";
         out.write("职位："+utype);
         String utype2=(String)request.getAttribute("utype");
         out.write("职位："+utype2);
         
         //重定向过来request的数据是无效的   页面显示为null
         
         //session取值的方式  同上
         String tel=session.getAttribute("tel")+"";
         out.println("<p style='color:yellow'>"+tel+"</p>");
      %>
</body>
</html>