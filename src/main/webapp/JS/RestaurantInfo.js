/**
 * 
 */

// Example: Enable 'Next' button when all required fields filled
document.addEventListener('input', function() {
  const required = document.querySelectorAll('input[required]');
  const allFilled = Array.from(required).every(inp => inp.value.trim() !== '');
  document.querySelector('.next-btn').disabled = !allFilled;
  if (allFilled) {
    document.querySelector('.next-btn').style.background = '#2476ee';
    document.querySelector('.next-btn').style.color = '#fff';
    document.querySelector('.next-btn').style.cursor = 'pointer';
  } else {
    document.querySelector('.next-btn').style.background = '#dce2ee';
    document.querySelector('.next-btn').style.color = '#a5abb8';
    document.querySelector('.next-btn').style.cursor = 'not-allowed';
  }
});
