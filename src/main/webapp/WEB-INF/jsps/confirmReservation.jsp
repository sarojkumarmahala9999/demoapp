<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ include file = "login/menu.jsp" %>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Generating Ticket</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
</head>
<body>
<style>
body {
  background-color: #eee;
}

.fs-12 {
  font-size: 12px;
}

.fs-15 {
  font-size: 15px;
}

.name {
  margin-bottom: -2px;
}

.product-details {
  margin-top: 13px;
}
</style>
<h1>Ticket Booked Successfully</h1>
<div class="container mt-5 mb-5">
        <div class="d-flex justify-content-center row">
            <div class="col-md-10">
                <div class="receipt bg-white p-3 rounded">GoAsia<i class='fab fa-avianex' style='font-size:28px;color:red'></i>
                    <h4 class="mt-2 mb-3">Your ticket is booked successfully!</h4>
                    <hr>
                    <div class="d-flex flex-row justify-content-between align-items-center order-details">
                    	<div><span class="d-block fs-12">Ticket number</span><span class="font-weight-bold">${reservation.id}</span></div>
                        <div><span class="d-block fs-12">Booking Date&Time</span><span class="font-weight-bold"> ${reservation.bookedOn}</span></div>
                        <div><span class="d-block fs-12">Payment method</span><span class="font-weight-bold">Credit card</span><img class="ml-1 mb-1" src="https://i.imgur.com/ZZr3Yqj.png" width="20"></div>
                    </div>
                    <hr>
                   
                    <div class="mt-5 amount row">
                        <div class="d-flex justify-content-center col-md-6"><img src="https://i.imgur.com/AXdWCWr.gif" width="250" height="100"></div>
                        <div class="col-md-6">
                            <div class="billing">
                                <div class="d-flex justify-content-between"><span>Subtotal</span><span class="font-weight-bold">$475.69</span></div>
                                <div class="d-flex justify-content-between mt-2"><span>Transaction fee</span><span class="font-weight-bold">$15.87</span></div>
                                <div class="d-flex justify-content-between mt-2"><span>Tax</span><span class="font-weight-bold">$5</span></div>
                                <div class="d-flex justify-content-between mt-2"><span class="text-success">Discount</span><span class="font-weight-bold text-success">$27.09</span></div>
                                <hr>
                                <div class="d-flex justify-content-between mt-1"><span class="font-weight-bold">Total</span><span class="font-weight-bold text-success">$523.65</span></div>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="d-flex justify-content-between align-items-center footer">
                        <div class="thanks"><span class="d-block font-weight-bold">Thanks for booking</span><span>GoAsia team</span></div>
                        <div class="d-flex flex-column justify-content-end align-items-end"><span class="d-block font-weight-bold">Need Help?</span><span>Call - 974493933</span></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>