<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h2>삭제한 메일 리스트</h2>
      <table border="1">
            <thead>
                <tr>
                    <th>받는사람 </th>
                    <th>수신자 이메일</th>
                    <th>시간</th>
                    <th>제목</th>
        
                </tr>
            </thead>
            <tbody>
 				
				<c:forEach items="${deleteList }" var="email">
					<tr>
					<td><c:out value="${email.sendername }"/></td>
					<td><c:out value="${email.receivemail }"/></td>
					<td><c:out value="${email.registerDate }"/></td>
					<td><c:out value="${email.title }"/></td>
					</tr>
				</c:forEach>
			 
            </tbody>
        </table>
</div>
</body>
</html>