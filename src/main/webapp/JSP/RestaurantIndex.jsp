<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>JDelivery - Restaurant Panel</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/RestaurantIndex.css" />
</head>
<body>
  <div class="d-flex" id="wrapper">
    <!-- Sidebar -->
    <nav class="border-end bg-white" id="sidebar-wrapper">
      <div class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom">
        Restaurant Panel
      </div>
      <div class="list-group list-group-flush my-3">
        <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"
           onclick="showSection('dashboard')">Dashboard</a>
        <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"
           onclick="showSection('menu')">Manage Menu</a>
        <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"
           onclick="showSection('orders')">Orders</a>
        <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"
           onclick="showSection('earnings')">Earnings</a>
        <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"
           onclick="showSection('reviews')">Reviews</a>
        <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"
           onclick="showSection('notifications')">Notifications</a>
        <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"
           onclick="showSection('profile')">Profile</a>
      </div>
    </nav>

    <!-- Page Content -->
    <div id="page-content-wrapper" class="flex-grow-1">
      <!-- Top Nav -->
      <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
        <div class="container-fluid">
          <span class="navbar-brand mb-0 h1">JDelivery Restaurant</span>
          <div>
            <button class="btn btn-danger">Logout</button>
          </div>
        </div>
      </nav>

      <!-- Dashboard -->
      <div class="container-fluid p-4" id="dashboard-section">
        <h2>Dashboard</h2>
        <div class="row g-4 my-3">
          <div class="col-md-3"><div class="card shadow-sm p-3"><h6>Total Orders</h6><h3 id="totOrders">51</h3></div></div>
          <div class="col-md-3"><div class="card shadow-sm p-3"><h6>Today's Orders</h6><h3 id="dayOrders">8</h3></div></div>
          <div class="col-md-3"><div class="card shadow-sm p-3"><h6>Earnings (This Month)</h6><h3 id="earningsMonth">$1900</h3></div></div>
          <div class="col-md-3"><div class="card shadow-sm p-3"><h6>Avg. Rating</h6><h3 id="avgRating">4.3 ★</h3></div></div>
        </div>
        <canvas id="ordersChart" style="max-height: 300px;"></canvas>
      </div>

      <!-- Menu Management -->
      <div class="container-fluid p-4 d-none" id="menu-section">
        <h2>Manage Menu</h2>
        <form id="add-dish-form" class="mb-4">
          <div class="row">
            <div class="col-sm-3 mb-2">
              <input type="text" class="form-control" placeholder="Dish Name" id="dishName" required>
            </div>
            <div class="col-sm-3 mb-2">
              <input type="number" class="form-control" placeholder="Price" id="dishPrice" required>
            </div>
            <div class="col-sm-3 mb-2">
              <select class="form-select" id="dishCategory">
                <option>Main Course</option>
                <option>Snacks</option>
                <option>Desserts</option>
                <option>Beverages</option>
              </select>
            </div>
            <div class="col-sm-3 mb-2">
              <button type="submit" class="btn btn-success w-100">Add Dish</button>
            </div>
          </div>
        </form>
        <table class="table table-hover">
          <thead><tr><th>Name</th><th>Category</th><th>Price</th><th>Action</th></tr></thead>
          <tbody id="menuTable"></tbody>
        </table>
      </div>

      <!-- Orders -->
      <div class="container-fluid p-4 d-none" id="orders-section">
        <h2>Orders</h2>
        <table class="table table-hover">
          <thead><tr><th>Order ID</th><th>Customer</th><th>Dish</th><th>Status</th><th>Action</th></tr></thead>
          <tbody id="ordersTable"></tbody>
        </table>
      </div>

      <!-- Earnings -->
      <div class="container-fluid p-4 d-none" id="earnings-section">
        <h2>Earnings</h2>
        <table class="table">
          <thead><tr><th>Date</th><th>Order ID</th><th>Amount</th></tr></thead>
          <tbody id="earningsTable"></tbody>
        </table>
        <canvas id="earningsChart" style="max-height: 300px;"></canvas>
      </div>

      <!-- Reviews -->
      <div class="container-fluid p-4 d-none" id="reviews-section">
        <h2>Reviews</h2>
        <ul id="reviewsList" class="list-group"></ul>
      </div>

      <!-- Notifications -->
      <div class="container-fluid p-4 d-none" id="notifications-section">
        <h2>Notifications</h2>
        <ul id="notificationsList" class="list-group"></ul>
      </div>

      <!-- Profile -->
      <div class="container-fluid p-4 d-none" id="profile-section">
        <h2>Profile</h2>
        <form id="profile-form">
          <div class="mb-3">
            <label for="restName" class="form-label">Restaurant Name</label>
            <input type="text" class="form-control" id="restName" value="Curry House" />
          </div>
          <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" value="owner@curry.com" disabled />
          </div>
          <div class="mb-3">
            <label for="phone" class="form-label">Contact Number</label>
            <input type="text" class="form-control" id="phone" value="+91234567890" />
          </div>
          <div class="mb-3">
            <label for="address" class="form-label">Address</label>
            <input type="text" class="form-control" id="address" value="123 Main Road, Delhi" />
          </div>
          <button type="submit" class="btn btn-primary">Update Profile</button>
        </form>
      </div>
    </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src="${pageContext.request.contextPath}/JS/RestaurantIndex.js"></script>
</body>
</html>
