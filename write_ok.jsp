<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%request.setCharacterEncoding("euc-kr"); %>
    <%@page import = "java.sql.*"%>
    <%
    String name = request.getParameter("name");
    String pwd = request.getParameter("pwd");
    String email = request.getParameter("email");
    String content = request.getParameter("content");
    Timestamp reg_date = new Timestamp(System.currentTimeMillis());
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb","yeons","1234");
    
    String sql ="inser into guest (name, pwd, email,content, writeday)values (?,?,?,?,?)";
    PreparedStatement psmt = conn.prepareStatement(sql);
    psmt.setString(1, name);
    psmt.setString(2, pwd);
    psmt.setString(3, email);
    psmt.setString(4, content);
  
    
    psmt.setTimestamp(5, reg_date);
    
    psmt.executeUpdate();
    response.sendRedirect("geust.jsp");
    %>
