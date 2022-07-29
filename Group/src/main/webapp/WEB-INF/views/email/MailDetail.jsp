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
제목:
보낸사람:
날짜:
내용:
답장:
<h2>상세페이지</h2>
      <table border="1">
            <thead>
                <tr>
                    <th>제목 </th>
                    <th>보낸사람</th>
                    <th>시간</th>
                    <th>내용</th>
        
                </tr>
            </thead>
            <tbody>
 				
				
					<tr>
					<td><c:out value="${data.title }"/></td>
					<td><c:out value="${data.senderMail }"/></td>
					<td><c:out value="${data.registerDate }"/></td>
					<td><c:out value="${data.content }"/></td>
					</tr>
				
			 
            </tbody>
        </table>
</body>
</html>