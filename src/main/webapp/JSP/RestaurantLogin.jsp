<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Restaurant Partner Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/RestaurantLogin.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
    <div class="login-container">
        <div class="login-logo">JDelivery</div>
        <h2>Restaurant Partner Login</h2>
        <form action="LoginAction" method="post">
            <label for="username">Email or Username</label>
            <input type="text" id="username" name="username" required autofocus>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>

            <button class="login-btn" type="submit">Login</button>
        </form>
        <div class="login-footer">
            New to Zomato Partner? <a href="RestaurantRegister.jsp">Register here</a>
        </div>
    </div>
</body>
</html>
