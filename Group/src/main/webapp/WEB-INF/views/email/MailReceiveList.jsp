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

	<h2>받은 메일함</h2>
	안읽은 메일함
	<a href="/email/unreadList">안읽은</a>
	<form action="/email/delupdate" method="post">
	
    <table class="table table-hover">
    	   <thead>
                <tr>
                	<th>이메일 번호</th>
                    <th>보낸 사람 번호</th>
                    <th>보낸 사람 이메일</th>
                    <th>제목</th>
                    <th>시간</th>
                    <th>읽음 1 /안읽음 0</th>
                </tr>
            </thead>
            <tbody>
 				
				<c:forEach items="${ReceiveList }" var="email">
				
					<tr>
					<td><a href="/email/detail?mailnum=${email.mailnum}">${email.mailnum }</a></td>
					<td><c:out value="${email.memnum }"/></td>
					<td><c:out value="${email.sendermail }"/></td>
					<td><fmt:formatDate value="${email.registerDate }" pattern="yyyy/mm/dd/hh:mm:ss"/></td>
					<td><a href="/email/detail?mailnum=${email.mailnum}"><c:out value="${email.title }"/></a></td>
					<td><c:out value="${email.readck }"/></td>
					<td><input type="hidden" value="${email.mailnum }" name='mailnum'>
					<input type="submit" value="삭제"></td>					
					</tr>
					
				</c:forEach>
			 
            </tbody>
   		 </table>
        </form>	
    </section>
  
</body>
</html>