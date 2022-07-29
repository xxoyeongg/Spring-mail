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
<h2>받는 메일함</h2>
<p><c:out value="${Receive.receiveMail }"/>의 메일함</p>

        <table border="1">
            <thead>
                <tr>
                    <th>보낸사람 </th>
                    <th>발신자 이메일</th>
                    <th>시간</th>
                    <th>제목</th>
        
                </tr>
            </thead>
            <tbody>
 				
				<c:forEach items="${ReceiveList }" var="email">
					<tr>
					<td><c:out value="${email.senderName }"/></td>
					<td><c:out value="${email.senderMail }"/></td>
					<td><c:out value="${email.registerDate }"/></td>
					<td><a href="/email/detail?title=${email.title}"><c:out value="${email.title }"/></a></td>
					</tr>
				</c:forEach>
			 
            </tbody>
        </table>
</body>
</html>