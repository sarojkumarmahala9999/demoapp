<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file = "login/menu.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Reservation Details</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
<style>
	* {
    margin: 0;
    padding: 0;
}

html {
    height: 100%;
}

body {
	background-color: #000000;
}

/*Card containing 2 cards*/
.card0 {
	margin: 40px 12px 15px 12px;
	border: 0;
}

/*Left Side card*/
.card1 {
	margin: 0;
	padding: 15px;
	padding-top: 25px;
	padding-bottom: 0px;
	background: #263238;
	height: 100%;
}

.bill-head {
	color: #ffffff;
	font-weight: bold;
	margin-bottom: 0px;
	margin-top: 0px;
	font-size: 30px;
}

.line {
	border-right: 1px grey solid;
}

.bill-date {
	color: #BDBDBD;
}

.red-bg {
	margin-top: 25px;
	margin-left: 0px;
	margin-right: 0px;
	background-color: #F44336;
	padding-left: 20px !important;
	padding: 25px 10px 25px 15px;
}

#total {
	margin-top: 0px;
	padding-left: 7px;
}

#total-label {
	margin-bottom: 0px;
	color: #ffffff;
	padding-left: 7px;
}

#heading1 {
	color: #ffffff;
	font-size: 20px;
	padding-left: 10px;
}

#heading2 {
	font-size: 27px;
	color: #D50000;
}

/*For font-awesome icons in Placeholder*/
.placeicon {
	font-family: fontawesome !important;
}

/*Right Side Card*/
.card2 {
	padding: 25px;
	margin: 0;
	height: 100%;
}

.form-card .pay {
	font-weight: bold;
}

.form-card input, .form-card textarea {
    padding: 10px 8px 10px 8px;
    border: none;
    border: 1px solid lightgrey;
    border-radius: 0px;
    margin-bottom: 25px;
    margin-top: 2px;
    width: 100%;
    box-sizing: border-box;
    font-family: montserrat;
    color: #2C3E50;
    font-size: 14px;
    letter-spacing: 1px;
}

.form-card input:focus, .form-card textarea:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    border: none;
    font-weight: bold;
    border: 1px solid gray;
    outline-width: 0;
}

.btn-info {
	color: #ffffff !important;
}

/*Imaged Radio Buttons*/
.radio-group {
    position: relative;
    margin-bottom: 25px;
}

.radio {
    display:inline-block;
    width: 204;
    height: 64;
    border-radius: 0;
    background: lightblue;
    box-sizing: border-box;
    border: 2px solid lightgrey;
    cursor:pointer;
    margin: 8px 25px 8px 0px; 
}

.radio:hover {
    box-shadow: 0px 0px 0px 1px rgba(0, 0, 0, 0.2);
}

.radio.selected {
    box-shadow: 0px 0px 0px 1px rgba(0, 0, 0, 0.4);
}

/*Fit image in bootstrap div*/
.fit-image{
    width: 100%;
    object-fit: cover;
}
 </style>
</head>
<body>
<section class="background-radial-gradient overflow-hidden">
 
<div class="container-fluid">
	<div class="row justify-content-center">
		<div class="col-12 col-lg-11">
			<div class="card card0 rounded-0">
				<div class="row">
					<div class="col-md-5 d-md-block d-none p-0 box">
						<div class="card rounded-0 border-0 card1" id="bill">
							<h2 id="heading1" class="text-danger">Flight Details</h2>
							<div class="row">
								<div class="col-lg-7 col-8 mt-4 line pl-4">
									<h6 class="bill-head">Flight Number:</h6>
								</div>
								<div class="col-lg-5 col-4 mt-4">
									<h6 class="bill-head px-xl-5 px-lg-4">${flight.flightNumber}</h6>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-7 col-8 mt-4 line pl-4">
									<h4 class="bill-head">Operating Airline:</h4>
								</div>
								<div class="col-lg-5 col-4 mt-4">
									<h4 class="bill-head px-xl-5 px-lg-4">${flight.operatingAirlines}</h4>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-7 col-8 mt-4 line pl-4">
									<h4 class="bill-head">Departure City:</h4>
								</div>
								<div class="col-lg-5 col-4 mt-4">
									<h4 class="bill-head px-xl-5 px-lg-4">${flight.departureCity}</h4>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-7 col-8 mt-4 line pl-4">
									<h4 class="bill-head">Arrival City:</h4>
								</div>
								<div class="col-lg-5 col-4 mt-4">
									<h4 class="bill-head px-xl-5 px-lg-4">${flight.arrivalCity}</h4>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-7 col-8 mt-4 line pl-4">
									<h4 class="bill-head">Departure Date&Time:</h4>
								</div>
								<div class="col-lg-5 col-4 mt-4">
									<h4 class="bill-head px-xl-5 px-lg-4">${flight.estimatedDepartureTime}</h4>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 red-bg">
									<p class="bill-date" id="total-label">Total Price</p>
									<h2 class="bill-head" id="total">$ 523.65</h2>
									<small class="bill-date" id="total-label">Price includes all taxes</small>
								</div>
							</div>
						</div>
					</div>



					<div class="col-md-7 col-sm-12 p-0 box">
						<div class="card rounded-0 border-0 card2" id="paypage">
							<div class="form-card">
			                    <h2 id="heading2" class="text-danger">Passenger Details</h2>
			                    <div class="radio-group">
			                        <div class='radio' data-value="credit"><img src="https://i.imgur.com/28akQFX.jpg" width="200px" height="60px"></div>
			                        <div class='radio' data-value="paypal"><img src="https://i.imgur.com/5QFsx7K.jpg" width="200px" height="60px"></div>
			                        <br>
			                    </div>
			                    
			                    <form action="bookPassenger" method="post">
			                    <input type="hidden" name="flightId" value= "${flight.id}"/>
			                   <div class="row">
			                        <div class="col-8 col-md-6">
			                            <label class="pay">First Name</label>
			                            <input type="text" name="firstName" id="cr_no" placeholder="Enter First Name" maxlength="19">
			                        </div>
			                        <div class="col-4 col-md-6">
			                            <label class="pay">Middle Name</label>
			                            <input type="text" name="middleName" id="cr_no" placeholder="Enter Middle Name" maxlength="19">
			                        </div>
			                        </div>
			                      <div class="row">
			                        <div class="col-4 col-md-12">
			                            <label class="pay">Last Name</label>
			                            <input type="text" name="lastName" id="cr_no" placeholder="Enter Last Name" maxlength="19">
			                        </div>
			                    </div>
			                    <div class="row">
			                        <div class="col-4 col-md-12">
			                            <label class="pay">Email</label>
			                            <input type="text" name="email" id="cr_no" placeholder="johnborden12@gmail.com" maxlength="125">
			                        </div>
			                    </div>
			                    <div class="row">
			                        <div class="col-4 col-md-12">
			                            <label class="pay">Phone Number</label>
			                            <input type="text" name="phone" id="cr_no" placeholder="Enter Phone Number" maxlength="10">
			                        </div>
			                    </div>
			                    
			                    <div class="row">
			                        <div class="col-8 col-md-6">
			                            <label class="pay">Card Owner</label>
			                            <input type="text" name="cardOwner" id="cr_no" placeholder="Enter Card Owner Name" maxlength="19">
			                        </div>
			                        <div class="col-8 col-md-6">
			                            <label class="pay">Card Number</label>
			                            <input type="text" name="cardNumber" id="cr_no" placeholder="0000-0000-0000" minlength="14" maxlength="14">
			                        </div>
			                    </div>
			                    
			                    
			                    
			                    <div class="row">
			                        <div class="col-8 col-md-6">
			                            <label class="pay">Expiration Date</label>
			                            <input type="text" name="expiryDate" id="cr_no" placeholder="MM/YY" minlength="5" maxlength="5">
			                        </div>
			                        <div class="col-4 col-md-6">
			                            <label class="pay">CVV</label>
			                            <input type="password" name="cvv" placeholder="&#9679;&#9679;&#9679;" class="placeicon" minlength="3" maxlength="3">
			                        </div>
			                    </div>
			                    <div class="row">
			                        <div class="col-md-6">
			                            <input type="submit" value="BOOK NOW &nbsp; &#xf178;" class="btn btn-info placeicon">
			                        </div>
			                    </div>
			                    </form>
			                </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</section>
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