<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>NextGenGlobal Example</title>
    <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" />
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<h2>CW POC</h2>
	<c:if test="${not empty error}">
		<div style="color:red">Error: ${error}</div>
	</c:if>
	<form:form method="POST" action="/cwworker/login" modelAttribute="loginForm">
		<div class="col-sm-12">
			<form:label path="userName">UserName</form:label>
	    	<form:input type="text" path="userName" id="username" />
		</div>
	     <div class="col-sm-12">
			<form:label path="password">Password</form:label>
	    	<form:input type="password" path="password" id="password" />
		</div>
		<div class="col-sm-12">
			<input type="submit" value="Submit" />
		</div>
	</form:form>
</body>
</html>