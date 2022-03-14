<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>GusetBook List</h2>
<a href="write.html">글쓰기</a>
<table border="1" width="500">
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC", "yeons", "1234");
String strSql="select * from guest order by id desc";
PreparedStatement pstm =conn.prepareStatement(strSql);
ResultSet rs =pstm.executeQuery();
while(rs.next()){
	int id =rs.getInt("id");
	String name= rs.getString("name");
	String email= rs.getString("email");
	String pwd= rs.getString("pwd");
	Timestamp writeday = rs.getTimestamp("writeday");
	String content= rs.getString("content");
	%>
<tr><td> <a href='mailto:<%=email%>'><%=name%></a>(<%=writeday%>)</td>
<td><a href = del.jsp?idx=<%=id%>>삭제</a>&nbsp;&nbsp;&nbsp;<a href =edit.jsp?idx=<%=id%>>수정</a></td></tr>
<tr><td colspan=2><%=content%></td></tr>
<%
	}
	rs.close();
	pstm.close();
	conn.close();
 %>
   </table>
 </center>
</body>