<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>보낸 메일함</h2>
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
 				
				<c:forEach items="${SendList }" var="email">
					<tr>
					<td><c:out value="${email.senderName }"/></td>
					<td><c:out value="${email.receiveMail }"/></td>
					<td><c:out value="${email.registerDate }"/></td>
					<td><c:out value="${email.title }"/></td>
					</tr>
				</c:forEach>
			 
            </tbody>
        </table>
</body>
</html>