var elem = document.getElementsByTagName("h1");

elem[0].style.color = "red"

function consoleClicker(event) {
  console.log("your function works!");
  console.log(event);
  event.target.style.color = "red"
}

function consoleOut(event) {
  console.log("your function works!");
  console.log(event);
  event.target.style.color = "black"
}

var paragraph = document.getElementsByTagName("p");
paragraph[0].addEventListener("mouseover", consoleClicker);
paragraph[0].addEventListener("mouseout", consoleOut);