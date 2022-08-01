<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">

	<div class="nav">
		<%@ include file="/WEB-INF/views/include/mailnav.jsp" %>
	</div>
    <section>
    <h2>전체 메일함</h2>
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
 				
				<c:forEach items="${MailList }" var="email">
					<tr>
					<td><a href="/email/detail?mailnum=${email.mailnum}"><c:out value="${email.mailnum }"/></a></td>
					<td><c:out value="${email.sendername }"/></td>
					<td><c:out value="${email.sendermail }"/></td>
					<td><c:out value="${email.receivemail }"/></td>
					<td><c:out value="${email.title }"/></td>
					</tr>
				</c:forEach>
			 
            </tbody>
        </table>
    </section>
</div>
</body>
</html>