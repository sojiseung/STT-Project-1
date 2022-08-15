<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath }"/>
<%@ page errorPage = "/app/error/errorpage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 • 비밀번호 찾기 STT</title>
    <!-- 파비콘 -->
    <link rel="icon" href="${cp}/img/favicon.ico" />
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
    <link rel="stylesheet" href="${cp}/css/find.css">
    <link rel="stylesheet" href="${cp}/css/common.css">
</head>
<body>
    <div class="container">
        <div class="header">
            <div class="header_title">
                <div class="img_wrapper">
                    <a href="">
                        <img src="${cp}/img/setthetable.png" alt="">
                    </a>
                </div>
            </div>
        </div>
        <div class="find_title">
            <h2>아이디/비밀번호 찾기</h2>
        </div>
        <div class="main">
            <div class="main_contents">
                <div class="find_idpw">
                    <div class="find_id">
                        <div class="id_panel">
                            <p>아이디 찾기</p>
                        </div>
                        <div class="id_form">
                            <form action="/user/findidok.us">
                                <div class="username">
                                    <input type="text" class="input_id" placeholder="본명">
                                </div>
                                <div class="username">
                                    <input type="tel" class="input_id" placeholder="휴대폰 번호">
                                </div>
                                <div class="id_text">
                                    <p>본인인증 받으신 정보를 입력해 주세요.<br> 휴대폰 번호로 아이디를 보내드립니다.</p>
                                </div>
                                <div class="id_btn">
                                        <input class="btn" type="submit" value="이메일 전송">
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="find_pw">
                        <div class="pw_panel">
                            <p>비밀번호 찾기</p>
                        </div>
                        <div class="pw_form">
                            <form action="">
                                <div class="username">
                                    <input type="email" class="input_pw" placeholder="이메일">
                                </div>
                                <div class="pw_text">
                                    <p>가입 시 등록하신 이메일 주소를 입력해 주세요. <br>비밀번호 재설정 링크를 보내드립니다.</p>
                                </div>
                                <div class="pw_btn">
                                        <input class="btn" type="submit" value="비밀번호 변경 URL 전송">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="find_title">
                <h2>Set The Table 로그인/회원가입</h2>
            </div>
            <div class="lojo">
                <div class="lojo_wrapper">
                    <div class="login">
                        <button class="btn">로그인</button>
                    </div>
                    <div class="join">
                        <button class="btn">Set The Table 회원가입</button>
                    </div>
                </div>
            </div>
            <div class="last_text">
                <p>Copyright © 2022 Set The Table Inc. All rights reserved.</p>
            </div>
        </div>
    </div>
</body>
</html>