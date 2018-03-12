
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="<spring:url value="/resource/js/ajax.js"/>"></script>
	<link href="http://getbootstrap.com/dist/css/bootstrap.css"
	rel="stylesheet">

    <link href="http://getbootstrap.com/examples/jumbotron/jumbotron.css"
	rel="stylesheet">
<style type="text/css">
		@import url("<spring:url value="/resource/css/main.css"/>");
</style>
	
</head>
<body>
<div class="mainBody">
<div id="errors"></div>
<div id="search">
	<div >
		<input class="btn .btn-primary" id="newBtn" type="button" value="NEW" /> 
	</div>
	<br />
	<div id="errors" style="color:blue;"></div> 
	<div id="addAppForm">
	<table>
		<form id="appointmentForm" method="post">
			<tr><td>
			<input type="button" value="CANCEL" id="cancel"/></td></tr>
			
			<tr><td>
				<label for="date">Date</label></td>
				<td><input id="date" type="date" name="date" placeholder="yyyy-MM-dd" /></td></tr>
			
			<tr><td>
				<label for="time">Time</label></td>
				<td><input id="time" type="time" name="time" placeholder="HH:mm:AM/PM" /> </td></tr>
		
			<tr><td> 
				<label for="date">Description</label></td>
				<td><input id="description" type="text" name="description" placeholder="Description" />
			</td></tr>
		
		</form>
		</table>
	</div>
	<form>
		<input id="searchTxt" type="date" placeholder="Search" />
		<input id="searchBtn" type="button" value="Search"> 
	</form>
	<div id="searchResult" class="table-striped">
	<table id="fullResultTable">
		<tr id="newlyAddResult">
			<th>Date </th>   
			<th>Time</th>
			<th>Description</th>
		</tr>
	</table>
	
	<table id="searchResultTable" class="table-bordered">
		<tr>
			<th>Date </th>   
			<th>Time</th>
			<th>Description</th>
		</tr>
		<tr id="newSearchedResult"></tr>
	</table>
	
	</div>
</div>
</div>
</body>
</html>