<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<link rel='stylesheet' type='text/css' href='<c:url value="/resources/css/styles.css" />' />
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
		<p><input type='text' name='username' placeholder='Username' /></p>
		<p><input type='password' name='username' placeholder='Password' /></p>
		<p><input type='submit' /></p>
	</form>
</div>
</body>
</html>
