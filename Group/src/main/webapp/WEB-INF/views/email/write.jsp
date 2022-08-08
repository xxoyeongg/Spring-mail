<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/header.css" /><!-- header css -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/aside.css" /><!-- main css -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/basic.css" /><!-- basic css -->
</head>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<%@ include file="/WEB-INF/views/include/aside.jsp" %>
	<section>

<h2>이메일 보내기</h2>
<form method="post" action="/email/writepro"> 
<!-- post방식으로 자료를 컨트롤러로 보냄 -->
 
사원번호 ${mem_no} <input type="hidden" value="${mem_no}" name='memnum'><br>
발신자 이메일 : ${mem_eml}<input type="hidden" value="${mem_eml}" name='sendermail'> <br>
수신자 이메일 : <input name='receivemail'><br>
제목 : <input name='title'><br>
내용 : <textarea rows="5" cols="80" name='content'></textarea>
<br>
<input type="submit" value="전송">
</form>

    </section>
</body>
</html>
