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
