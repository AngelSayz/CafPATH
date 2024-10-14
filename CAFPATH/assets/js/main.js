document.addEventListener('DOMContentLoaded', function() {
    const dropdownToggles = document.querySelectorAll('#main-nav ul li');

    dropdownToggles.forEach(toggle => {
        toggle.addEventListener('click', function(event) {
            // Prevent the click event from bubbling up to the document
            event.stopPropagation();

            // Close any open dropdowns
            document.querySelectorAll('#main-nav ul li ul').forEach(ul => {
                if (ul !== toggle.querySelector('ul')) {
                    ul.style.display = 'none';
                }
            });

            // Toggle the clicked dropdown
            const dropdown = toggle.querySelector('ul');
            if (dropdown) {
                dropdown.style.display = dropdown.style.display === 'block' ? 'none' : 'block';
            }
        });
    });

    // Close dropdowns if clicking outside
    document.addEventListener('click', function() {
        document.querySelectorAll('#main-nav ul li ul').forEach(ul => {
            ul.style.display = 'none';
        });
    });

    // Handle language change
    document.querySelectorAll('[data-lang]').forEach(langOption => {
        langOption.addEventListener('click', function(event) {
            event.preventDefault();
            const selectedLang = this.getAttribute('data-lang');
            const currentUrl = new URL(window.location.href);
            currentUrl.searchParams.set('lang', selectedLang);
            window.location.href = currentUrl.toString();
        });
    });
});

function scrollToSection(sectionId) {
    const section = document.getElementById(sectionId);
    if (section) {
        section.scrollIntoView({ behavior: 'smooth' });
    }
}