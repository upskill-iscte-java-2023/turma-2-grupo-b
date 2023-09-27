let menuOpen = false; // Initialize a variable to track the menu state

function menuOnClick() {
    // Toggle the menu state
    menuOpen = !menuOpen;

    // Toggle the appropriate CSS classes
    document.getElementById("Hamburger-menu-bar").classList.toggle("Hamburger-change");
    document.getElementById("Hamburger-nav").classList.toggle("Hamburger-change");
    document.getElementById("Hamburger-menu-bg").classList.toggle("Hamburger-change-bg");

    // Call the touch event handler function
    handleTouchEvents();
}

function handleTouchEvents() {
    if (menuOpen) {
        // If the menu is open, prevent scrolling
        document.body.addEventListener('touchmove', preventScroll, { passive: false });
    } else {
        // If the menu is closed, remove the event listener
        document.body.removeEventListener('touchmove', preventScroll, { passive: false });
    }
}

function preventScroll(event) {
    event.preventDefault();
}