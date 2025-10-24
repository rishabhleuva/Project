<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>JDelivery - User Registration</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/UserRegister.css"/>
</head>
<body>
  <div class="register-bg d-flex justify-content-center align-items-center min-vh-100">
    <div class="card register-card p-4 shadow">
      <h2 class="text-center mb-3 text-danger">JDelivery Signup</h2>
      <form id="register-form" action="${pageContext.request.contextPath}/UserRegistration" method="post">
        <div class="mb-3">
          <label for="name" class="form-label">Full Name</label>
          <input type="text" class="form-control" id="name" name="name" placeholder="Enter your full name" required />
        </div>
        <div class="mb-3">
          <label for="email" class="form-label">Email Address</label>
          <input type="email" class="form-control" id="email" name="email" placeholder="you@email.com" required />
        </div>
        <div class="mb-3">
          <label for="password" class="form-label">Password</label>
          <input type="password" class="form-control" id="password" name="password" placeholder="Create a password" required minlength="6" />
        </div>
        <div class="mb-3">
          <label for="confirm-password" class="form-label">Confirm Password</label>
          <input type="password" class="form-control" id="confirm-password" placeholder="Re-type your password" required />
        </div>
        <button type="submit" class="btn btn-danger w-100">Sign Up</button>
      </form>
      <div class="text-center mt-3">
        <span>Already have an account?</span>
        <a href="user-login.html" class="link-danger">Login</a>
      </div>
    </div>
  </div>
  <script src="${pageContext.request.contextPath}/JS/UserRegister.js"></script>
</body>
</html>
