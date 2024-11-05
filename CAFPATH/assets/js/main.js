console.log('main.js loaded');
function scrollToSection(sectionId) {
    const section = document.getElementById(sectionId);
    if (section) {
        section.scrollIntoView({ behavior: 'smooth' });
    }
}
function changeLanguage(lang) {
    // Fetch translations from the JSON file
    fetch('assets/js/translations.json')
        .then(response => response.json())
        .then(translations => {
            // Store the selected language in localStorage
            localStorage.setItem('preferredLanguage', lang);

            // Get all elements that need translation
            const elements = document.querySelectorAll('[data-translate]');

            // Update text content for each element
            elements.forEach(element => {
                const key = element.getAttribute('data-translate');
                if (translations[lang] && translations[lang][key]) {
                    element.textContent = translations[lang][key];
                }
            });

            // Update the HTML lang attribute
            document.documentElement.lang = lang;

            // You might want to reload certain parts of your page or fetch new data here
            // For example: updateContent(lang);
        })
        .catch(error => console.error('Error loading translations:', error));
}

// Function to set initial language
function setInitialLanguage() {
    const lang = localStorage.getItem('preferredLanguage') || 'en';
    changeLanguage(lang);
}

// Call setInitialLanguage when the page loads
document.addEventListener('DOMContentLoaded', setInitialLanguage);


document.querySelectorAll('.faq-question').forEach(item => {
    item.addEventListener('click', () => {
        const answer = item.nextElementSibling;
        answer.style.display = answer.style.display === 'block' ? 'none' : 'block';
    });
});                         
