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
  this.classList.toggle("active");
  depositBlock.classList.remove("d-none");
}
methodItem.forEach((item) => item.addEventListener("click", activeMethod));

// print file Excel
function exportData(filename) {
  /* Get the HTML data using Element by Id */
  var table = document.getElementById("myTable");

  /* Declaring array variable */
  var rows = [];

  //iterate through rows of table
  for (var i = 0, row; (row = table.rows[i]); i++) {
    //rows would be accessed using the "row" variable assigned in the for loop
    //Get each cell value/column from the row
    column1 = row.cells[0].innerText;
    column2 = row.cells[1].innerText;
    column3 = row.cells[2].innerText;
    column4 = row.cells[3].innerText;
    column5 = row.cells[4].innerText;
    column6 = row.cells[5].innerText;

    /* add a new records in the array */
    rows.push([column1, column2, column3, column4, column5, column6]);
  }
  csvContent = "data:text/csv;charset=utf-8,";
  /* add the column delimiter as comma(,) and each row splitted by new line character (\n) */
  rows.forEach(function (rowArray) {
    row = rowArray.join(",");
    csvContent += row + "\r\n";
  });

  /* create a hidden <a> DOM node and set its download attribute */
  var encodedUri = encodeURI(csvContent);
  var link = document.createElement("a");
  link.setAttribute("href", encodedUri);
  link.setAttribute("download", filename);
  document.body.appendChild(link);
  /* download the data file named "Stock_Price_Report.csv" */
  link.click();
}

// swiper
var swiper = new Swiper(".swiper", {
  // Optional parameters
  autoplay: {
    delay: 3000,
  },
  effect: "fade",
  // Navigation arrows
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  pagination: {
    el: ".swiper-pagination",
    dynamicBullets: true,
  },
});
