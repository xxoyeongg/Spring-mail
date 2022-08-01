<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
      margin: 0; padding: 0;
      font-family: 'LeferiPoint-WhiteObliqueA';
      
    }
 /* 컨테이너 */
.container{
  width:1500px; height: 800px;
  margin: 0 auto;

}
.nav{
width: 300px; height: 100%;
float:left;
}

</style>
<%
String receiveMail =(String)session.getAttribute("receiveMail");

%>
</head>
<body>
<div class="container">
	<div class="nav">
		<%@ include file="/WEB-INF/views/include/mailnav.jsp" %>
	</div>
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
</div>
</body>
</html>