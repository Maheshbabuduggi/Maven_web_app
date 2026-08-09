<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mahesh DevOps AWS Portal</title>

<link rel="icon" href="images/kkfunda.jpg">

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">

<style>

:root{
  --accent-cyan:#00d4ff;
  --accent-gold:#ffd700;
  --accent-green:#22c55e;
  --glass-bg:rgba(255,255,255,.08);
  --glass-border:rgba(255,255,255,.16);
}

*{
  margin:0;
  padding:0;
  box-sizing:border-box;
  font-family:'Poppins',sans-serif;
}

html{
  scroll-behavior:smooth;
}

body{
  background:
    radial-gradient(circle at 15% 20%, rgba(0,212,255,.15), transparent 45%),
    radial-gradient(circle at 85% 75%, rgba(255,215,0,.10), transparent 45%),
    linear-gradient(135deg,#020617,#0f172a,#1e3a8a,#1d4ed8);
  background-size:200% 200%, 200% 200%, 400% 400%;
  animation:gradient 16s ease infinite;
  min-height:100vh;
  color:white;
  overflow-x:hidden;
}

@keyframes gradient{
  0%{background-position:0% 50%, 100% 50%, 0% 50%;}
  50%{background-position:100% 50%, 0% 50%, 100% 50%;}
  100%{background-position:0% 50%, 100% 50%, 0% 50%;}
}

@keyframes floatUp{
  from{opacity:0; transform:translateY(24px);}
  to{opacity:1; transform:translateY(0);}
}

@keyframes pulseGlow{
  0%,100%{box-shadow:0 0 0 0 rgba(34,197,94,.5);}
  50%{box-shadow:0 0 0 10px rgba(34,197,94,0);}
}

.container{
  max-width:1140px;
}

/* HERO */
.hero{
  padding:90px 20px 60px;
  text-align:center;
  animation:floatUp .8s ease both;
}

.hero .eyebrow{
  display:inline-block;
  letter-spacing:3px;
  text-transform:uppercase;
  font-size:.75rem;
  font-weight:600;
  color:var(--accent-cyan);
  margin-bottom:14px;
  opacity:.85;
}

.hero h1{
  font-size:clamp(2.1rem, 5vw, 3.4rem);
  font-weight:800;
  margin-bottom:16px;
  letter-spacing:-.5px;
  text-shadow:0 4px 30px rgba(0,0,0,.35);
}

.hero p{
  font-size:1.15rem;
  opacity:.85;
  font-weight:300;
  letter-spacing:.5px;
  margin-bottom:22px;
}

.badge-devops{
  background:linear-gradient(135deg,#22c55e,#16a34a);
  padding:9px 22px;
  border-radius:30px;
  font-size:14px;
  font-weight:600;
  display:inline-flex;
  align-items:center;
  gap:8px;
  animation:pulseGlow 2.4s infinite;
}

.badge-devops::before{
  content:'';
  width:8px;
  height:8px;
  background:white;
  border-radius:50%;
  display:inline-block;
}

/* GLASS CARDS */
.glass{
  background:var(--glass-bg);
  backdrop-filter:blur(18px);
  -webkit-backdrop-filter:blur(18px);
  border:1px solid var(--glass-border);
  border-radius:22px;
  padding:34px;
  margin-bottom:28px;
  transition:.35s cubic-bezier(.2,.8,.2,1);
  position:relative;
  overflow:hidden;
  animation:floatUp .7s ease both;
}

.glass::before{
  content:'';
  position:absolute;
  top:0; left:0; right:0;
  height:1px;
  background:linear-gradient(90deg, transparent, rgba(255,255,255,.5), transparent);
}

.glass:hover{
  transform:translateY(-8px);
  box-shadow:0 24px 50px rgba(0,0,0,.4);
  border-color:rgba(255,255,255,.32);
}

.section-title{
  font-weight:600;
  margin-bottom:22px;
  color:var(--accent-gold);
  display:flex;
  align-items:center;
  gap:10px;
  font-size:1.25rem;
}

.info{
  font-size:16px;
  margin-bottom:14px;
  padding:12px 16px;
  background:rgba(255,255,255,.05);
  border-radius:12px;
  border-left:3px solid var(--accent-cyan);
  word-break:break-word;
}

.info b{
  color:var(--accent-cyan);
  font-weight:500;
  margin-right:6px;
}

/* PROFILE */
.profile-card{
  text-align:center;
}

.logo{
  width:150px;
  height:150px;
  border-radius:50%;
  border:4px solid rgba(255,255,255,.5);
  box-shadow:0 10px 40px rgba(0,0,0,.5), 0 0 0 8px rgba(0,212,255,.12);
  object-fit:cover;
  transition:.4s;
}

.logo:hover{
  transform:scale(1.05) rotate(2deg);
}

.profile-card h2{
  margin-top:22px;
  font-weight:700;
  font-size:1.8rem;
}

.profile-card .tagline{
  opacity:.75;
  font-weight:300;
  letter-spacing:1px;
  margin-bottom:6px;
}

.profile-card hr{
  border-color:rgba(255,255,255,.15);
  margin:22px auto;
  width:60%;
}

.contact-row{
  display:flex;
  flex-wrap:wrap;
  justify-content:center;
  gap:14px;
  margin:18px 0 6px;
}

.contact-pill{
  background:rgba(255,255,255,.07);
  border:1px solid rgba(255,255,255,.14);
  padding:9px 18px;
  border-radius:30px;
  font-size:14px;
  transition:.3s;
}

.contact-pill:hover{
  background:rgba(255,255,255,.14);
  transform:translateY(-2px);
}

.btn-custom{
  background:linear-gradient(135deg,#00d4ff,#0284c7);
  color:white;
  font-weight:600;
  border:none;
  padding:13px 32px;
  border-radius:50px;
  transition:.3s;
  box-shadow:0 8px 24px rgba(0,212,255,.3);
}

.btn-custom:hover{
  background:linear-gradient(135deg,#00a3cc,#0369a1);
  transform:scale(1.05);
  box-shadow:0 10px 30px rgba(0,212,255,.45);
  color:white;
}

/* SERVICES */
.services-card{
  text-align:center;
  background:linear-gradient(135deg, rgba(0,212,255,.08), rgba(255,255,255,.06));
}

.services-card p{
  opacity:.85;
  margin-bottom:22px;
}

.btn-success{
  background:linear-gradient(135deg,#22c55e,#15803d) !important;
  border:none !important;
  font-weight:600;
  padding:13px 34px !important;
  border-radius:50px !important;
  box-shadow:0 8px 24px rgba(34,197,94,.3);
  transition:.3s !important;
}

.btn-success:hover{
  transform:scale(1.05);
  box-shadow:0 10px 30px rgba(34,197,94,.45);
}

/* FOOTER */
footer{
  padding:28px 20px;
  text-align:center;
  margin-top:50px;
  background:rgba(0,0,0,.35);
  border-top:1px solid rgba(255,255,255,.1);
}

footer p{
  font-size:14px;
  opacity:.8;
  margin-bottom:4px;
}

footer a{
  color:var(--accent-gold);
  text-decoration:none;
  font-weight:600;
  transition:.2s;
}

footer a:hover{
  color:var(--accent-cyan);
}

@media (max-width:768px){
  .hero{padding:60px 16px 40px;}
  .glass{padding:24px;}
}

</style>

</head>

<body>

<div class="hero">
  <span class="eyebrow">AWS &middot; DevOps &middot; Cloud Engineering</span>
  <h1>🚀 Mahesh DevOps AWS Portal</h1>
  <p>CI/CD &nbsp;•&nbsp; Docker &nbsp;•&nbsp; Kubernetes &nbsp;•&nbsp; AWS &nbsp;•&nbsp; Jenkins &nbsp;•&nbsp; Terraform</p>
  <span class="badge-devops">Production Ready</span>
</div>

<div class="container">

  <div class="row">

    <div class="col-lg-6">
      <div class="glass" style="animation-delay:.05s">
        <h3 class="section-title">🌐 Server Information</h3>

        <%
          InetAddress inetAddress = InetAddress.getLocalHost();
          String ip = inetAddress.getHostAddress();
        %>

        <p class="info"><b>Server Name :</b><%=inetAddress.getHostName()%></p>
        <p class="info"><b>Server IP :</b><%=ip%></p>
      </div>
    </div>

    <div class="col-lg-6">
      <div class="glass" style="animation-delay:.15s">
        <h3 class="section-title">💻 Client Information</h3>

        <p class="info"><b>Client IP :</b><%=request.getRemoteAddr()%></p>
        <p class="info"><b>Client Host :</b><%=request.getRemoteHost()%></p>
      </div>
    </div>

  </div>

  <div class="glass profile-card" style="animation-delay:.25s">

    <img src="images/kkfunda.jpg" class="logo mb-3">

    <h2>Mahesh Duggi</h2>
    <p class="tagline">Training • Development • Consulting</p>

    <hr>

    <div class="contact-row">
      <span class="contact-pill">📍 Marathahalli, Bangalore</span>
      <span class="contact-pill">📞 +91-9676831734</span>
      <span class="contact-pill">📧 kkeducationblr@gmail.com</span>
    </div>

    <a href="mailto:kkeducationblr@gmail.com" class="btn btn-custom mt-4">
      Contact Us
    </a>

  </div>

  <div class="glass services-card" style="animation-delay:.35s">

    <h2 class="section-title" style="justify-content:center;">⚙️ Employee Services</h2>

    <p>Access Employee Management Portal</p>

    <a href="services/employee/getEmployeeDetails" class="btn btn-success btn-lg">
      Get Employee Details
    </a>

  </div>

</div>

<footer>
  <p>© 2026 Mahesh DevOps AWS Portal</p>
  <p>Powered by <a href="https://google.com">Mahesh</a></p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
