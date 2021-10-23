var accName = document.getElementsByClassName("accordion-name");
var i;

for (i = 0; i < accName.length; i++) {
  accName[i].addEventListener("click", function () {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.display === "block") {
      panel.style.display = "none";
    } else {
      panel.style.display = "block";
    }
  });
}
// change tab deposit method
var methodItem = document.querySelectorAll(".menu-method .menu-method-item");
var depositBlock = document.querySelector(".deposit-block");
function activeMethod() {
  methodItem.forEach((item) => item.classList.remove("active"));
  this.classList.add("active");
  depositBlock.classList.remove("d-none");
}
methodItem.forEach((item) => item.addEventListener("click", activeMethod));
