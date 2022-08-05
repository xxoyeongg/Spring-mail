<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<form action="/email/revoke" method="post">
<h2>상세페이지 (보낸 사람 )</h2>
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
					<td><input type="hidden" value="${data.mailnum }" name='mailnum'></td>
					<td><c:out value="${data.title }"/></td>
					<td><c:out value="${data.sendermail }"/></td>
					<td><c:out value="${data.registerDate }"/></td>
					<td><c:out value="${data.content }"/></td>
					</tr>
					
				
				
			 
            </tbody>   
        </table>
           <input type="submit" value="삭제">

	</form>
				
    </section>
</body>
</html>