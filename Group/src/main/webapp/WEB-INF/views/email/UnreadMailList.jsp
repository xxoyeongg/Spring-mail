<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/header.css" /><!-- header css -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/aside.css" /><!-- main css -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/basic.css" /><!-- basic css -->

</head>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<%@ include file="/WEB-INF/views/include/aside.jsp" %>
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