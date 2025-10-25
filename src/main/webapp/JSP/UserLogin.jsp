<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>JDelivery - User Login</title>
  <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
  />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/UserLogin.css" />
</head>
<body>
  <div
    class="login-bg d-flex justify-content-center align-items-center min-vh-100"
  >
    <div class="card login-card p-4 shadow">
      <h2 class="text-center mb-4 text-danger">JDelivery Sign In</h2>
      <form id="login-form" method="post" action="${pageContext.request.contextPath}/UserLogin">
        <div class="mb-3">
          <label for="email" class="form-label">Email Address</label>
          <input
            type="email"
            class="form-control"
            id="email"
            name="email"
            placeholder="you@email.com"
            required
          />
        </div>
        <div class="mb-3">
          <label for="password" class="form-label">Password</label>
          <input
            type="password"
            class="form-control"
            id="password"
            name="password"
            placeholder="Enter your password"
            required
            minlength="6"
          />
        </div>
        <button type="submit" class="btn btn-danger w-100">Login</button>
      </form>
      <div class="text-center mt-3">
        <span>Don't have an account? </span
        ><a href="user-register.html" class="link-danger">Sign Up</a>
      </div>
    </div>
  </div>
</body>
</html>
