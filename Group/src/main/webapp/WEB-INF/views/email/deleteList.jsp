<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  </section>
</body>
</html>