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
<h2>글삭제</h2>
<from action = "del_ok.jsp" action = "post">
<input type ="hidden" name ="idx" value ="<%=idx %>">
비밀번호:<input type = "password" name ="pwd">
&nbsp;&nbsp;
<a herf ="gest.jsp">리스트돌아가기</a><br>
<input type ="submit" value ="보내기">
</from>
</center>

</body>
</html>