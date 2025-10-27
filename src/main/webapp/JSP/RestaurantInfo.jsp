<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Restaurant Information | Partner Registration</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/RestaurantInfo.css">
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
</head>
<body>
  <header class="topbar">
        <span class="logo">Jdelivery</span>
  
    <a class="topbar-help" href="#">Need help? Call +91-12345678</a>
  </header>
  <main class="container">
    <aside class="sidebar">
      <div class="sidebar-steps">
        <div class="sidebar-step active">
          <span class="circle active">1</span>
          <div>
            <div class="step-title">Restaurant information</div>
            <div class="step-desc">Name, location and contact number</div>
          </div>
        </div>
        <div class="sidebar-step">
          <span class="circle">2</span>
          <div>
            <div class="step-title">Menu and operational details</div>
          </div>
        </div>
        <div class="sidebar-step">
          <span class="circle">3</span>
          <div>
            <div class="step-title">Restaurant documents</div>
          </div>
        </div>
        <div class="sidebar-step">
          <span class="circle">4</span>
          <div>
            <div class="step-title">Partner contract</div>
          </div>
        </div>
      </div>
      <div class="sidebar-note">
        <div class="note-title">Documents required for registration</div>
        <div class="note-desc">See list</div>
      </div>
      <div class="sidebar-referral">
        Did someone refer you to this platform?
      </div>
    </aside>
    <section class="reg-form">
      <h1>Restaurant information</h1>
      <form>
        <div class="input-block">
          <label>Restaurant name</label>
          <input type="text" placeholder="Restaurant name*" required>
        </div>
        <div class="card">
          <h2>Owner details</h2>
          <div class="owner-fields">
            <input type="text" placeholder="Full name*" required>
            <input type="email" placeholder="Email address*" required>
          </div>
          <div class="owner-fields">
            <div style="display: flex; align-items: center;">
              <select>
                <option>+91</option>
                <!-- add more if needed -->
              </select>
              <input type="tel" placeholder="Phone number*" required style="flex: 1;">
            </div>
            <button class="verify-btn" type="button">Verify</button>
          </div>
          <div class="sms-update">
            <input type="checkbox" id="whatsapp">
            <label for="whatsapp">Get restaurant updates via Whatsapp</label>
          </div>
        </div>
        <div class="input-block">
          <label>Restaurant’s primary contact number</label>
          <input type="tel" placeholder="Same as your mobile number" required>
        </div>

        <div class="location-block">
          <h2>Add your restaurant's location for order pick-up</h2>
          <input type="text" placeholder="Search for area, street name">
          <div class="map-box">
            <img src="static-map.png" alt="Map Placeholder"/>
            <div class="map-actions">
              <button type="button">Use current location</button>
            </div>
            <div class="no-location">
              No location selected yet
            </div>
          </div>
          <div class="input-block dual">
            <input type="text" placeholder="Shop no. / building no. (optional)">
            <input type="text" placeholder="Floor / tower (optional)">
          </div>
          <div class="input-block dual">
            <input type="text" placeholder="Area / Sector / Locality*" required>
            <input type="text" placeholder="City*" required>
          </div>
          <input type="text" placeholder="Add any nearby landmark (optional)">
        </div>
        <div class="info-note">
          Please ensure that this address is the same as mentioned on your FSSAI license
        </div>
        <button class="next-btn" disabled>Next</button>
      </form>
    </section>
  </main>
  <script src="${pageContext.request.contextPath}/CSS/RestaurantInfo.js"></script>
</body>
</html>
