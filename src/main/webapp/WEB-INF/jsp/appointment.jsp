
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
	<div id="errors" ></div>
	<div id="addAppForm" method="post">
		<form id="appointmentForm" method="post">
			<input type="button" value="ADD" id="add" />
			<input type="button" value="CANCEL" id="cancel"/>
			<p>
				<label for="date">Date</label>
				<input id="date" type="text" name="date" placeholder="Date" />
			</p>
			<p>
				<label for="time">Time</label>
				<input id="time" type="text" name="time" placeholder="Time" /> 
			</p>
			<p> 
				<label for="date">Description</label>
				<input id="description" type="text" name="description" placeholder="Description" />
			</p>
		
		</form>
	</div>
	<form>
		<input id="searchTxt" type="text" placeholder="Search" />
		<input id="searchBtn" type="button" value="Search"> 
	</form>
	<div id="searchResult">
	<table id="fullResultTable">
		<tr id="newlyAddResult">
			<th>Date </th>   
			<th>Time</th>
			<th>Description</th>
		</tr>
	</table>
	
	<table id="searchResultTable">
		<tr id="newSearchedResult">
			<th>Date </th>   
			<th>Time</th>
			<th>Description</th>
		</tr>
	</table>
	
	</div>
</div>

</body>
</html>