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
</head>
<body>
<div class="container">

	<div class="nav">
	<%@ include file="/WEB-INF/views/email/mailnav.jsp" %>
	</div>
    <section>
    <h2>안읽은  메일함 읽음 0만 떠야함 </h2>
        <table border="1">
            <thead>
                <tr>
                 	<th>메일번호  </th>
                    <th>발신인 </th>
                    <th>발신자 이메일</th>
                    <th>수신자 이메일</th>
                    <th>제목</th>
        
                </tr>
            </thead>
            <tbody>
 				
				<c:forEach items="${Unreadlist }" var="email">
					<tr>
					<td><a href="/email/detail?mailnum=${email.mailnum}">${email.mailnum }</a></td>
					<td><c:out value="${email.sendername }"/></td>
					<td><c:out value="${email.sendermail }"/></td>
					<td><c:out value="${email.registerDate }"/></td>
					<td><a href="/email/detail?mailnum=${email.mailnum}"><c:out value="${email.title }"/></a></td>
					<td><c:out value="${email.readck }"/></td>
				
					</tr>
				</c:forEach>
			 
            </tbody>
        </table>
        안읽은 메일 수 :${Unreadcount}
    </section>
</div>
</body>
</html>