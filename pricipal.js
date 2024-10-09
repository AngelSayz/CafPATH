const dropdown = document.querySelector('.dropdown');
const dropdownMenu = document.querySelector('.dropdown-menu');

// Mostrar el menú al pasar el ratón sobre "Iniciar Sesión"
dropdown.addEventListener('mouseover', () => {
    dropdownMenu.style.display = 'block';
});

// Ocultar el menú cuando el ratón sale de "Iniciar Sesión" y del menú
dropdown.addEventListener('mouseout', (event) => {
    const relatedTarget = event.relatedTarget; 
    // Verificamos si el ratón está fuera de ambos: el dropdown y el menú desplegable
    if (!dropdown.contains(relatedTarget) && !dropdownMenu.contains(relatedTarget)) {
        dropdownMenu.style.display = 'none';
    }
});

// Listener para alternar el menú desplegable en dispositivos táctiles al hacer clic
dropdown.addEventListener('click', (event) => {
    event.preventDefault(); // Prevenir el comportamiento por defecto del enlace
    const isMenuVisible = dropdownMenu.style.display === 'block';
    dropdownMenu.style.display = isMenuVisible ? 'none' : 'block';
});
