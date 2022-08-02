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
      
    }
 /* 컨테이너 */
.container{
  width:1500px; height: 800px;
  margin: 0 auto;

}
.nav{
width: 300px; height: 100%;
float:left;
}

</style>
</head>
<body>
<div class="container">
	<div class="nav">
		<%@ include file="/WEB-INF/views/email/mailnav.jsp" %>%>
	</div>
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
					<td><c:out value="${data.sendermail }"/></td>
					<td><c:out value="${data.registerDate }"/></td>
					<td><c:out value="${data.content }"/></td>
					</tr>
					
				
				
			 
            </tbody>
           
        </table>
         <a href="/email/reply?receivemail=${data.sendermail}">답장하기</a>
	</div>
</body>
</html>