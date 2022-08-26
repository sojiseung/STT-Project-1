<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath }"/>
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
    <link rel="stylesheet" href="${cp}/css/loginview.css" />
</head>
<body>
    <!-- LOGINMODAL -->
    <div class="modal">
      <div class="modal_body">
          <div class="left_img"></div>
          <div class="right_login">
              <button class="modal_close">×</button>
              <div class="login">
                  <form action="${cp}/user/userloginok.us" method="post">
                      <h2>로그인</h2>
                      <div class="input_login">
                          <div class="input_login2">
                              <input type="text" class="input_id" name="userid" placeholder="아이디를 입력해 주세요.">
                          </div>
                      </div>
                      <div class="input_login">
                          <div class="input_login2">
                              <input type="password" class="input_pw" name="userpw" placeholder="비밀번호를 입력해 주세요.">
                          </div>
                      </div>
                      <div class="submit_login">
                          <input role="button" type="submit" value="로그인" id="login">
                      </div>
                      <div class="logincheck">
                          <p><input type="checkbox" name="로그인유지" id="login_keep">
                          </p>
                          <label for="login_keep"><span>로그인 유지</span></label>
                          <p>
                          <a href="${cp}/app/user/findinfo.jsp" class="idpwlook">아이디•비밀번호 찾기</a></p>
                      </div>
                  </form>
                    <div class="snslogin">
                        <p>SNS계정으로 간편하게 로그인하세요.</p>
                        <div class="snslog">
                            <a href="javascript:kakaoLogin()">
                                <button class="kakao_naver">
                                    <img src="${cp}/img/kakao2.png" class="kakaoimg" alt=""><p>카카오 로그인</p>
                                </button>
                            </a>
                        </div>
                        <div>
                            <a id="naverIdLogin_loginButton" href="javascript:void(0)">
                                <div class="snslog" id="naver_id_login">
                                    <button class="naver_kakao" value="네이버 로그인">
                                        <img src="${cp}/img/naver_icon.png" class="naverimg" alt="">
                                        <p>네이버 로그인</p>
                                    </button>
                                </div>
                            </a>
                        </div>
                    </div>
                  <div class="line">
                  </div>
                  <div class="join">
                      <div class="join1">
                          <p><strong>회원가입</strong>을 원하시면 가입 버튼을 눌러주세요.</p>
                      </div>
                      <div class="join2">
                      <a href="${cp}/app/user/join1.jsp">
                          <button class="join_button">
                          Set The Table 회원가입 하기
                          </button>
                      </a>
                      </div>
                  </div>
              </div>
              </div>
          </div>
      </div>
  </div>
  <!-- MAIN -->
    <div class="container">
        <div class="header">
            <div class="header_title">
                <div class="img_wrapper">
                    <a href="/">
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
                            <form action="${cp}/admin/findidok.ad">
                                <div class="username">
                                    <input type="text" class="input_id" name="username" placeholder="본명">
                                </div>
                                <div class="username">
                                    <input type="text" class="input_id" name="userphone" placeholder="휴대폰 번호" maxlength="13" oninput="autoHyphen(this)">
                                </div>
                                <div class="id_text">
                                    <p>본인인증 받으신 정보를 입력해 주세요.<br> 휴대폰 번호로 아이디를 보내드립니다.</p>
                                </div>
                                <div class="id_btn">
                                        <input class="btn" type="submit" value="아이디 찾기">
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="find_pw">
                        <div class="pw_panel">
                            <p>비밀번호 찾기</p>
                        </div>
                        <div class="pw_form">
                            <form action="${cp}/admin/findpwok.ad">
                                <div class="username">
                                    <input type="email" class="input_pw" name="userid" placeholder="이메일">
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
                    <a href="javascript:btnOpenPopup" class="login btn-open-popup">
                        <button class="btn">로그인</button>
                    </a>
                    <a class="join" href="${cp}/app/user/join1.jsp">
                        <button class="btn">Set The Table 회원가입</button>
                    </a>
                </div>
            </div>
            <div class="last_text">
                <p>Copyright © 2022 Set The Table Inc. All rights reserved.</p>
            </div>
        </div>
    </div>
    <script>
    const autoHyphen = (target) => {
    	  target.value = target.value
    	    .replace(/[^0-9]/g, "")
    	    .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
    	};
    </script>
        <script type="text/javascript" src="http://developers.kakao.com/sdk/js/kakao.js"></script>
	<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<script>
  const modal = document.querySelector(".modal");
  const btnOpenPopup = document.querySelector(".btn-open-popup");
  const body = document.querySelector("body");
  btnOpenPopup.addEventListener("click", () => {
    modal.style.display = "block";
    modal.style.zIndex = "999";
    modal.style.position = "fixed";
  });
  const modalclose = document.querySelector(".modal_close");
  modalclose.addEventListener("click", () => {
    modal.style.display = "none";
  });
  // 모달 on
  body.style.overflow = "hidden";
  // 모달 off
  body.style.overflow = "auto";

  
  
  
  var flag = true;
  var naverLogin = new naver.LoginWithNaverId(
          {
              clientId: "J7nHmQY4TMbVjEOatJKm", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
              callbackUrl: "http://localhost:9090/sttproject/index.jsp", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
              isPopup: false,
              callbackHandle: true
          }
      );	

  
  naverLogin.init();
  
  window.addEventListener('load', function () {
      naverLogin.getLoginStatus(function (status) {
          if (status) {
              var naveremail = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
              
              if( naveremail == undefined || naveremail == null) {
                  alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
                  naverLogin.reprompt();
                  return;
              }
          } else {
              console.log("callback 처리에 실패하였습니다.");
          }
          
          if(flag){
			flag = false;
         	//location.href="${cp}/user/naverloginok.us?email="+naveremail;
          }
      });
  });
  /*  var testPopUp;
  function openPopUp() {
      testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
  }
  function closePopUp(){
      testPopUp.close();
  }

  function naverLogout() {
      openPopUp();
      setTimeout(function() {
          closePopUp();
          }, 1000);
  }*/
  
  Kakao.init("8d4eab699192415f5b2eb69fb710606d");
  function kakaoLogin(){
    Kakao.Auth.loginForm({
      scope:"profile_nickname,account_email,gender,age_range,birthday	",
      success:function(authObj){
        console.log(authObj);
        Kakao.API.request({
          url:"/v2/user/me",
          success:function(res){
          	  let email = res.kakao_account.email;
        	  console.log(email);
        	  location.href="${cp}/user/kakaologinok.us?email="+email;
          }
        });
      }
    });
  };
  
 /* Kakao.API.request({
	  url: '/v2/user/me',
	  success: function(res) {
	    console.log(res)
	  },
	  fail: function(error) {
	    console.error(error)
	  }
	});
*/
  
  </script>
</body>
</html>