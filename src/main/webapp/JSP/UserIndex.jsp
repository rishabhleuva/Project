<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jdelivery	</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/UserIndex.css">
</head>	
<body>
    <!-- Navbar -->
    <nav class="navbar">
        <div class="logo">Jdelivery</div>
        <ul class="nav-links">
            <li><a href="#">Log in</a></li>
            <li><a href="#">Sign up</a></li>
        </ul>
    </nav>

    <!-- Hero Section -->
    <section class="hero">
        <h1>Order food to your doorstep</h1>
        <div class="search-bar">
            <input type="text" id="location" placeholder="Enter your location">
            <input type="text" id="search" placeholder="Search for food or restaurant">
            <button onclick="searchRestaurant()">Search</button>
        </div>
    </section>

    <!-- Category Section -->
    <section class="categories">
        <h2>What would you like to order?</h2>
        <div id="category-list" class="category-list"></div>
    </section>

    <!-- Top Brands Section -->
    <section class="brands">
        <h2>Top Brands Near You</h2>
        <div id="brand-list" class="brand-list"></div>
    </section>

    <!-- Restaurants Near User Section -->
    <section class="restaurants">
        <h2>Restaurants Near You</h2>
        <div id="restaurant-list" class="restaurant-list"></div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="footer-container">
            <div class="footer-contact">
                <strong>Contact Us:</strong>
                <p>1800-123-456 | zomatoclone@email.com</p>
                <p>123 Main Road, Delhi, India</p>
            </div>
            <div class="footer-links">
                <strong>Quick Links</strong>
                <p><a href="#">Terms</a> | <a href="#">Privacy</a> | <a href="#">Help</a></p>
            </div>
        </div>
        <div class="footer-bottom">
            Made with ❤️ for educational purposes | © 2025 Zomato Clone
        </div>
    </footer>
    <script src="${pageContext.request.contextPath}/JS/UserIndex.js"></script>
</body>
</html>         