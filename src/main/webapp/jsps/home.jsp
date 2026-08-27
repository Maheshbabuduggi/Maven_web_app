<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>CarePlus Hospital</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
body{
    background:#f5f9fc;
    font-family:'Segoe UI',sans-serif;
}

.navbar{
    background:#0d6efd;
}

.hero{
    background:linear-gradient(rgba(13,110,253,.88),rgba(13,110,253,.88)),
    url('https://images.unsplash.com/photo-1576091160550-2173dba999ef?auto=format&fit=crop&w=1600&q=80');
    background-size:cover;
    background-position:center;
    color:white;
    padding:90px 0;
}

.hero h1{
    font-size:55px;
    font-weight:700;
}

.hero p{
    font-size:18px;
}

.booking{
    background:white;
    border-radius:20px;
    padding:30px;
    box-shadow:0 15px 35px rgba(0,0,0,.12);
}

.section-title{
    font-size:36px;
    font-weight:700;
    text-align:center;
    margin-bottom:15px;
}

.card-box{
    border:none;
    border-radius:18px;
    transition:.3s;
    box-shadow:0 8px 20px rgba(0,0,0,.08);
}

.card-box:hover{
    transform:translateY(-8px);
}

.icon-circle{
    width:70px;
    height:70px;
    background:#e8f2ff;
    border-radius:50%;
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:30px;
    color:#0d6efd;
    margin:auto;
}

.info-card{
    background:white;
    border-radius:18px;
    padding:25px;
    box-shadow:0 8px 20px rgba(0,0,0,.08);
}

footer{
    background:#0b3b82;
    color:white;
    padding:30px 0;
}
</style>

</head>
<body>

<!-- Navbar -->

<nav class="navbar navbar-expand-lg navbar-dark">
<div class="container">
<a class="navbar-brand fw-bold" href="#">
<i class="bi bi-hospital-fill"></i> CarePlus Hospital
</a>

<button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#menu">
<span class="navbar-toggler-icon"></span>
</button>

<div class="collapse navbar-collapse" id="menu">
<ul class="navbar-nav ms-auto">
<li class="nav-item"><a class="nav-link" href="#">Home</a></li>
<li class="nav-item"><a class="nav-link" href="#dept">Departments</a></li>
<li class="nav-item"><a class="nav-link" href="#doctor">Doctors</a></li>
<li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
</ul>
</div>
</div>
</nav>

<!-- Hero -->

<section class="hero">
<div class="container">
<div class="row align-items-center">

<div class="col-lg-7">
<h1>Your Health is Our Priority</h1>
<p class="my-4">
24×7 emergency care, experienced specialists and advanced medical facilities.
</p>

<div class="row mt-4">
<div class="col-4">
<h3>150+</h3>
<small>Doctors</small>
</div>
<div class="col-4">
<h3>25+</h3>
<small>Departments</small>
</div>
<div class="col-4">
<h3>24×7</h3>
<small>Emergency</small>
</div>
</div>

</div>

<div class="col-lg-5">

<div class="booking">

<h4 class="mb-3 text-primary">
Book Appointment
</h4>

<form action="bookAppointment" method="post">

<input class="form-control mb-3" name="name" placeholder="Patient Name" required>

<input class="form-control mb-3" name="phone" placeholder="Mobile Number" required>

<select class="form-select mb-3" name="department">
<option>Cardiology</option>
<option>Neurology</option>
<option>Orthopedics</option>
<option>Pediatrics</option>
<option>General Medicine</option>
</select>

<input type="date" class="form-control mb-3" name="date">

<button class="btn btn-primary w-100">
<i class="bi bi-calendar-check"></i>
Book Now
</button>

</form>

</div>

</div>

</div>
</div>
</section>

<!-- Departments -->

<section class="py-5" id="dept">

<div class="container">

<h2 class="section-title">Our Departments</h2>

<div class="row g-4 mt-3">

<div class="col-md-4">
<div class="card card-box p-4 text-center">
<div class="icon-circle">
<i class="bi bi-heart-pulse-fill"></i>
</div>
<h5 class="mt-3">Cardiology</h5>
<p>Heart specialists and advanced cardiac care.</p>
</div>
</div>

<div class="col-md-4">
<div class="card card-box p-4 text-center">
<div class="icon-circle">
<i class="bi bi-activity"></i>
</div>
<h5 class="mt-3">Neurology</h5>
<p>Brain and nervous system treatments.</p>
</div>
</div>

<div class="col-md-4">
<div class="card card-box p-4 text-center">
<div class="icon-circle">
<i class="bi bi-bandaid-fill"></i>
</div>
<h5 class="mt-3">Orthopedics</h5>
<p>Bone, joint and sports injury specialists.</p>
</div>
</div>

</div>
</div>
</section>

<!-- Doctors -->

<section class="pb-5" id="doctor">

<div class="container">

<h2 class="section-title">Our Doctors</h2>

<div class="row g-4 mt-3">

<div class="col-md-4">
<div class="card card-box">
<img src="https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?auto=format&fit=crop&w=600&q=80" class="card-img-top">
<div class="card-body text-center">
<h5>Dr. Padmapriya</h5>
<p class="text-primary">Gynecologist</p>
<p>15+ years experience</p>
</div>
</div>
</div>

<div class="col-md-4">
<div class="card card-box">
<img src="https://images.unsplash.com/photo-1559839734-2b71ea197ec2?auto=format&fit=crop&w=600&q=80" class="card-img-top">
<div class="card-body text-center">
<h5>Dr. Arjun Rao</h5>
<p class="text-primary">Cardiologist</p>
<p>12+ years experience</p>
</div>
</div>
</div>

<div class="col-md-4">
<div class="card card-box">
<img src="https://images.unsplash.com/photo-1594824476967-48c8b964273f?auto=format&fit=crop&w=600&q=80" class="card-img-top">
<div class="card-body text-center">
<h5>Dr. Meera</h5>
<p class="text-primary">Pediatrician</p>
<p>10+ years experience</p>
</div>
</div>
</div>

</div>
</div>
</section>

<!-- Server Info -->

<%
InetAddress inet = InetAddress.getLocalHost();
%>

<section class="pb-5">

<div class="container">

<div class="row g-4">

<div class="col-md-6">
<div class="info-card">
<h5 class="text-primary">
<i class="bi bi-server"></i> Server Information
</h5>
<hr>
<p><b>Server Name:</b> <%= inet.getHostName() %></p>
<p><b>Server IP:</b> <%= inet.getHostAddress() %></p>
</div>
</div>

<div class="col-md-6">
<div class="info-card">
<h5 class="text-primary">
<i class="bi bi-laptop"></i> Client Information
</h5>
<hr>
<p><b>Client IP:</b> <%= request.getRemoteAddr() %></p>
<p><b>Client Host:</b> <%= request.getRemoteHost() %></p>
</div>
</div>

</div>

</div>

</section>

<!-- Footer -->

<footer id="contact">
<div class="container text-center">
<h4><i class="bi bi-hospital-fill"></i> CarePlus Hospital</h4>
<p>Compassion • Care • Commitment</p>
<p>Emergency: +91 98765 43210</p>
<p>© 2026 CarePlus Hospital. All Rights Reserved.</p>
</div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
