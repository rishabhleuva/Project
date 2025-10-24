/**
 * 
 */
function showSection(section) {
  const sections = ['dashboard', 'menu', 'orders', 'earnings', 'reviews', 'notifications', 'profile'];
  sections.forEach(s => document.getElementById(`${s}-section`).classList.add('d-none'));
  document.getElementById(`${section}-section`).classList.remove('d-none');
}

window.onload = function () {
  showSection('dashboard');

  // Chart for orders on dashboard
  new Chart(document.getElementById('ordersChart'), {
    type: 'line',
    data: {
      labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
      datasets: [{
        label: 'Orders',
        data: [6, 8, 7, 10, 9, 8, 3],
        borderColor: '#e23744',
        fill: true,
        backgroundColor: 'rgba(226,55,68,0.18)',
        tension: 0.3
      }]
    }
  });

  // Chart for earnings
  new Chart(document.getElementById('earningsChart'), {
    type: 'bar',
    data: {
      labels: ['Week 1', 'Week 2', 'Week 3', 'Week 4'],
      datasets: [{
        label: 'Earnings ($)',
        data: [450, 530, 410, 510],
        backgroundColor: '#e23744'
      }]
    }
  });

  // Menu Management - static data, add/remove
  let menuList = [
    { name: "Paneer Butter Masala", category: "Main Course", price: 180 },
    { name: "Masala Dosa", category: "Snacks", price: 120 }
  ];
  updateMenuTable(menuList);

  document.getElementById('add-dish-form').onsubmit = function (e) {
    e.preventDefault();
    let name = document.getElementById('dishName').value;
    let price = document.getElementById('dishPrice').value;
    let category = document.getElementById('dishCategory').value;
    menuList.push({ name, category, price });
    updateMenuTable(menuList);
    e.target.reset();
  };

  function updateMenuTable(list) {
    let html = '';
    list.forEach((d, idx) => {
      html += `<tr>
        <td>${d.name}</td><td>${d.category}</td><td>${d.price}</td>
        <td><button class="btn btn-danger btn-sm" onclick="removeDish(${idx})">Delete</button></td>
      </tr>`;
    });
    document.getElementById('menuTable').innerHTML = html;
  }

  window.removeDish = function(idx) {
    menuList.splice(idx, 1);
    updateMenuTable(menuList);
  };

  // Orders Table
  document.getElementById('ordersTable').innerHTML = `
    <tr><td>2011</td><td>Ramesh S</td><td>Paneer Butter Masala</td><td>Preparing</td>
      <td><button class="btn btn-success btn-sm">Mark Ready</button></td></tr>
    <tr><td>2012</td><td>Suman</td><td>Masala Dosa</td><td>Pending</td>
      <td><button class="btn btn-success btn-sm">Accept</button></td></tr>
  `;

  // Earnings Table
  document.getElementById('earningsTable').innerHTML = `
    <tr><td>2025-10-01</td><td>2011</td><td>$120</td></tr>
    <tr><td>2025-10-05</td><td>2012</td><td>$180</td></tr>
  `;

  // Reviews List
  document.getElementById('reviewsList').innerHTML = `
    <li class="list-group-item">
      "Amazing food and quick delivery!" <br/> <strong>— Priya, 5★</strong>
    </li>
    <li class="list-group-item">
      "Loved the dosa, will order again." <br/> <strong>— Amit, 4★</strong>
    </li>
  `;

  // Notifications List
  document.getElementById('notificationsList').innerHTML = `
    <li class="list-group-item">Order #2013 just received!</li>
    <li class="list-group-item">Your menu was updated by admin.</li>
  `;

  // Profile update
  var profileForm = document.getElementById('profile-form');
  if (profileForm) {
    profileForm.addEventListener('submit', function(e) {
      e.preventDefault();
      alert("Profile updated!");
    });
  }
};
