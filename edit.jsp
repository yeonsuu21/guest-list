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
<h2>�� �����ϱ�</h2>
<from action = "edit_ok.jsp" action = "post">
   <table border= 0 cellspacing=0 cellpdding=0>
      <tr>
      <td> �̸�: &nbsp; &nbsp; &nbsp; <input type =��text�� name= ��name��> &nbsp;
      ��й�ȣ:<input type = ��password�� name =��pwd��></td>
      </tr>
      <tr>
         <td>�̸���:<input type = ��text�� name =��email�� size =54></td>
       </tr>
      <tr>
         <td><textarea wrap= "hard�� rows=��10�� cols = ��50�� name =��content�� ></textaera></td>
      </tr>
     </table><p>
      
      <input type = ��submit�� value =���� �����ϱ⡱>
</form>
</center>
</body>
</html>