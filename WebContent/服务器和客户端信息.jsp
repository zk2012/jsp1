<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      <!-- 0:0:0:0:0:0:0:1是ipv6的表现形式，对应ipv4来说相当于127.0.0.1，也就是
      本机把URL上的localhost改成127.0.0.1-->
      服务器IP地址:<%=request.getLocalAddr() %><br/>
       服务器主机名:<%=request.getLocalName() %><br/>
        服务器端口:<%=request.getLocalPort() %><br/>
        <br/>
         客户端IP地址:<%=request.getRemoteAddr() %><br/>
        客户端主机名:<%=request.getRemoteHost() %><br/>
         客户端端口:<%=request.getRemotePort() %><br/>    
</body>
</html>