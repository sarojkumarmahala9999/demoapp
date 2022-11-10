<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file = "login/menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search For Flight Details</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<div class="container">
    <div class="row pt-1 pb-1">
        <div class="col-lg-12 text-center">
               <h3 class="py-3"><a href="https://spreeowl.com/">GoAsia</a></h3>
               <i class='fab fa-avianex' style='font-size:32px;color:red'></i>
            <h4 class="text-center">Search flights here</h4>
            <h6 class="text-center">awesome responsive image slider with a search bar</h6>
        </div>
    </div>
</div>
<section>
    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://pbs.twimg.com/media/EGHYvttU4AAYKb7?format=jpg&name=large" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="https://pbs.twimg.com/media/EGHYvtkUcAAuc8T?format=jpg&name=large" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="https://pbs.twimg.com/media/EGHYvtjU0AAO8w1?format=jpg&name=large" class="d-block w-100" alt="...">
            </div>
            <!--https://upload.wikimedia.org/wikipedia/commons/8/8d/Yarra_Night_Panorama%2C_Melbourne_-_Feb_2005.jpg-->
        </div>
        <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</section>
<section class="search-sec">
    <div class="container">
    
        <form action="findFlights" method="post" novalidate="novalidate">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                    
                       <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <select class="form-control search-slt" name="from">
                                <option>Departure City</option>
                                <option>Bhubaneswar</option>
                                <option>Banglore</option>
                                <option>NewDelhi</option>
                                <option>Mumbai</option>
                                <option>Chennai</option>
                                <option>Kolkata</option>
                            </select>
                        </div>
                        
                         <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <select class="form-control search-slt" name="to">
                                <option>Arrival City</option>
                                <option>Bhubaneswar</option>
                                <option>Banglore</option>
                                <option>NewDelhi</option>
                                <option>Mumbai</option>
                                <option>Chennai</option>
                                <option>Kolkata</option>
                            </select>
                        </div>
                        
                      
                        <div class="form-group row">
					    <label class="col-form-label text-right col-lg-3 col-sm-12">Date</label>
					    <div class="col-lg-7 col-md-9 col-sm-12 p-0">
					     <div class="input-group date" >
					      <input type="text" class="form-control search-slt"  value="02-05-2022" name = "departureDate"/>
					      <div class="input-group-append">
					       <span class="input-group-text">
					        <i class="la la-calendar"></i>
					       </span>
					      </div>
					     </div>
                        </div>
                       </div>

                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <button type="Submit" class="btn btn-danger wrn-btn">SEARCH</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</section>
</body>
</html>