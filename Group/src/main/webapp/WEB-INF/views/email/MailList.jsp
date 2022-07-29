<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	*{
      margin: 0; padding: 0;
      font-family: 'LeferiPoint-WhiteObliqueA';
      text-align: center;
      
    }
    /* 컨테이너 */
.container{
  width:1500px; height: 800px;
  margin: 0 auto;
  text-align: center;
}
table{

 margin: 0 auto;
}






</style>
</head>
<body>
<div class="container">
<%@ include file="/WEB-INF/views/include/header.jsp" %>
    <h1 class="con">받은메일함</h1>
    <section class="article-list table-common con">
        <table border="1">
            <thead>
                <tr>
                    <th>발신인 </th>
                    <th>발신자 이메일</th>
                    <th>수신자 이메일</th>
                    <th>제목</th>
        
                </tr>
            </thead>
            <tbody>
 				
				<c:forEach items="${MailList }" var="email">
					<tr>
					<td><c:out value="${email.senderName }"/></td>
					<td><c:out value="${email.senderMail }"/></td>
					<td><c:out value="${email.receiveMail }"/></td>
					<td><c:out value="${email.title }"/></td>
					</tr>
				</c:forEach>
			 
            </tbody>
        </table>
    </section>
</div>
</body>
</html>

