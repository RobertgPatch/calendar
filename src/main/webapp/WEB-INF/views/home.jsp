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
		414Cal
	</h1>
	<p>
		ICS414<br />
		Fall 2013<br />
		Kyle Mulleady<br />
		Robert Patch
	</p>
	<div id='cal-container'>
	   <div id='cal-header'>
	       ${month}
	   </div>
	   <div id='cal-content'>
	       <div class='month'>
	         <c:forTokens items="1,2,3,4,5,6" delims="," var="week">
               <div class='week'>
                 <c:forEach var="i" begin="1" end="7">
                   <div class='day'><c:out value="${i}"/></div>
                 </c:forEach>
               </div>
             </c:forTokens>
	       </div>
	   </div>
	</div>
</div>
</body>
</html>
