<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <title>Home</title>
    <link rel='stylesheet' type='text/css' href='<c:url value="/resources/css/styles.css" />' />
    <link rel='stylesheet' type='text/css' href='<c:url value="/resources/css/jquery-ui-1.10.3.custom.min.css" />' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300' rel='stylesheet' type='text/css'>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src='<c:url value="/resources/js/jquery-ui-1.10.3.custom.min.js" />'></script>
    <script>
    $(function() {
      $("#dateStart").datepicker();
      $("#dateEnd").datepicker();
    });
    </script>
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
        414Cal Event Creator
    </h1>
    <c:if test="${!empty username}">
        ${username = "User"}
    </c:if>
    <h3>
        ${username}
    </h3>
    <form action='createEvent' method='post'>
        <p><input type='text' name='eventTitle' size='58' placeholder='Title' /></p>
        <p><input type='text' name='eventLocation' size='58' placeholder='Location' /></p>
        <p><textarea name='eventDescription' rows='5' cols='42' placeholder='Description'></textarea></p>
        <p>From <input type='text' name='dateStart' id='dateStart' /> to <input type='text' name='dateEnd' id='dateEnd' /></p>
        <p><input type='checkbox' name='allDay'> All day</p>
        <p><input type='checkbox' name='repeat' id='repeat'> Repeat</p> 
    </form>
</div>
</body>
</html>
