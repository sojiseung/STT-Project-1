const items = document.querySelectorAll(".question");

function openCloseAnswer() {
  const answerId = this.id.replace("que", "ans");

  if (document.getElementById(answerId).style.display === "block") {
    document.getElementById(answerId).style.display = "none";
  } else {
    document.getElementById(answerId).style.display = "block";
    console.log("열러");
  }
}

items.forEach((item) => item.addEventListener("click", openCloseAnswer));

const popularity = document.getElementById("popularity");
const newreg = document.getElementById("newreg");
const score = document.getElementById("score");

score.addEventListener("click", function () {
  score.style.color = "#270949";
  score.style.fontWeight = "bold";
});
newreg.addEventListener("click", function () {
  newreg.style.color = "#270949";
  newreg.style.fontWeight = "bold";
});
popularity.addEventListener("click", function () {
  popularity.style.color = "#270949";
  popularity.style.fontWeight = "bold";
});

const hearts = document.querySelectorAll(".fa-heart");
for (let i = 0; i < hearts.length; i++) {
  if (i % 2 == 0) {
    hearts[i].addEventListener("click", function () {
      hearts[i].classList.replace("fa-regular", "fa-solid");
      hearts[i].style.color = "#f11376";
    });
  } else {
    hearts[i].addEventListener("click", function () {
      hearts[i].classList.replace("fa-regular", "fa-solid");
      hearts[i].style.color = "#ef5350";
    });
  }
}
