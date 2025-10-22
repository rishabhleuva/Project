<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/UserIndex.css">
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar">
        <div class="logo">Zomato</div>
        <ul class="nav-links">
            <li><a href="#">Add Restaurant</a></li>
            <li><a href="#">Log in</a></li>
            <li><a href="#">Sign up</a></li>
        </ul>
    </nav>

    <!-- Hero Section -->
    <section class="hero">
        <h1>Discover the best food & drinks in your city</h1>
        <div class="search-bar">
            <input type="text" id="location" placeholder="📍 Enter your location">
            <input type="text" id="search" placeholder="🔍 Search for restaurant, cuisine or dish...">
            <button onclick="searchRestaurant()">Search</button>
        </div>
    </section>

    <!-- Food Categories -->
    <section class="categories">
        <div class="category-card">
            <img src="https://cdn-icons-png.flaticon.com/512/1046/1046784.png" alt="Dining">
            <h3>Dining Out</h3>
        </div>
        <div class="category-card">
            <img src="https://cdn-icons-png.flaticon.com/512/3075/3075977.png" alt="Delivery">
            <h3>Delivery</h3>
        </div>
        <div class="category-card">
            <img src="https://cdn-icons-png.flaticon.com/512/2921/2921822.png" alt="Nightlife">
            <h3>Nightlife</h3>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>Made with ❤️ for educational purposes | © 2025 Zomato Clone</p>
    </footer>

    <script src="${pageContext.request.contextPath}/JS/UserIndex.js"></script>

</body>
</html>