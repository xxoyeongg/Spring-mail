<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/header.css" /><!-- header css -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/aside.css" /><!-- main css -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/basic.css" /><!-- basic css -->

<%
String receiveMail =(String)session.getAttribute("receiveMail");

%>
</head>
<body>


	<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<%@ include file="/WEB-INF/views/include/aside.jsp" %>
<section>
<h2>답장</h2>
<form method="post" action="/email/replypro"> 
<!-- post방식으로 자료를 컨트롤러로 보냄 -->
 

받는 사람 수신자 이메일 :<%=receiveMail %> <input type="hidden" value="<%= receiveMail %>" name='receivemail'><br>
발신자 이름 : <input name='sendername'><br>
발신자 이메일 : <input name='sendermail'><br>
제목 : <input name='title'><br>
내용 : <textarea rows="5" cols="80" name='content'></textarea>
<br>
<input type="submit" value="전송">
</form>
<span style="color:red;">${message}</span>
 <p>수신자 이메일  넘기기  </p>
			
    </section>
</body>
</html>