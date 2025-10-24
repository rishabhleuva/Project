/**
 * 
 */

document.getElementById('register-form').addEventListener('submit', function(e) {
  e.preventDefault();
  let name = document.getElementById('name').value.trim();
  let email = document.getElementById('email').value.trim();
  let password = document.getElementById('password').value;
  let confirmPassword = document.getElementById('confirm-password').value;
  
  if (password !== confirmPassword) {
    alert("Passwords do not match!");
    return;
  }
  if (password.length < 6) {
    alert("Password must be at least 6 characters.");
    return;
  }
  
});
