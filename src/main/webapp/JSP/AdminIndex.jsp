<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Jdelivery Admin Panel</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/AdminIndex.css">
</head>
<body>
<div class="d-flex" id="wrapper">
    <!-- Sidebar -->
    <nav class="border-end bg-white" id="sidebar-wrapper">
        <div class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom">
            Admin
        </div>
        <div class="list-group list-group-flush my-3">
            <a href="#" class="list-group-item list-group-item-action bg-transparent second-text active" onclick="showPanel('dashboard')"><i class="bi bi-speedometer2 me-2"></i>Dashboard</a>
            <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold" onclick="showPanel('users')">Users</a>
            <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold" onclick="showPanel('restaurants')">Restaurants</a>
            <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold" onclick="showPanel('delivery')">Delivery Partners</a>
            <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold" onclick="showPanel('orders')">Orders</a>
            <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold" onclick="showPanel('analytics')">Reports & Analytics</a>
        </div>
    </nav>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper" class="flex-grow-1">
        <!-- Top navbar -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
            <div class="container-fluid">
                <span class="navbar-brand mb-0 h1">Jdelivery Admin Panel</span>
                <div>
                    <button class="btn btn-danger">Logout</button>
                </div>
            </div>
        </nav>

        <!-- Panels -->
        <div class="container-fluid p-4" id="dashboard-panel">
            <div class="row">
                <h2 class="mb-4 fw-bold">Dashboard</h2>
                <div class="col-lg-3 col-md-6 mb-4">
                    <div class="card bg-light text-dark shadow">
                        <div class="card-body">
                            <h6>Total Users</h6>
                            <h3 id="users-count">1200</h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mb-4">
                    <div class="card bg-light text-dark shadow">
                        <div class="card-body">
                            <h6>Total Restaurants</h6>
                            <h3 id="restaurants-count">65</h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mb-4">
                    <div class="card bg-light text-dark shadow">
                        <div class="card-body">
                            <h6>Delivery Partners</h6>
                            <h3 id="delivery-count">45</h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mb-4">
                    <div class="card bg-light text-dark shadow">
                        <div class="card-body">
                            <h6>Orders Today</h6>
                            <h3 id="orders-count">340</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-4">
                <h4>Analytics Overview</h4>
                <canvas id="overviewChart" style="max-height:300px;"></canvas>
            </div>
        </div>

        <!-- Users Panel -->
        <div class="container-fluid p-4 d-none" id="users-panel">
            <h2 class="mb-4 fw-bold">Manage Users</h2>
            <input class="form-control mb-3" placeholder="Search users..." id="search-users">
            <table class="table table-hover">
                <thead class="table-light"><tr>
                    <th>ID</th><th>Name</th><th>Email</th><th>Status</th><th>Action</th>
                </tr></thead>
                <tbody id="users-table"></tbody>
            </table>
        </div>

        <!-- Restaurants Panel -->
        <div class="container-fluid p-4 d-none" id="restaurants-panel">
            <h2 class="mb-4 fw-bold">Manage Restaurants</h2>
            
            <h4>Pending Restaurant Requests</h4>
            <table class="table table-hover" id="restaurants-pending-table">
                <thead class="table-light">
                    <tr><th>ID</th><th>Name</th><th>Email</th><th>Action</th></tr>
                </thead>
                <tbody></tbody>
            </table>

            <h4>Active Restaurants</h4>
            <input class="form-control mb-3" placeholder="Search restaurants..." id="search-restaurants">
            <table class="table table-hover">
                <thead class="table-light"><tr>
                    <th>ID</th><th>Name</th><th>Owner Email</th><th>Status</th><th>Action</th>
                </tr></thead>
                <tbody id="restaurants-table"></tbody>
            </table>
        </div>

        <!-- Delivery Partners Panel -->
        <div class="container-fluid p-4 d-none" id="delivery-panel">
            <h2 class="mb-4 fw-bold">Manage Delivery Partners</h2>
            
            <h4>Pending Delivery Partner Requests</h4>
            <table class="table table-hover" id="delivery-pending-table">
                <thead class="table-light">
                    <tr><th>ID</th><th>Name</th><th>Email</th><th>Action</th></tr>
                </thead>
                <tbody></tbody>
            </table>

            <h4>Active Delivery Partners</h4>
            <input class="form-control mb-3" placeholder="Search partners..." id="search-delivery">
            <table class="table table-hover">
                <thead class="table-light"><tr>
                    <th>ID</th><th>Name</th><th>Email</th><th>Status</th><th>Action</th>
                </tr></thead>
                <tbody id="delivery-table"></tbody>
            </table>
        </div>

        <!-- Orders Panel -->
        <div class="container-fluid p-4 d-none" id="orders-panel">
            <h2 class="mb-4 fw-bold">Manage Orders</h2>
            <input class="form-control mb-3" placeholder="Search orders..." id="search-orders">
            <table class="table table-hover">
                <thead class="table-light"><tr>
                    <th>ID</th><th>User</th><th>Restaurant</th><th>Status</th><th>Date</th><th>Action</th>
                </tr></thead>
                <tbody id="orders-table"></tbody>
            </table>
        </div>

        <!-- Analytics Panel -->
        <div class="container-fluid p-4 d-none" id="analytics-panel">
            <h2 class="mb-4 fw-bold">Reports & Analytics</h2>
            <canvas id="salesChart" style="max-height:300px;"></canvas>
        </div>
    </div>
</div>


<!-- JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="${pageContext.request.contextPath}/JS/AdminJs.js"></script>
</body>
</html>
