document.addEventListener("DOMContentLoaded", function () {
  const addBtn = document.getElementById("addDocumentButton");
  const form = document.getElementById("addDocumentForm");
  const overlay = document.getElementById("formOverlay");
  const closeBtn = document.getElementById("closeFormBtn");

  addBtn.addEventListener("click", function () {
    form.classList.remove("d-none");
    overlay.style.display = "block";
  });

  function closeForm() {
    form.classList.add("d-none");
    overlay.style.display = "none";
  }

  overlay.addEventListener("click", closeForm);
  closeBtn.addEventListener("click", closeForm);
});