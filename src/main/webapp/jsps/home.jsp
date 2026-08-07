<style>

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{

    min-height:100vh;

    background:
    radial-gradient(circle at top left,#5b21b6,#1e3a8a 30%,#0f172a 80%);

    overflow-x:hidden;

    color:white;

}

/* Animated circles */

body::before,
body::after{

content:"";
position:fixed;
width:350px;
height:350px;
border-radius:50%;
filter:blur(80px);
z-index:-1;

}

body::before{

background:#4f46e5;
top:-100px;
left:-100px;

}

body::after{

background:#06b6d4;
bottom:-100px;
right:-100px;

}

.hero{

padding:60px 20px;
text-align:center;

}

.hero h1{

font-size:3.3rem;
font-weight:700;
text-shadow:0 0 20px rgba(255,255,255,.4);

}

.hero p{

font-size:20px;
opacity:.9;

}

.glass{

background:rgba(255,255,255,.10);

backdrop-filter:blur(30px);

-webkit-backdrop-filter:blur(30px);

border:1px solid rgba(255,255,255,.25);

border-radius:30px;

box-shadow:

0 8px 32px rgba(0,0,0,.35),

inset 0 1px 1px rgba(255,255,255,.3);

padding:35px;

margin-bottom:35px;

transition:.4s;

}

.glass:hover{

transform:translateY(-10px) scale(1.02);

box-shadow:

0 25px 60px rgba(0,0,0,.45),

0 0 35px rgba(37,99,235,.4);

}

.section-title{

font-size:28px;

font-weight:600;

margin-bottom:20px;

color:#ffffff;

}

.info{

font-size:18px;

padding:10px 0;

border-bottom:1px solid rgba(255,255,255,.1);

}

.info:last-child{

border-bottom:none;

}

.logo{

width:150px;

height:150px;

border-radius:50%;

border:4px solid rgba(255,255,255,.4);

box-shadow:

0 0 25px rgba(255,255,255,.4);

object-fit:cover;

}

.btn-glass{

background:rgba(255,255,255,.15);

border:1px solid rgba(255,255,255,.25);

color:white;

padding:14px 30px;

border-radius:50px;

font-weight:600;

transition:.3s;

backdrop-filter:blur(15px);

}

.btn-glass:hover{

background:#2563eb;

color:white;

transform:scale(1.05);

box-shadow:0 0 20px #2563eb;

}

.badge-status{

display:inline-block;

padding:10px 22px;

border-radius:50px;

background:rgba(16,185,129,.2);

border:1px solid rgba(16,185,129,.5);

color:#7CFFB2;

margin-top:15px;

}

footer{

margin-top:50px;

padding:25px;

background:rgba(255,255,255,.08);

backdrop-filter:blur(20px);

text-align:center;

}

footer a{

color:#8fd3ff;

text-decoration:none;

}

</style>
<div class="hero">

<h1>🚀 MIE DevOps AWS Portal</h1>

<p>CI/CD • Docker • Kubernetes • Jenkins • AWS • Terraform</p>

<div class="badge-status">
Production Environment
</div>

</div>

<div class="glass text-center">

<img src="images/kkfunda.jpg" class="logo">

<h2 class="mt-4">MIE</h2>

<p class="mb-3">
Cloud Engineering | DevOps | Automation
</p>

<hr>

<p><b>📍 Location</b><br>Bangalore, India</p>

<p><b>📧 Email</b><br>mie@example.com</p>

<p><b>📞 Phone</b><br>+91 XXXXX XXXXX</p>

<a href="mailto:mie@example.com"
class="btn btn-glass mt-3">

Contact MIE

</a>

</div>
<div class="glass text-center">

<h2 class="section-title">
⚙ Employee Portal
</h2>

<p>
Secure access to employee information.
</p>

<a href="services/employee/getEmployeeDetails"
class="btn btn-glass">

View Employee Details

</a>

</div>
