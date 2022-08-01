<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		<%@ include file="/WEB-INF/views/include/mailnav.jsp" %>
	</div>
	<h2>받는 메일함</h2>
  <table border="1">
            <thead>
                <tr>
                	<th>이메일 번호</th>
                    <th>보낸사람 </th>
                    <th>발신자 이메일</th>
                    <th>시간</th>
                    <th>제목</th>
                    <th>읽음 1 /안읽음 0</th>
        
                </tr>
            </thead>
            <tbody>
 				
				<c:forEach items="${ReceiveList }" var="email">
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

</div>



      
</body>
</html>