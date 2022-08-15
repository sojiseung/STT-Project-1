const f1 = document.getElementById("f1");
const f2 = document.getElementById("f2");
const f3 = document.getElementById("f3");
const f4 = document.getElementById("f4");
const book1 = document.getElementById("book1");
const book2 = document.getElementById("book2");
const book3 = document.getElementById("book3");
const book4 = document.getElementById("book4");

function move1() {
  f1.classList.replace("ff", "ff1");
  f2.classList.replace("ff1", "ff");
  f3.classList.replace("ff1", "ff");
  f4.classList.replace("ff1", "ff");
  location.href = "#book1";
}
function move2() {
  f2.classList.replace("ff", "ff1");
  f1.classList.replace("ff1", "ff");
  f3.classList.replace("ff1", "ff");
  f4.classList.replace("ff1", "ff");
  location.href = "#book2";
}
function move3() {
  f3.classList.replace("ff", "ff1");
  f1.classList.replace("ff1", "ff");
  f2.classList.replace("ff1", "ff");
  f4.classList.replace("ff1", "ff");
  location.href = "#book3";
}
function move4() {
  f4.classList.replace("ff", "ff1");
  f1.classList.replace("ff1", "ff");
  f2.classList.replace("ff1", "ff");
  f3.classList.replace("ff1", "ff");
  location.href = "#book4";
}
const heart = document.getElementById("heart");
function change() {
  if (heart.classList.contains("fa-regular")) {
    heart.classList.replace("fa-regular", "fa-solid");
    heart.style.color = "#ef5350";
  } else if (heart.classList.contains("fa-solid")) {
    heart.classList.replace("fa-solid", "fa-regular");
    heart.style.color = "#270949";
  }
}
