<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file = "login/menu.jsp" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
 <title>Job</title>  
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/> 
<meta charset="ISO-8859-1">
<title>All Flight Details</title>
</head>
<body>
	<div class="container">  
  <h1>All Flight Details</h1>  
<div class="table-responsive">  
	<table class="table">
		<tr class="success">
			<th>Airlines</th>
			<th>Departure City</th>
			<th>Arrival City</th>
			<th>Departure Date & Time</th>
			<th>Action</th>
		</tr>
		<c:forEach var="findFlights" items="${findFlights}">
		<tr>
			<td>${findFlights.operatingAirlines}</td>
			<td>${findFlights.departureCity}</td>
			<td>${findFlights.arrivalCity}</td>
			<td>${findFlights.estimatedDepartureTime}</td>
			<td><a href ="bookFlight?id=${findFlights.id}"><button type="button" class="btn btn-info">BOOK HERE</button></a></td>
		</tr>
		</c:forEach>
	</table>
	</div>  
  </div> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  
  			<footer class="footer-copyright text-center bg-dark py-3"
               style="position:fixed; width:100%; bottom:0">
			    <div>
			        <strong>
			            <a href="">Enjoy your journey with GoAsia</a>
			            <i class='fab fa-avianex' style='font-size:24px;color:red'></i>
			        </strong>
			    </div>
			</footer>   
</body>
</html>