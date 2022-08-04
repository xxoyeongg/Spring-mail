<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

</head>
<body>
<div class="container">
	<div class="nav">
	<%@ include file="/WEB-INF/views/email/mailnav.jsp" %>
	</div>

<h2>이메일 보내기</h2>
<form method="post" action="/email/writepro"> 
<!-- post방식으로 자료를 컨트롤러로 보냄 -->
 
발신자 이름 : <input name='sendername'><br>
발신자 이메일 : <input name='sendermail'>
${mail.sendermail }<input type="hidden" value="${mail.sendermail }" name='sendermail'> <br>
수신자 이메일 : <input name='receivemail'><br>
제목 : <input name='title'><br>
내용 : <textarea rows="5" cols="80" name='content'></textarea>
<br>
<input type="submit" value="전송">
</form>
<span style="color:red;">${message}</span>
 </div>
</body>
</html>
