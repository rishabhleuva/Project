<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Partner with Jdelivery</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/RestaurantHomepage.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
  <header class="hero">
    <div class="overlay"></div>
    <nav>
      <span class="logo">Jdelivery</span>
    </nav>
    <div class="hero-content">
      <h1>Partner with Jdelivery and<br>grow your business</h1>
      <p class="bold-promo">0% commission for 1st month!<br><span class="promo-note">Only valid for new restaurant partners.</span></p><br><br>
      <a class="cta" href="${pageContext.request.contextPath}/JSP/RestaurantRegister.jsp">Register your restaurant</a><br>
    </div>
  </header>


  <section class="benefits">
    <h2>Why should you partner with Jdelivery?</h2>
    <div class="benefits-list">
      <div class="benefit">
        <span class="icon">&#128101;</span>
        <h4>Attract new customers</h4>
        <p>Reach millions of people ordering on Jdelivery.</p>
      </div>
      <div class="benefit">
        <span class="icon">&#128666;</span>
        <h4>Doorstep delivery convenience</h4>
        <p>Easily get your orders delivered through our trained delivery partners.</p>
      </div>
      <div class="benefit">
        <span class="icon">&#128233;</span>
        <h4>Onboarding support</h4>
        <p>For any support, email us at merchantonboarding@Jdelivery.com</p>
      </div>
    </div>
  </section>

  <section class="testimonials">
    <h2>Restaurant success stories</h2>
    <div class="testimonial-cards">
      <div class="testimonial">
        <p>Jdelivery enabled me to restart my operations post-COVID...</p>
        <span class="person">Arshad Khan<br><span>Khushboo Biryani, Shillong</span></span>
      </div>
      <div class="testimonial">
        <p>Thanks to Jdelivery’s invoicing support, our cloud kitchen has been doing wonders...</p>
        <span class="person">Vijay<br><span>Bingo, Coimbatore</span></span>
      </div>
      <div class="testimonial">
        <p>Jdelivery helped us grow by 60% since registration...</p>
        <span class="person">Sandeep K Mohan<br><span>MomoFinan Ld, Kerala</span></span>
      </div>
    </div>
  </section>

  <section class="faq">
    <h2>Frequently asked questions</h2>
    <div class="faq-item">
      <button class="faq-question">What are the documents and details required?</button>
      <div class="faq-answer">PAN, FSSAI, GST, menu/photo, bank details.</div>
    </div>
    <div class="faq-item">
      <button class="faq-question">How long until live after submitting documents?</button>
      <div class="faq-answer">Usually within a few days after all verifications.</div>
    </div>
    <!-- Add more FAQ items as needed -->
  </section>

  <footer>
    <div class="footer-links">
      <div>
        <h4>About Jdelivery</h4>
        <ul>
          <li><a href="#">Who We Are</a></li>
          <li><a href="#">Blog</a></li>
        </ul>
      </div>
      <div>
        <h4>For Restaurants</h4>
        <ul>
          <li><a href="#">Partner With Us</a></li>
        </ul>
      </div>
    </div>
    <div class="footer-contact">
      <p>merchantonboarding@Jdelivery.com</p>
      <p>&copy; 2024 Jdelivery Ltd. All rights reserved.</p>
    </div>
  </footer>
</body>
</html>

