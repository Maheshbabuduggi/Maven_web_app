<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Mahesh DevOps AWS Portal</title>

<link rel="icon" href="images/kkfunda.jpg">

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{

background:linear-gradient(135deg,#0f172a,#1e3a8a,#2563eb);
background-size:400% 400%;
animation:gradient 12s ease infinite;
min-height:100vh;
color:white;

}

@keyframes gradient{

0%{background-position:0% 50%;}
50%{background-position:100% 50%;}
100%{background-position:0% 50%;}

}

.hero{

padding:70px 20px;
text-align:center;

}

.hero h1{

font-size:3rem;
font-weight:700;
margin-bottom:15px;

}

.hero p{

font-size:1.2rem;
opacity:.9;

}

.glass{

background:rgba(255,255,255,.12);
backdrop-filter:blur(15px);
border:1px solid rgba(255,255,255,.2);
border-radius:20px;
padding:30px;
margin-bottom:30px;
transition:.4s;

}

.glass:hover{

transform:translateY(-8px);
box-shadow:0 20px 40px rgba(0,0,0,.35);

}

.section-title{

font-weight:600;
margin-bottom:20px;
color:#FFD700;

}

.info{

font-size:18px;
margin-bottom:12px;

}

.logo{

width:140px;
height:140px;
border-radius:50%;
border:4px solid white;
box-shadow:0 10px 30px rgba(0,0,0,.4);

}

.btn-custom{

background:#00d4ff;
color:white;
font-weight:600;
border:none;
padding:12px 25px;
border-radius:50px;
transition:.3s;

}

.btn-custom:hover{

background:#00a3cc;
transform:scale(1.05);

}

footer{

padding:20px;
text-align:center;
margin-top:40px;
background:rgba(0,0,0,.3);

}

footer a{

color:#FFD700;
text-decoration:none;

}

.badge-devops{

background:#22c55e;
padding:8px 18px;
border-radius:30px;
font-size:14px;

}

</style>

</head>

<body>

<div class="hero">

<h1>🚀 Mahesh DevOps AWS Portal Aug 9th 🚀</h1>

<p>CI/CD • Docker • Kubernetes • AWS • Jenkins • Terraform</p>

<span class="badge-devops">
Production Ready
</span>

</div>

<div class="container">

<div class="row">

<div class="col-lg-6">

<div class="glass">

<h3 class="section-title">
🌐 Server Information
</h3>

<%

InetAddress inetAddress=InetAddress.getLocalHost();

String ip=inetAddress.getHostAddress();

%>

<p class="info">
<b>Server Name :</b>
<%=inetAddress.getHostName()%>
</p>

<p class="info">
<b>Server IP :</b>
<%=ip%>
</p>

</div>

</div>

<div class="col-lg-6">

<div class="glass">

<h3 class="section-title">
💻 Client Information
</h3>

<p class="info">
<b>Client IP :</b>
<%=request.getRemoteAddr()%>
</p>

<p class="info">
<b>Client Host :</b>
<%=request.getRemoteHost()%>
</p>

</div>

</div>

</div>

<div class="glass text-center">

<img src="images/kkfunda.jpg" class="logo mb-4">

<h2>Mahesh Duggi</h2>

<p>Training • Development • Consulting</p>

<hr style="border-color:white;">

<p><b>📍 Address :</b> Marathahalli, Bangalore</p>

<p><b>📞 Phone :</b> +91-9676831734</p>

<p><b>📧 Email :</b> kkeducationblr@gmail.com</p>

<a href="mailto:kkeducationblr@gmail.com"
class="btn btn-custom mt-3">
Contact Us
</a>

</div>

<div class="glass text-center">

<h2 class="section-title">
⚙️ Employee Services
</h2>

<p>
Access Employee Management Portal
</p>

<a href="services/employee/getEmployeeDetails"
class="btn btn-success btn-lg">
Get Employee Details
</a>

</div>

</div>

<footer>

<p>

© 2026 Mahesh DevOps AWS Portal

</p>

<p>

Powered by
<a href="https://google.com">
Mahesh
</a>

</p>

</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
