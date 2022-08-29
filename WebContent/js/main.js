const typing = document.getElementById("gocoder_typing");
const typewriter = new Typewriter(typing, { loop: true });
const parent = document.getElementById("typingAnimation");


typewriter
  .typeString("웹사이트 제작")
  .pauseFor(1000)
  .deleteAll()
  .typeString("메타버스")
  .pauseFor(1000)
  .deleteAll()
  .typeString("1조 최강")
  .pauseFor(1000)
  .deleteAll()
  .typeString("퍼블리싱")
  .pauseFor(1000)
  .deleteAll()
  .typeString("어렵네요")
  .pauseFor(1000)
  .deleteAll()
  .typeString("제 영혼을 갈아넣었습니다.")
  .pauseFor(1000)
  .deleteAll()
  .start();

function remove() {
  parent.removeChild(typing);
}

function append() {
  searching.value = "";
  parent.appendChild(typing);
  const typewriter = new Typewriter(typing, { loop: true });
  typewriter
    .typeString("웹사이트 제작")
    .pauseFor(1000)
    .deleteAll()
    .typeString("메타버스")
    .pauseFor(1000)
    .deleteAll()
    .typeString("1조 최강")
    .pauseFor(1000)
    .deleteAll()
    .typeString("퍼블리싱")
    .pauseFor(1000)
    .deleteAll()
    .typeString("어렵네요")
    .pauseFor(1000)
    .deleteAll()
    .typeString("제 영혼을 갈아넣었습니다.")
    .pauseFor(1000)
    .deleteAll()
    .start();
}

let swiper = new Swiper(".mySwiper", {
  loop: true, // 무한반복
  loopAdditionalSlides: 1, // 슬라이드 반복 시 마지막 슬라이드에서 다음 슬라이드가 보여지지 않는 현상 수정
  autoplay: {
    // 자동재생
    delay: 4000, // 시간 설정
    disableOnInteraction: false,
    // false로 설정 시 스와이프 후 자동 재생이 비활성화 되지 않음
  },
  pagination: {
    el: ".swiper-pagination",
    type: "fraction",
  },
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
});
swiper.on("slideChange", function () {
  let num = swiper.activeIndex; // 슬라이드 될때마다 인덱스번호, 직접 오차 확인하면서 해야함
  const bgc = document.getElementById("swiper_ad");
  if (num == 2) {
    bgc.style.transition = "all 0.5s";
    bgc.style.backgroundColor = "rgb(0, 60, 215)";
  } else if (num == 3) {
    bgc.style.transition = "all 0.5s";
    bgc.style.backgroundColor = "rgb(255, 153, 0)";
  } else if (num == 4) {
    bgc.style.transition = "all 0.5s";
    bgc.style.backgroundColor = "rgb(255, 113, 139)";
  } else if (num == 5) {
    bgc.style.transition = "all 0.5s";
    bgc.style.backgroundColor = "rgb(33, 34, 36)";
  } else if (num == 6) {
    bgc.style.transition = "all 0.5s";
    bgc.style.backgroundColor = "rgb(150, 96, 240)";
  } else if (num == 7) {
    bgc.style.transition = "all 0.5s";
    bgc.style.backgroundColor = "rgb(12, 69, 65)";
  } else if (num == 8) {
    bgc.style.transition = "all 0.5s";
    bgc.style.backgroundColor = "rgb(55, 17, 108)";
  } else if (num == 9) {
    bgc.style.transition = "all 0.5s";
    bgc.style.backgroundColor = "rgb(0, 60, 215)";
  } else if (num == 1) {
    bgc.style.transition = "all 0.5s";
    bgc.style.backgroundColor = "rgb(55, 17, 108)";
  }
});



