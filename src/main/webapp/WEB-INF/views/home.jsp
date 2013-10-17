<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<link rel='stylesheet' type='text/css' href='<c:url value="/resources/css/styles.css" />' />
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300' rel='stylesheet' type='text/css'>
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
		414Cal
	</h1>
	<p>
		ICS414<br />
		Fall 2013<br />
		Kyle Mulleady<br />
		Robert Patch
	</p>
</div>
</body>
</html>
