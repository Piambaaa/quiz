document.addEventListener("DOMContentLoaded", () => {
  const welcomeBtn = document.getElementById("welcomeBtn");
  const welcomeMessage = document.getElementById("welcomeMessage");
  if (welcomeBtn && welcomeMessage) {
    welcomeBtn.addEventListener("click", () => {
      welcomeMessage.textContent = "¡Bienvenido a Café Aurora! Aquí cada pausa tiene un sabor especial.";
    });
  }

  const menuBtn = document.getElementById("menuBtn");
  const menuMessage = document.getElementById("menuMessage");
  if (menuBtn && menuMessage) {
    menuBtn.addEventListener("click", () => {
      menuMessage.textContent = "Recomendación del día: Latte Aurora acompañado de torta de chocolate.";
    });
  }

  const saveBtn = document.getElementById("saveBtn");
  const saveMessage = document.getElementById("saveMessage");
  if (saveBtn && saveMessage) {
    saveBtn.addEventListener("click", () => {
      const favorite = "Latte Aurora";
      try {
        localStorage.setItem("cafeAuroraFavorito", favorite);
        saveMessage.textContent = "¡Listo! Guardamos tu favorito en este navegador: " + favorite + ".";
      } catch (error) {
        saveMessage.textContent = "Tu favorito es Latte Aurora. Anótalo para recordarlo después.";
      }
    });
  }
});