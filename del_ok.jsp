<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import = "java.sql.*"%>
<%
	String idx = request. getParameter("idx");
    String pwd= request. getParameter("pwd");
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb","yeons","1234");
    String sql ="select pwd from guest where id=?";
    PreparedStatement pstm = conn.prepareStatement(sql);
    pstm.setString(1,idx);
    ResultSet rs = pstm.executeQuery();
    rs.next();
    String goodpass = rs.getString("pwd").trim();
    if(pwd.equals(goodpass))
    {
    	String strsql="delete from guest where id=?";
    	pstm = conn.prepareStatement(strsql);
    	pstm.setString(1, idx);
    	pstm.executeUpdate();
    	pstm.close();
    	conn.close();
    	rs.close();
    	response.sendRedirect("geust.jsp");
    	}
    else{
%>
<script>
	alert("비밀번호가 일치하지 않습니다");
	history.back();
</script>
   <% }
%>