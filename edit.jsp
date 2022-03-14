<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>글 수정하기</h2>
<from action = "edit_ok.jsp" action = "post">
   <table border= 0 cellspacing=0 cellpdding=0>
      <tr>
      <td> 이름: &nbsp; &nbsp; &nbsp; <input type =“text” name= “name”> &nbsp;
      비밀번호:<input type = “password” name =“pwd”></td>
      </tr>
      <tr>
         <td>이메일:<input type = “text” name =“email” size =54></td>
       </tr>
      <tr>
         <td><textarea wrap= "hard” rows=“10” cols = “50” name =“content” ></textaera></td>
      </tr>
     </table><p>
      
      <input type = “submit” value =“글 수정하기”>
</form>
</center>
</body>
</html>