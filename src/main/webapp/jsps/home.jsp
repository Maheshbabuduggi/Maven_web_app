
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EliteStay</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
body{
    background:#f5f7fb;
    font-family:Segoe UI,sans-serif;
}
.navbar{
    background:#111827;
}
.hero{
    height:90vh;
    background:url('https://images.unsplash.com/photo-1566073771259-6a8506099945?auto=format&fit=crop&w=1600&q=80') center/cover;
    position:relative;
}
.hero::before{
    content:"";
    position:absolute;
    inset:0;
    background:rgba(0,0,0,.45);
}
.hero-content{
    position:relative;
    z-index:2;
    color:white;
    height:100%;
    display:flex;
    align-items:center;
}
.booking-box{
    background:white;
    padding:30px;
    border-radius:20px;
    box-shadow:0 20px 40px rgba(0,0,0,.2);
}
.btn-search{
    background:#111827;
    color:white;
    border-radius:10px;
}
.card-hover{
    transition:.3s;
}
.card-hover:hover{
    transform:translateY(-8px);
}
footer{
    background:#111827;
    color:#d1d5db;
    padding:30px;
}
</style>
</head>

<body>

<nav class="navbar navbar-dark">
<div class="container">
<a class="navbar-brand fw-bold" href="#">🏨 EliteStay</a>
</div>
</nav>

<section class="hero">
<div class="container hero-content">
<div class="row w-100 align-items-center">

<div class="col-lg-7">
<span class="badge bg-warning text-dark mb-3">PREMIUM COLLECTION</span>
<h1 class="display-3 fw-bold">Discover Your Perfect Escape</h1>
<p class="lead">Luxury hotels, unforgettable experiences, and the best prices.</p>
</div>

<div class="col-lg-5">
<div class="booking-box">
<h4 class="mb-4">Book Your Stay</h4>

<form action="searchHotel" method="get">

<div class="mb-3">
<label>Destination</label>
<input type="text" name="destination" class="form-control" placeholder="Goa, Bangalore..." required>
</div>

<div class="row">
<div class="col">
<label>Check-In</label>
<input type="date" name="checkIn" class="form-control">
</div>

<div class="col">
<label>Check-Out</label>
<input type="date" name="checkOut" class="form-control">
</div>
</div>

<div class="mt-3">
<label>Guests</label>
<select class="form-select" name="guests">
<option>1 Guest</option>
<option selected>2 Guests</option>
<option>3 Guests</option>
<option>4 Guests</option>
</select>
</div>

<button class="btn btn-search w-100 mt-4">
<i class="bi bi-search"></i> Search Hotels
</button>

</form>
</div>
</div>

</div>
</div>
</section>

<div class="container py-5">

<h2 class="text-center mb-4">Popular Destinations</h2>

<div class="row g-4">

<div class="col-md-4">
<div class="card border-0 shadow card-hover">
<img src="https://images.unsplash.com/photo-1519046904884-53103b34b206?auto=format&fit=crop&w=700&q=80" class="card-img-top">
<div class="card-body">
<h5>Goa Beach Resort</h5>
<p class="text-muted">Oceanfront • 4.9 ★</p>
<h4>₹6,499</h4>
</div>
</div>
</div>

<div class="col-md-4">
<div class="card border-0 shadow card-hover">
<img src="https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?auto=format&fit=crop&w=700&q=80" class="card-img-top">
<div class="card-body">
<h5>Bangalore Palace</h5>
<p class="text-muted">City Luxury • 4.8 ★</p>
<h4>₹4,999</h4>
</div>
</div>
</div>

<div class="col-md-4">
<div class="card border-0 shadow card-hover">
<img src="https://images.unsplash.com/photo-1564501049412-61c2a3083791?auto=format&fit=crop&w=700&q=80" class="card-img-top">
<div class="card-body">
<h5>Hyderabad Royal</h5>
<p class="text-muted">Business Hotel • 4.7 ★</p>
<h4>₹3,999</h4>
</div>
</div>
</div>

</div>

<%
InetAddress inet = InetAddress.getLocalHost();
%>

<div class="row mt-5 g-4">
<div class="col-md-6">
<div class="p-4 bg-white rounded shadow-sm">
<h5><i class="bi bi-server"></i> Server Information</h5>
<p><b>Name:</b> <%=inet.getHostName()%></p>
<p><b>IP:</b> <%=inet.getHostAddress()%></p>
</div>
</div>

<div class="col-md-6">
<div class="p-4 bg-white rounded shadow-sm">
<h5><i class="bi bi-laptop"></i> Client Information</h5>
<p><b>Client IP:</b> <%=request.getRemoteAddr()%></p>
<p><b>Host:</b> <%=request.getRemoteHost()%></p>
</div>
</div>
</div>

</div>

<footer class="text-center">
<h4>EliteStay</h4>
<p>Experience comfort with elegance.</p>
<p>© 2026 EliteStay Hotels</p>
</footer>

</body>
</html>
