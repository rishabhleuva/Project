function showSection(section) {
  const sections = [
    'dashboard',
    'orders',
    'active',
    'earnings',
    'notifications',
    'profile'
  ];
  sections.forEach(s =>
    document.getElementById(`${s}-section`).classList.add('d-none')
  );
  document.getElementById(`${section}-section`).classList.remove('d-none');
}

window.onload = function () {
  showSection('dashboard');

  // Chart for deliveries & earnings on dashboard
  const ctx = document.getElementById('deliveryChart').getContext('2d');
  new Chart(ctx, {
    type: 'line',
    data: {
      labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
      datasets: [
        {
          label: 'Deliveries',
          data: [10, 12, 8, 15, 13, 9, 11],
          borderColor: '#e23744',
          backgroundColor: 'rgba(226, 55, 68, 0.3)',
          fill: true,
          tension: 0.3
        }
      ]
    }
  });

  // Chart for earnings history
  const ctxEarn = document.getElementById('earningsChart').getContext('2d');
  new Chart(ctxEarn, {
    type: 'bar',
    data: {
      labels: ['Week 1', 'Week 2', 'Week 3', 'Week 4'],
      datasets: [
        {
          label: 'Earnings ($)',
          data: [240, 300, 225, 280],
          backgroundColor: '#e23744'
        }
      ]
    }
  });

  // Populate Available Orders (dummy example)
  let availableOrders = document.getElementById('available-orders');
  availableOrders.innerHTML = `
    <div class="list-group-item d-flex justify-content-between align-items-center">
      <div>
        <strong>Pizza Hut</strong><br />
        Delivery to: 123 Baker Street<br />
        Value: $25.5 - 2.5 km
      </div>
      <div>
        <button class="btn btn-success btn-sm" onclick="acceptOrder(1)">Accept</button>
        <button class="btn btn-danger btn-sm" onclick="rejectOrder(1)">Reject</button>
      </div>
    </div>
    <div class="list-group-item d-flex justify-content-between align-items-center">
      <div>
        <strong>Subway</strong><br />
        Delivery to: 456 Oak Avenue<br />
        Value: $18.0 - 1.7 km
      </div>
      <div>
        <button class="btn btn-success btn-sm" onclick="acceptOrder(2)">Accept</button>
        <button class="btn btn-danger btn-sm" onclick="rejectOrder(2)">Reject</button>
      </div>
    </div>`;

  // Populate Active Deliveries (dummy example)
  let activeDeliveries = document.getElementById('active-deliveries');
  activeDeliveries.innerHTML = `
    <div class="list-group-item">
      <strong>Order #1024</strong><br />
      Status: Picked Up
      <button class="btn btn-primary btn-sm ms-3" onclick="updateStatus(1024, 'Out for Delivery')">Mark Out for Delivery</button>
    </div>
    <div class="list-group-item">
      <strong>Order #1021</strong><br />
      Status: Out for Delivery
      <button class="btn btn-success btn-sm ms-3" onclick="updateStatus(1021, 'Delivered')">Mark Delivered</button>
    </div>`;

  // Populate Earnings Table
  let earningsTable = document.getElementById('earnings-table');
  earningsTable.innerHTML = `
    <tr><td>1001</td><td>2025-10-01</td><td>$24.00</td><td>$4.00</td></tr>
    <tr><td>1002</td><td>2025-10-05</td><td>$30.00</td><td>$5.00</td></tr>
  `;

  // Populate Notifications
  let notificationsList = document.getElementById('notifications-list');
  notificationsList.innerHTML = `
    <li class="list-group-item">New order available near you!</li>
    <li class="list-group-item">Weekly payout processed.</li>
  `;
};

// Event Handlers
function acceptOrder(orderId) {
  alert(`Order ${orderId} accepted!`);
  // TODO: Integrate API call
}
function rejectOrder(orderId) {
  alert(`Order ${orderId} rejected!`);
  // TODO: Integrate API call
}
function updateStatus(orderId, status) {
  alert(`Order ${orderId} status updated to: ${status}`);
  // TODO: Integrate API call
}
var profileForm = document.getElementById('profile-form');
if (profileForm) {
  profileForm.addEventListener('submit', function(e) {
    e.preventDefault();
    alert("Profile updated!");
    // TODO: Save profile info to backend
  });
}
