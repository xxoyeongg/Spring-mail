<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<jsp:forward page="/login/Login_form"/> 
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<h4><a href="login/Login_form">login</a></h4>
<h4><a href="email/MailList">mail</a></h4>

logout info
</body>
</html>
