<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import = "java.sql.*"%>
    <%
    String idx= request. getParameter("idx");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>�ۻ���</h2>
<from action = "del_ok.jsp" action = "post">
<input type ="hidden" name ="idx" value ="<%=idx %>">
��й�ȣ:<input type = "password" name ="pwd">
&nbsp;&nbsp;
<a herf ="gest.jsp">����Ʈ���ư���</a><br>
<input type ="submit" value ="������">
</from>
</center>

</body>
</html>