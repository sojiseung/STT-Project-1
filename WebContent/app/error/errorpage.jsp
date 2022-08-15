<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage = "true" %>
<html>
<head>
<meta charset="UTF-8">
    <title>Set The Table 오류오류오류</title>
    <!-- 파비콘 -->
    <link rel="icon" href="./img/favicon.ico" />
    <!-- 글꼴 -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@100;200;300;400;500;600;700&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css"
      rel="stylesheet"
    />
    <!-- 아이콘 -->
    <script
      src="https://kit.fontawesome.com/bd7db36e77.js"
      crossorigin="anonymous"
    ></script>
    <!-- TYPING ANIMATION -->
    <script src="https://www.cssscript.com/demo/simple-typewriter-effect-pure-javascript-typewriterjs/typewriter.js"></script>
    <!-- css -->
    <link rel="stylesheet" href="${cp}/css/common.css" />
        <style>
        .inner {
            text-align: center;
            margin-top: 300px;
        }
        span {
            font-size: 40px;
            color: #270949;
        }
        a {
            font-size: 20px;
            display: block;
            margin-top: 50px;
            color: #270949;
        }
        a:hover {
            color: #3f7fa1;
        }
        </style>
    </head>
    <body>
        <div class="inner">
        <span id="gocoder_typing"></span>
        <br />
        <a href="${cp}/index.html">메인으로 돌아가기</a>
        </div>
    </body>
    <script>
        const typing = document.getElementById("gocoder_typing");
        const typewriter = new Typewriter(typing, { loop: true });
        const parent = document.getElementById("typingAnimation");
        const search = document.getElementById("hidden_search");
        typewriter
        .typeString("죄송합니다.")
        .pauseFor(500)
        .deleteAll()
        .typeString("오류가 나버렸네요....?")
        .pauseFor(500)
        .deleteAll()
        .typeString("메인으로 돌아가세요~")
        .pauseFor(1000)
        .deleteAll()
        .typeString("☆☆☆예쁘게 봐주세요★★★")
        .pauseFor(1000)
        .deleteAll()
        .start();
    </script>
</html>