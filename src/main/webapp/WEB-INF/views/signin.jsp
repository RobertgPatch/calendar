<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<link rel='stylesheet' type='text/css' href='<c:url value="/resources/css/styles.css" />' />
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300' rel='stylesheet' type='text/css'>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
</head>
<body>
<div id='header-container'>
	<div id='header-content'>
		<a href='<c:url value="/" />'>414Cal</a>
		<div id='header-content-right'>
			<a href='<c:url value="/signin" />'>Sign In</a>
		</div>
	</div>
</div>
<div id='body-content'>
	<h1>
		414Cal Sign in
	</h1>
	<form action='<c:url value="/signin" />' method='post'>
		<p id='error_message'>${error_message}</p>
		<p><input type='text' name='username' placeholder='Username' /></p>
		<p><input type='password' name='password' placeholder='Password' /></p>
		<p><input type='submit' /></p>
	</form>
</div>
</body>
</html>
