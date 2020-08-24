<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    td{
       border:1px  solid  red;
    }
</style>
</head>
<body>
      <%
         out.println("<h2>九九乘法表</h2>");
      %>
      <%
        for(int i=1;i<=9;i++){
        	for(int j=1;j<=i;j++){

      %>
        <%=i+"*"+j+"="+i*j %>&nbsp;&nbsp;
        <%
        } 
        %>
        <br/>
      <%
        } 
        %>
        
        <!-- 九九乘法表显示在表格中 -->
        <table>
      
      <%
        for(int i=1;i<=9;i++){
       %>
       <tr>
       <%
           for(int j=1;j<=i;j++){
       %>
        	

      
      <td>  <%=i+"*"+j+"="+i*j %>&nbsp;&nbsp;</td>
        <%
           } 
        %>
        <tr>
      <%
          } 
        %>
        </table>
</body>
</html>