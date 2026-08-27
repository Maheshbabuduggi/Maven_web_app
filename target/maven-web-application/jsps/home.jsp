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

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
      rel="stylesheet">

<!-- Google Fonts: Fraunces (display) + Poppins (body) -->
<link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600;9..144,700&family=Poppins:wght@300;400;500;600;700&display=swap"
      rel="stylesheet">

<style>

:root {
    --ink: #eef4f2;
    --night: #06201f;
    --night-2: #0a2e2c;
    --teal: #0f4c46;
    --amber: #e0a458;
    --amber-light: #f2c98a;
    --gold: #d4a656;
    --brass: #b98545;
    --glass: rgba(255,255,255,0.06);
    --border: rgba(255,255,255,0.14);
    --stub: rgba(6,32,31,0.55);
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
    color: var(--ink);
    overflow-x: hidden;

    background:
        radial-gradient(circle at 12% 15%, rgba(224,164,88,.14), transparent 42%),
        radial-gradient(circle at 88% 75%, rgba(15,76,70,.35), transparent 45%),
        linear-gradient(160deg, #04140f, #06201f 45%, #0a2e2c 100%);

    background-attachment: fixed;
}

h1, h2, h3, .display {
    font-family: 'Fraunces', serif;
    letter-spacing: .2px;
}

/* NAVBAR */

.navbar-custom {
    background: rgba(6,32,31,.55);
    backdrop-filter: blur(18px);
    border-bottom: 1px solid rgba(255,255,255,.10);
    transition: padding .3s ease, background .3s ease;
    padding-top: 16px;
    padding-bottom: 16px;
}

.navbar-custom.scrolled {
    padding-top: 8px;
    padding-bottom: 8px;
    background: rgba(4,20,15,.85);
}

.brand {
    font-family: 'Fraunces', serif;
    font-size: 1.5rem;
    font-weight: 600;
    color: white !important;
    display: flex;
    align-items: center;
    gap: 10px;
}

.brand i {
    color: var(--amber);
}

.brand span {
    color: var(--amber);
    font-style: italic;
}

.nav-link {
    color: rgba(255,255,255,.8) !important;
    font-size: 14px;
    letter-spacing: .3px;
}

.nav-link:hover {
    color: var(--amber-light) !important;
}

/* HERO */

.hero {
    padding: 100px 20px 80px;
    text-align: center;
    position: relative;
}

.hero .eyebrow {
    color: var(--amber);
    letter-spacing: 4px;
    text-transform: uppercase;
    font-size: .72rem;
    font-weight: 600;
    display: inline-flex;
    align-items: center;
    gap: 10px;
}

.hero .eyebrow::before,
.hero .eyebrow::after {
    content: "";
    width: 28px;
    height: 1px;
    background: var(--amber);
    opacity: .6;
}

.hero h1 {
    font-size: clamp(2.6rem, 6vw, 4.8rem);
    font-weight: 600;
    margin-top: 18px;
    margin-bottom: 18px;
    text-shadow: 0 8px 30px rgba(0,0,0,.4);
    font-style: italic;
}

.hero p {
    font-size: 1.1rem;
    opacity: .78;
    max-width: 560px;
    margin: 0 auto;
    font-weight: 300;
}

/* GLASS */

.glass {
    background: var(--glass);
    backdrop-filter: blur(18px);
    -webkit-backdrop-filter: blur(18px);

    border: 1px solid var(--border);
    border-radius: 20px;

    padding: 32px;

    box-shadow: 0 20px 50px rgba(0,0,0,.30);

    transition: .35s ease;
}

.glass:hover {
    transform: translateY(-4px);
    box-shadow: 0 30px 60px rgba(0,0,0,.4);
}

/* SEARCH */

.booking-card {
    margin-top: -20px;
    position: relative;
    z-index: 2;
}

.booking-title {
    font-weight: 600;
    margin-bottom: 25px;
    color: var(--amber-light);
    display: flex;
    align-items: center;
    gap: 10px;
}

.form-label {
    font-size: 12px;
    letter-spacing: .4px;
    text-transform: uppercase;
    opacity: .65;
}

.form-control,
.form-select {
    background: rgba(255,255,255,.07);
    border: 1px solid rgba(255,255,255,.16);
    color: white;
    padding: 13px;
    border-radius: 10px;
}

.form-control:focus,
.form-select:focus {
    background: rgba(255,255,255,.12);
    color: white;
    border-color: var(--amber);
    box-shadow: 0 0 0 3px rgba(224,164,88,.18);
}

.form-control::placeholder {
    color: rgba(255,255,255,.45);
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
        var(--amber),
        var(--brass)
    );

    color: var(--night);
    font-weight: 600;
    letter-spacing: .3px;

    box-shadow: 0 10px 25px rgba(224,164,88,.28);

    transition: .3s;
}

.btn-book:hover {
    transform: translateY(-2px) scale(1.02);
    color: var(--night);
    box-shadow: 0 14px 30px rgba(224,164,88,.4);
}

/* SECTION */

.section {
    margin-top: 70px;
}

.section-title {
    text-align: center;
    font-size: 1.9rem;
    font-weight: 600;
    margin-bottom: 8px;
    font-style: italic;
}

.section-sub {
    text-align: center;
    opacity: .6;
    font-size: 14px;
    margin-bottom: 34px;
    letter-spacing: .3px;
    text-transform: uppercase;
}

/* HOTEL CARDS — boarding-pass / ticket-stub styling */

.hotel-card {
    overflow: visible;
    padding: 0;
    opacity: 0;
    transform: translateY(24px);
    transition: opacity .6s ease, transform .6s ease;
}

.hotel-card.in-view {
    opacity: 1;
    transform: translateY(0);
}

.hotel-image-wrap {
    position: relative;
    border-radius: 20px 20px 0 0;
    overflow: hidden;
}

.hotel-image {
    width: 100%;
    height: 210px;
    object-fit: cover;
    transition: transform .5s ease;
}

.hotel-card:hover .hotel-image {
    transform: scale(1.06);
}

.hotel-rating-badge {
    position: absolute;
    top: 14px;
    right: 14px;
    background: rgba(6,32,31,.75);
    backdrop-filter: blur(6px);
    color: var(--amber-light);
    padding: 5px 12px;
    border-radius: 50px;
    font-size: 13px;
    font-weight: 600;
    border: 1px solid rgba(255,255,255,.2);
}

.hotel-content {
    padding: 22px 22px 0 22px;
}

.hotel-name {
    font-family: 'Fraunces', serif;
    font-size: 1.25rem;
    font-weight: 600;
}

.hotel-location {
    font-size: 13.5px;
    opacity: .65;
    margin: 8px 0 4px;
    display: flex;
    align-items: center;
    gap: 6px;
}

/* Perforated ticket divider */
.ticket-divider {
    position: relative;
    height: 0;
    border-top: 2px dashed rgba(255,255,255,.22);
    margin: 20px 0 0;
}

.ticket-divider::before,
.ticket-divider::after {
    content: "";
    position: absolute;
    top: -12px;
    width: 24px;
    height: 24px;
    background: radial-gradient(circle at center, transparent 0 60%, transparent 60%);
    border-radius: 50%;
}

.ticket-divider::before {
    left: -22px;
    background: var(--night-2);
    box-shadow: inset 0 0 0 1px rgba(255,255,255,.14);
}

.ticket-divider::after {
    right: -22px;
    background: var(--night-2);
    box-shadow: inset 0 0 0 1px rgba(255,255,255,.14);
}

.hotel-stub {
    padding: 16px 22px 22px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    background: var(--stub);
    border-radius: 0 0 20px 20px;
}

.price {
    font-size: 1.3rem;
    font-weight: 700;
    color: var(--amber-light);
    font-family: 'Fraunces', serif;
}

.price span {
    font-size: 12px;
    opacity: .65;
    color: white;
    font-family: 'Poppins', sans-serif;
    font-weight: 400;
}

.btn-stub {
    padding: 9px 20px;
    border: none;
    border-radius: 50px;
    background: linear-gradient(135deg, var(--amber), var(--brass));
    color: var(--night);
    font-weight: 600;
    font-size: 14px;
    text-decoration: none;
    transition: .3s;
}

.btn-stub:hover {
    transform: translateY(-2px);
    color: var(--night);
}

/* FEATURES */

.feature {
    text-align: center;
    padding: 30px 25px;
}

.feature-icon {
    font-size: 2.1rem;
    margin-bottom: 15px;
    color: var(--amber);
}

.feature h4 {
    font-family: 'Fraunces', serif;
    font-size: 1.15rem;
    font-weight: 600;
}

.feature p {
    opacity: .65;
    font-size: 14px;
    margin-top: 6px;
}

/* SERVER INFO */

.info {
    padding: 12px 16px;
    background: rgba(255,255,255,.05);
    border-radius: 10px;
    border-left: 3px solid var(--amber);
    margin-bottom: 12px;
    font-size: 14px;
}

.info b {
    color: var(--amber-light);
}

/* FOOTER */

footer {
    margin-top: 90px;
    padding: 36px 20px;

    text-align: center;

    background: rgba(4,20,15,.6);
    border-top: 1px solid rgba(255,255,255,.1);
}

footer p {
    margin: 4px;
    opacity: .65;
    font-size: 14px;
}

footer .brand {
    justify-content: center;
    margin-bottom: 10px;
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

<nav class="navbar navbar-expand-lg navbar-dark navbar-custom" id="mainNav">

    <div class="container">

        <a class="navbar-brand brand" href="#">
            <i class="bi bi-building"></i> Stay<span>Easy</span>
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
            Your journey deserves a beautiful stay
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
        <i class="bi bi-search"></i> Find Your Perfect Stay
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

                    <i class="bi bi-search"></i> Search Hotels

                </button>

            </div>

        </div>

    </form>

</div>


<!-- HOTELS -->

<section class="section" id="hotels">

    <h2 class="section-title">
        Popular Hotels
    </h2>

    <p class="section-sub">
        Handpicked stays, ready to book
    </p>


    <div class="row g-4">


        <!-- HOTEL 1 -->

        <div class="col-lg-4 col-md-6">

            <div class="glass hotel-card">

                <div class="hotel-image-wrap">

                    <img
                        src="https://images.unsplash.com/photo-1566073771259-6a8506099945?auto=format&fit=crop&w=900&q=80"
                        class="hotel-image"
                        alt="Luxury Hotel">

                    <div class="hotel-rating-badge">
                        <i class="bi bi-star-fill"></i> 4.8
                    </div>

                </div>

                <div class="hotel-content">

                    <div class="hotel-name">
                        Grand Palace Hotel
                    </div>

                    <div class="hotel-location">
                        <i class="bi bi-geo-alt"></i> Bangalore, India
                    </div>

                    <div class="ticket-divider"></div>

                </div>

                <div class="hotel-stub">

                    <div class="price">
                        ₹4,999
                        <span>/ night</span>
                    </div>

                    <a href="booking.jsp" class="btn-stub">
                        Book <i class="bi bi-arrow-right"></i>
                    </a>

                </div>

            </div>

        </div>


        <!-- HOTEL 2 -->

        <div class="col-lg-4 col-md-6">

            <div class="glass hotel-card">

                <div class="hotel-image-wrap">

                    <img
                        src="https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?auto=format&fit=crop&w=900&q=80"
                        class="hotel-image"
                        alt="Luxury Resort">

                    <div class="hotel-rating-badge">
                        <i class="bi bi-star-fill"></i> 4.9
                    </div>

                </div>

                <div class="hotel-content">

                    <div class="hotel-name">
                        Ocean View Resort
                    </div>

                    <div class="hotel-location">
                        <i class="bi bi-geo-alt"></i> Goa, India
                    </div>

                    <div class="ticket-divider"></div>

                </div>

                <div class="hotel-stub">

                    <div class="price">
                        ₹6,499
                        <span>/ night</span>
                    </div>

                    <a href="booking.jsp" class="btn-stub">
                        Book <i class="bi bi-arrow-right"></i>
                    </a>

                </div>

            </div>

        </div>


        <!-- HOTEL 3 -->

        <div class="col-lg-4 col-md-6">

            <div class="glass hotel-card">

                <div class="hotel-image-wrap">

                    <img
                        src="https://images.unsplash.com/photo-1564501049412-61c2a3083791?auto=format&fit=crop&w=900&q=80"
                        class="hotel-image"
                        alt="City Hotel">

                    <div class="hotel-rating-badge">
                        <i class="bi bi-star-fill"></i> 4.6
                    </div>

                </div>

                <div class="hotel-content">

                    <div class="hotel-name">
                        Royal City Hotel
                    </div>

                    <div class="hotel-location">
                        <i class="bi bi-geo-alt"></i> Hyderabad, India
                    </div>

                    <div class="ticket-divider"></div>

                </div>

                <div class="hotel-stub">

                    <div class="price">
                        ₹3,999
                        <span>/ night</span>
                    </div>

                    <a href="booking.jsp" class="btn-stub">
                        Book <i class="bi bi-arrow-right"></i>
                    </a>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- FEATURES -->

<section class="section" id="features">

    <h2 class="section-title">
        Why Book With Us?
    </h2>

    <p class="section-sub">
        The essentials, done right
    </p>

    <div class="row g-4">

        <div class="col-lg-4">

            <div class="glass feature">

                <div class="feature-icon">
                    <i class="bi bi-shield-lock"></i>
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
                    <i class="bi bi-tags"></i>
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
                    <i class="bi bi-award"></i>
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
                    <i class="bi bi-hdd-network"></i> Server Information
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
                    <i class="bi bi-laptop"></i> Client Information
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

    <a class="navbar-brand brand" href="#">
        <i class="bi bi-building"></i> Stay<span>Easy</span>
    </a>

    <p>
        © 2026 Hotel Booking Portal
    </p>

    <p>
        Find your stay. Make your journey memorable.
    </p>

</footer>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

<script>
    // Shrink navbar on scroll
    const nav = document.getElementById('mainNav');
    window.addEventListener('scroll', () => {
        if (window.scrollY > 40) {
            nav.classList.add('scrolled');
        } else {
            nav.classList.remove('scrolled');
        }
    });

    // Reveal hotel cards as they enter the viewport
    const cards = document.querySelectorAll('.hotel-card');
    const observer = new IntersectionObserver((entries) => {
        entries.forEach((entry, i) => {
            if (entry.isIntersecting) {
                setTimeout(() => entry.target.classList.add('in-view'), i * 80);
                observer.unobserve(entry.target);
            }
        });
    }, { threshold: 0.15 });
    cards.forEach(card => observer.observe(card));
</script>

</body>

</html>
