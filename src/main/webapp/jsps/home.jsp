<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Hotel Booking Portal</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
      rel="stylesheet">

<style>

:root {
    --primary: #00b4d8;
    --secondary: #0077b6;
    --gold: #ffd166;
    --green: #22c55e;
    --glass: rgba(255,255,255,0.10);
    --border: rgba(255,255,255,0.18);
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

html {
    scroll-behavior: smooth;
}

body {
    min-height: 100vh;
    color: white;
    overflow-x: hidden;

    background:
        radial-gradient(circle at 15% 20%, rgba(0,180,216,.20), transparent 40%),
        radial-gradient(circle at 85% 70%, rgba(255,209,102,.15), transparent 40%),
        linear-gradient(135deg, #020617, #0f172a, #164e63, #0369a1);

    background-size: 200% 200%, 200% 200%, 400% 400%;
    animation: backgroundMove 18s ease infinite;
}

@keyframes backgroundMove {

    0% {
        background-position: 0% 50%, 100% 50%, 0% 50%;
    }

    50% {
        background-position: 100% 50%, 0% 50%, 100% 50%;
    }

    100% {
        background-position: 0% 50%, 100% 50%, 0% 50%;
    }
}

/* NAVBAR */

.navbar-custom {
    background: rgba(0,0,0,.25);
    backdrop-filter: blur(18px);
    border-bottom: 1px solid rgba(255,255,255,.12);
}

.brand {
    font-size: 1.4rem;
    font-weight: 700;
    color: white !important;
}

.brand span {
    color: var(--gold);
}

/* HERO */

.hero {
    padding: 90px 20px 70px;
    text-align: center;
}

.hero .eyebrow {
    color: var(--gold);
    letter-spacing: 3px;
    text-transform: uppercase;
    font-size: .75rem;
    font-weight: 600;
}

.hero h1 {
    font-size: clamp(2.5rem, 6vw, 4.5rem);
    font-weight: 800;
    margin-top: 15px;
    margin-bottom: 18px;
    text-shadow: 0 8px 30px rgba(0,0,0,.4);
}

.hero p {
    font-size: 1.15rem;
    opacity: .85;
}

/* GLASS */

.glass {
    background: var(--glass);
    backdrop-filter: blur(18px);
    -webkit-backdrop-filter: blur(18px);

    border: 1px solid var(--border);
    border-radius: 24px;

    padding: 32px;

    box-shadow: 0 20px 50px rgba(0,0,0,.25);

    transition: .35s ease;
}

.glass:hover {
    transform: translateY(-5px);
    box-shadow: 0 30px 60px rgba(0,0,0,.35);
}

/* SEARCH */

.booking-card {
    margin-top: -20px;
    position: relative;
    z-index: 2;
}

.booking-title {
    font-weight: 700;
    margin-bottom: 25px;
    color: var(--gold);
}

.form-label {
    font-size: 13px;
    opacity: .8;
}

.form-control,
.form-select {
    background: rgba(255,255,255,.10);
    border: 1px solid rgba(255,255,255,.18);
    color: white;
    padding: 13px;
    border-radius: 12px;
}

.form-control:focus,
.form-select:focus {
    background: rgba(255,255,255,.15);
    color: white;
    border-color: var(--primary);
    box-shadow: 0 0 0 3px rgba(0,180,216,.15);
}

.form-control::placeholder {
    color: rgba(255,255,255,.55);
}

.form-select option {
    color: black;
}

.btn-book {
    width: 100%;
    padding: 13px;
    border: none;
    border-radius: 50px;

    background: linear-gradient(
        135deg,
        var(--primary),
        var(--secondary)
    );

    color: white;
    font-weight: 600;

    box-shadow: 0 10px 25px rgba(0,180,216,.30);

    transition: .3s;
}

.btn-book:hover {
    transform: translateY(-2px) scale(1.02);
    color: white;
}

/* SECTION */

.section {
    margin-top: 60px;
}

.section-title {
    text-align: center;
    font-size: 1.8rem;
    font-weight: 700;
    margin-bottom: 30px;
}

/* HOTEL CARDS */

.hotel-card {
    overflow: hidden;
    padding: 0;
}

.hotel-image {
    width: 100%;
    height: 210px;
    object-fit: cover;
}

.hotel-content {
    padding: 22px;
}

.hotel-name {
    font-size: 1.2rem;
    font-weight: 700;
}

.hotel-location {
    font-size: 14px;
    opacity: .7;
    margin: 8px 0;
}

.rating {
    color: var(--gold);
    font-size: 14px;
}

.price {
    font-size: 1.25rem;
    font-weight: 700;
    color: var(--primary);
}

.price span {
    font-size: 12px;
    opacity: .7;
    color: white;
}

/* FEATURES */

.feature {
    text-align: center;
    padding: 25px;
}

.feature-icon {
    font-size: 2.5rem;
    margin-bottom: 15px;
}

.feature h4 {
    font-size: 1.1rem;
}

.feature p {
    opacity: .7;
    font-size: 14px;
}

/* SERVER INFO */

.info {
    padding: 12px 16px;
    background: rgba(255,255,255,.05);
    border-radius: 12px;
    border-left: 3px solid var(--primary);
    margin-bottom: 12px;
}

.info b {
    color: var(--primary);
}

/* FOOTER */

footer {
    margin-top: 80px;
    padding: 30px 20px;

    text-align: center;

    background: rgba(0,0,0,.35);
    border-top: 1px solid rgba(255,255,255,.1);
}

footer p {
    margin: 4px;
    opacity: .7;
    font-size: 14px;
}

/* MOBILE */

@media(max-width:768px) {

    .hero {
        padding: 60px 15px;
    }

    .hero h1 {
        font-size: 2.5rem;
    }

    .glass {
        padding: 22px;
    }

}

</style>

</head>

<body>

<!-- NAVBAR -->

<nav class="navbar navbar-expand-lg navbar-dark navbar-custom">

    <div class="container">

        <a class="navbar-brand brand" href="#">
            🏨 Stay<span>Easy</span>
        </a>

        <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarNav">

            <span class="navbar-toggler-icon"></span>

        </button>

        <div class="collapse navbar-collapse" id="navbarNav">

            <ul class="navbar-nav ms-auto">

                <li class="nav-item">
                    <a class="nav-link" href="#booking">Book</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#hotels">Hotels</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#features">Features</a>
                </li>

            </ul>

        </div>

    </div>

</nav>


<!-- HERO -->

<section class="hero">

    <div class="container">

        <div class="eyebrow">
            Premium Hotel Booking
        </div>

        <h1>
            🏨 Hotel Booking Portal
        </h1>

        <p>
            Find your perfect stay. Book your room. Enjoy your journey.
        </p>

    </div>

</section>


<div class="container">


<!-- BOOKING SEARCH -->

<div class="glass booking-card" id="booking">

    <h3 class="booking-title">
        🔎 Find Your Perfect Stay
    </h3>

    <form action="searchHotel" method="get">

        <div class="row g-3">

            <div class="col-lg-3 col-md-6">

                <label class="form-label">
                    Destination
                </label>

                <input
                    type="text"
                    name="destination"
                    class="form-control"
                    placeholder="City or hotel"
                    required>

            </div>


            <div class="col-lg-2 col-md-6">

                <label class="form-label">
                    Check-in
                </label>

                <input
                    type="date"
                    name="checkIn"
                    class="form-control"
                    required>

            </div>


            <div class="col-lg-2 col-md-6">

                <label class="form-label">
                    Check-out
                </label>

                <input
                    type="date"
                    name="checkOut"
                    class="form-control"
                    required>

            </div>


            <div class="col-lg-2 col-md-6">

                <label class="form-label">
                    Guests
                </label>

                <select name="guests" class="form-select">

                    <option value="1">
                        1 Guest
                    </option>

                    <option value="2" selected>
                        2 Guests
                    </option>

                    <option value="3">
                        3 Guests
                    </option>

                    <option value="4">
                        4 Guests
                    </option>

                    <option value="5">
                        5+ Guests
                    </option>

                </select>

            </div>


            <div class="col-lg-3 col-md-12 d-flex align-items-end">

                <button
                    type="submit"
                    class="btn-book">

                    🔍 Search Hotels

                </button>

            </div>

        </div>

    </form>

</div>


<!-- HOTELS -->

<section class="section" id="hotels">

    <h2 class="section-title">
        ⭐ Popular Hotels
    </h2>


    <div class="row g-4">


        <!-- HOTEL 1 -->

        <div class="col-lg-4 col-md-6">

            <div class="glass hotel-card">

                <img
                    src="https://images.unsplash.com/photo-1566073771259-6a8506099945?auto=format&fit=crop&w=900&q=80"
                    class="hotel-image"
                    alt="Luxury Hotel">

                <div class="hotel-content">

                    <div class="hotel-name">
                        Grand Palace Hotel
                    </div>

                    <div class="hotel-location">
                        📍 Bangalore, India
                    </div>

                    <div class="rating">
                        ★★★★★
                        <span>4.8</span>
                    </div>

                    <hr>

                    <div class="d-flex justify-content-between align-items-center">

                        <div class="price">
                            ₹4,999
                            <span>/ night</span>
                        </div>

                        <a href="booking.jsp"
                           class="btn btn-sm btn-book"
                           style="width:auto;padding:8px 18px;">

                            Book

                        </a>

                    </div>

                </div>

            </div>

        </div>


        <!-- HOTEL 2 -->

        <div class="col-lg-4 col-md-6">

            <div class="glass hotel-card">

                <img
                    src="https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?auto=format&fit=crop&w=900&q=80"
                    class="hotel-image"
                    alt="Luxury Resort">

                <div class="hotel-content">

                    <div class="hotel-name">
                        Ocean View Resort
                    </div>

                    <div class="hotel-location">
                        📍 Goa, India
                    </div>

                    <div class="rating">
                        ★★★★★
                        <span>4.9</span>
                    </div>

                    <hr>

                    <div class="d-flex justify-content-between align-items-center">

                        <div class="price">
                            ₹6,499
                            <span>/ night</span>
                        </div>

                        <a href="booking.jsp"
                           class="btn btn-sm btn-book"
                           style="width:auto;padding:8px 18px;">

                            Book

                        </a>

                    </div>

                </div>

            </div>

        </div>


        <!-- HOTEL 3 -->

        <div class="col-lg-4 col-md-6">

            <div class="glass hotel-card">

                <img
                    src="https://images.unsplash.com/photo-1564501049412-61c2a3083791?auto=format&fit=crop&w=900&q=80"
                    class="hotel-image"
                    alt="City Hotel">

                <div class="hotel-content">

                    <div class="hotel-name">
                        Royal City Hotel
                    </div>

                    <div class="hotel-location">
                        📍 Hyderabad, India
                    </div>

                    <div class="rating">
                        ★★★★☆
                        <span>4.6</span>
                    </div>

                    <hr>

                    <div class="d-flex justify-content-between align-items-center">

                        <div class="price">
                            ₹3,999
                            <span>/ night</span>
                        </div>

                        <a href="booking.jsp"
                           class="btn btn-sm btn-book"
                           style="width:auto;padding:8px 18px;">

                            Book

                        </a>

                    </div>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- FEATURES -->

<section class="section" id="features">

    <h2 class="section-title">
        ✨ Why Book With Us?
    </h2>

    <div class="row g-4">

        <div class="col-lg-4">

            <div class="glass feature">

                <div class="feature-icon">
                    🔒
                </div>

                <h4>
                    Secure Booking
                </h4>

                <p>
                    Your booking information is protected with secure
                    technology.
                </p>

            </div>

        </div>


        <div class="col-lg-4">

            <div class="glass feature">

                <div class="feature-icon">
                    💰
                </div>

                <h4>
                    Best Prices
                </h4>

                <p>
                    Find comfortable hotels at competitive prices.
                </p>

            </div>

        </div>


        <div class="col-lg-4">

            <div class="glass feature">

                <div class="feature-icon">
                    ⭐
                </div>

                <h4>
                    Top Rated Hotels
                </h4>

                <p>
                    Choose from highly rated hotels and resorts.
                </p>

            </div>

        </div>

    </div>

</section>


<!-- SERVER INFORMATION -->

<section class="section">

    <div class="row g-4">


        <div class="col-lg-6">

            <div class="glass">

                <h3 class="booking-title">
                    🌐 Server Information
                </h3>

                <%

                    InetAddress inetAddress =
                        InetAddress.getLocalHost();

                    String ip =
                        inetAddress.getHostAddress();

                %>

                <p class="info">
                    <b>Server Name:</b>
                    <%=inetAddress.getHostName()%>
                </p>

                <p class="info">
                    <b>Server IP:</b>
                    <%=ip%>
                </p>

            </div>

        </div>


        <div class="col-lg-6">

            <div class="glass">

                <h3 class="booking-title">
                    💻 Client Information
                </h3>

                <p class="info">
                    <b>Client IP:</b>
                    <%=request.getRemoteAddr()%>
                </p>

                <p class="info">
                    <b>Client Host:</b>
                    <%=request.getRemoteHost()%>
                </p>

            </div>

        </div>

    </div>

</section>


</div>


<!-- FOOTER -->

<footer>

    <p>
        © 2026 Hotel Booking Portal
    </p>

    <p>
        Find your stay. Make your journey memorable.
    </p>

</footer>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>

</html>
