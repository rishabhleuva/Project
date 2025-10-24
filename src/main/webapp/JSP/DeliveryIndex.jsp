<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>JDelivery - Delivery Partner Panel</title>
  <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
  />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/DeliveryIndex.css" />
</head>
<body>
  <div class="d-flex" id="wrapper">
    <!-- Sidebar -->
    <nav class="border-end bg-white" id="sidebar-wrapper">
      <div
        class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom"
      >
        Delivery Panel
      </div>
      <div class="list-group list-group-flush my-3">
        <a
          href="#"
          class="list-group-item list-group-item-action bg-transparent second-text fw-bold"
          onclick="showSection('dashboard')"
          >Dashboard</a
        >
        <a
          href="#"
          class="list-group-item list-group-item-action bg-transparent second-text fw-bold"
          onclick="showSection('orders')"
          >Available Orders</a
        >
        <a
          href="#"
          class="list-group-item list-group-item-action bg-transparent second-text fw-bold"
          onclick="showSection('active')"
          >Active Deliveries</a
        >
        <a
          href="#"
          class="list-group-item list-group-item-action bg-transparent second-text fw-bold"
          onclick="showSection('earnings')"
          >Earnings History</a
        >
        <a
          href="#"
          class="list-group-item list-group-item-action bg-transparent second-text fw-bold"
          onclick="showSection('notifications')"
          >Notifications</a
        >
        <a
          href="#"
          class="list-group-item list-group-item-action bg-transparent second-text fw-bold"
          onclick="showSection('profile')"
          >Profile</a
        >
      </div>
    </nav>

    <!-- Page Content -->
    <div id="page-content-wrapper" class="flex-grow-1">
      <!-- Top navbar -->
      <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
        <div class="container-fluid">
          <span class="navbar-brand mb-0 h1">JDelivery Partner</span>
          <div>
            <button class="btn btn-danger">Logout</button>
          </div>
        </div>
      </nav>

      <!-- Sections -->

      <!-- Dashboard -->
      <div class="container-fluid p-4" id="dashboard-section">
        <h2>Dashboard</h2>
        <div class="row g-4 my-3">
          <div class="col-md-3">
            <div class="card shadow-sm p-3">
              <h6>Total Deliveries</h6>
              <h3 id="totalDeliveries">12</h3>
            </div>
          </div>
          <div class="col-md-3">
            <div class="card shadow-sm p-3">
              <h6>Active Deliveries</h6>
              <h3 id="activeDeliveries">2</h3>
            </div>
          </div>
          <div class="col-md-3">
            <div class="card shadow-sm p-3">
              <h6>This Week Earnings</h6>
              <h3 id="earningsWeek">$340</h3>
            </div>
          </div>
          <div class="col-md-3">
            <div class="card shadow-sm p-3">
              <h6>Average Rating</h6>
              <h3 id="avgRating">4.5 ★</h3>
            </div>
          </div>
        </div>
        <canvas id="deliveryChart" style="max-height: 300px;"></canvas>
      </div>

      <!-- Available Orders -->
      <div class="container-fluid p-4 d-none" id="orders-section">
        <h2>Available Orders</h2>
        <div id="available-orders" class="list-group">
          <!-- Dynamically filled -->
        </div>
      </div>

      <!-- Active Deliveries -->
      <div class="container-fluid p-4 d-none" id="active-section">
        <h2>Active Deliveries</h2>
        <div id="active-deliveries" class="list-group">
          <!-- Dynamically filled -->
        </div>
      </div>

      <!-- Earnings History -->
      <div class="container-fluid p-4 d-none" id="earnings-section">
        <h2>Earnings History</h2>
        <table class="table">
          <thead>
            <tr>
              <th>Order ID</th>
              <th>Date</th>
              <th>Amount</th>
              <th>Commission</th>
            </tr>
          </thead>
          <tbody id="earnings-table"></tbody>
        </table>
        <canvas id="earningsChart" style="max-height: 300px;"></canvas>
      </div>

      <!-- Notifications -->
      <div class="container-fluid p-4 d-none" id="notifications-section">
        <h2>Notifications</h2>
        <ul id="notifications-list" class="list-group"></ul>
      </div>

      <!-- Profile -->
      <div class="container-fluid p-4 d-none" id="profile-section">
        <h2>Profile</h2>
        <form id="profile-form">
          <div class="mb-3">
            <label for="name" class="form-label">Name</label>
            <input type="text" class="form-control" id="name" value="John Doe" />
          </div>
          <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input
              type="email"
              class="form-control"
              id="email"
              value="john.doe@email.com"
              disabled
            />
          </div>
          <div class="mb-3">
            <label for="phone" class="form-label">Contact Number</label>
            <input type="text" class="form-control" id="phone" value="+1234567890" />
          </div>
          <div class="mb-3">
            <label for="vehicle" class="form-label">Vehicle Type</label>
            <input
              type="text"
              class="form-control"
              id="vehicle"
              value="Bike"
              disabled
            />
          </div>
          <button type="submit" class="btn btn-primary">Update Profile</button>	
        </form>
      </div>
    </div>
  </div>

  <!-- Scripts -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src="${pageContext.request.contextPath}/JS/DeliveryIndex.js"></script>
</body>
</html>
