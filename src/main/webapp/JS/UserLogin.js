/**
 * 
 */

document.getElementById('login-form').addEventListener('submit', function (e) {
  e.preventDefault();
  const email = document.getElementById('email').value.trim();
  const password = document.getElementById('password').value;

  if (password.length < 6) {
    alert('Password must be at least 6 characters long.');
    return;
  }

  // TODO: Connect to backend for authentication
  alert(`Logging in user: ${email}`);

  // On success: redirect to user dashboard or homepage
});
