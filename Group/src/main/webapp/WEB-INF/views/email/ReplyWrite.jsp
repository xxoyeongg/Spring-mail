<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
String receiveMail =(String)session.getAttribute("receiveMail");

%>
</head>
<body>
<h2>답장</h2>
<form method="post" action="/email/replypro"> 
<!-- post방식으로 자료를 컨트롤러로 보냄 -->
 

받는 사람 수신자 이메일 :<%=receiveMail %> <input type="hidden" value="<%= receiveMail %>" name='receiveMail'><br>
발신자 이름 : <input name='senderName'><br>
발신자 이메일 : <input name='senderMail'><br>
제목 : <input name='title'><br>
내용 : <textarea rows="5" cols="80" name='content'></textarea>
<br>
<input type="submit" value="전송">
</form>
<span style="color:red;">${message}</span>
 <p>수신자 이메일  넘기기  </p>
</body>
</html>