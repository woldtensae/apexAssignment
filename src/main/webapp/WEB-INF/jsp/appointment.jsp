
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="<spring:url value="/resource/js/ajax.js"/>"></script>
</head>
<body>
<h1>Appointment page</h1>
<div id="search">
	<div id="newBtn">
		<input type="button" value="New Appointment" /> 
	</div>
	<br />
	<div id="addAppForm">
		<form>
			<input type="button" value="ADD" />
			<input type="button" value="CANCEL" />
			<p>
				<label for="date">Date</label>
				<input id="date" type="text" placeholder="Date" />
			</p>
			<p>
				<label for="time">Time</label>
				<input id="time" type="text" placeholder="Time" /> 
			</p>
			<p> 
				<label for="date">Description</label>
				<input id="description" type="text" placeholder="Description" />
			</p>
		
		</form>
	</div>
	<form>
		<input type="text" placeholder="Search" />
		<input type="button" value="Search"> 
	</form>
	<div id="searchResult"></div>
</div>

</body>
</html>