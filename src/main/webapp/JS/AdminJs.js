/**
 * 
 */
function showPanel(panel) {
    ['dashboard','users','restaurants','delivery','orders','analytics'].forEach(p => {
        document.getElementById(p+'-panel').classList.add('d-none');
    });
    document.getElementById(panel+'-panel').classList.remove('d-none');
}

window.onload = function() {
    showPanel('dashboard');

    // Setup dummy analytics chart
    new Chart(document.getElementById('overviewChart'), {
        type: 'line',
        data: {
            labels: ["Mon","Tue","Wed","Thu","Fri","Sat","Sun"],
            datasets: [{
                label: 'Orders',
                data: [150, 230, 180, 290, 200, 340, 250],
                backgroundColor: 'rgba(226,55,68,0.09)',
                borderColor: '#e23744',
            }]
        }
    });

    new Chart(document.getElementById('salesChart'), {
        type: 'bar',
        data: {
            labels: ["Veg Pizza", "Paneer Roll", "Burger", "Chinese", "Fries", "Coke"],
            datasets: [{
                label: 'Best Sellers',
                data: [410,380,370,265,230,180],
                backgroundColor: '#e23744',
            }]
        }
    });

    // Fill tables with dummy data for UI preview (replace with AJAX/data later)
    fillTable('users', [
        {id:1,name:'Rohit',email:'roh@gmail.com',status:'Active'},
        {id:2,name:'Arya',email:'arya@gmail.com',status:'Blocked'}
    ]);
    fillTable('restaurants', [
        {id:1,name:'Curry House',email:'owner@curry.com',status:'Active'},
        {id:2,name:'King Burger',email:'mail@king.com',status:'Pending'}
    ]);
    fillTable('delivery', [
        {id:9,name:'Lalit',email:'lalit@del.com',status:'Available'},
        {id:7,name:'Rakesh',email:'rak@del.com',status:'Inactive'}
    ]);
    fillTable('orders', [
        {id:92,user:'Rohit',restaurant:'Curry House',status:'Delivered',date:'2025-09-09'},
        {id:95,user:'Arya',restaurant:'King Burger',status:'Pending',date:'2025-09-13'}
    ]);
}
function fillTable(type, rows) {
    let html = '';
    rows.forEach(r=>{
        html += '<tr>';
        for (let k in r) html += `<td>${r[k]}</td>`;
        html += `<td><button class="btn btn-sm btn-danger">Action</button></td></tr>`;
    });
    document.getElementById(type+'-table').innerHTML = html;
}
