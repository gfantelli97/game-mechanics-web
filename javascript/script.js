
// Confirmacion de envío del formulario de contacto
const form = document.getElementById('contactForm');
const formMessage = document.getElementById('formMessage');

if (form) {
    form.addEventListener("submit", (e) => {
        e.preventDefault(); 

        if (!form.checkValidity()) {
            form.reportValidity();
            return;
        }

        const nombre = document.getElementById("nombre")?.value.trim() || "";

        formMessage.textContent = `Gracias${nombre ? ", " + nombre : ""}! Hemos recibido tu consulta. `;
        formMessage.classList.add("success");
        form.reset();
    });
}

const themeToggle = document.getElementById('themeToggle');

if (themeToggle) {
        themeToggle.addEventListener("click", () => {
            document.body.classList.toggle("dark-theme");
            const isDark = document.body.classList.contains("dark-theme");
            themeToggle.setAttribute("aria-pressed", String(isDark));
        });
}   