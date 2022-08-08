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
<h2>보낸 메일함</h2>
      <table border="1">
            <thead>
                <tr> 
       				<th>메일번호</th>
                    <th>수신자 이메일</th>
                    <th>전송시간</th>
                    <th>제목</th>
                    <th>읽음 1 /안읽음 0</th>

        
                </tr>
            </thead>
            <tbody>
 				
				<c:forEach items="${SendList }" var="email">
					<tr>
					<td><a href="/email/detail2?mailnum=${email.mailnum}">${email.mailnum }</a></td>
					<td><c:out value="${email.receivemail }"/></td>
					<td><fmt:formatDate value="${email.registerDate }" pattern="YYYY/MM/DD/hh24:mm"/></td>
					<td><c:out value="${email.title }"/></td>
					<td><c:out value="${email.readck }"/></td>
	
					</tr>
				</c:forEach>
			 
            </tbody>
        </table>
   </section>
</body>
</html>