/**
 * 
 */
function searchRestaurant() {
    const location = document.getElementById('location').value;
    const search = document.getElementById('search').value;

    if (!location || !search) {
        alert('Please enter both location and search term!');
        return;
    }

    // Mock search example
    alert(`Searching for "${search}" near "${location}"...`);
}
