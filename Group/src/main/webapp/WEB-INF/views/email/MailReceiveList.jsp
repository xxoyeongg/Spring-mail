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



</style>
</head>
<body>

<div id="area">
<%@ include file="/WEB-INF/views/include/header.jsp" %>
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

</div>
<h2>받는 메일함</h2>


      
</body>
</html>