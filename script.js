// JavaScript for block buttons
const projectButtons = document.querySelectorAll('.project-button');

projectButtons.forEach(button => {
    button.addEventListener('click', () => {
        alert('This feature is coming soon!'); // You can replace this with any desired action
    });
});

document.addEventListener("DOMContentLoaded", function () {
    const loadingOverlay = document.querySelector(".loading-overlay");

    setTimeout(() => {
        loadingOverlay.style.opacity = 0;
        loadingOverlay.style.pointerEvents = "none"; // Allow interaction with main content
    }, 3000); // Adjust the delay based on your preference

    const logo = document.querySelector(".logo");
    logo.style.transform = "scale(1)";

    setTimeout(() => {
        logo.style.transform = "scale(1)";
        logo.style.transition = "transform 0.5s ease-in-out";
    }, 500); // Adjust the delay based on your preference
});

