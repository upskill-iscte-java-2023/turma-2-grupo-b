let menuOpen = false; // Initialize a variable to track the menu state

function menuOnClick() {
    // Toggle the menu state
    menuOpen = !menuOpen;

    // Toggle the appropriate CSS classes
    document.getElementById("Hamburger-menu-bar").classList.toggle("Hamburger-change");
    document.getElementById("Hamburger-nav").classList.toggle("Hamburger-change");
    document.getElementById("Hamburger-menu-bg").classList.toggle("Hamburger-change-bg");
    document.getElementById("uui-navbar07_button-wrapper-2").classList.toggle("uui-navbar07_button-wrapper-2-change");

    // Call the touch event handler function
    handleTouchEvents();
}

function handleTouchEvents() {
    document.body.addEventListener('touchmove', function(event) {
        if (menuOpen && event.touches.length === 1) {
            // If the menu is open and there's only one touch point, prevent scrolling
            event.preventDefault();
        }
    }, { passive: false });
}