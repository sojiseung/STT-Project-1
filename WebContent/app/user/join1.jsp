<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath }"/>
<%@ page errorPage = "/app/error/errorpage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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
    <link rel="stylesheet" href="${cp}/css/join1.css" />
    <link rel="stylesheet" href="${cp}/css/common.css" />
</head>
<body>
    <div class="container">
      <div class="header">
        <h2>Set The Table</h2>
      </div>
      <div class="center">
        <div class="center_menu">
          <p class="font_30">SNS계정으로 간편하게 가입하세요.</p>
          <div class="sns_join">
              <a href="javascript:kakaoLogin()">
                  <div class="button_wrapper">
                      <button class="kakao">
                          <img src="${cp}/img/kakao2.png" class="kakaoimg" alt=""><p>카카오톡 간편 가입 하기</p>
                      </button>
                  </div>
              </a>
              <a id="naverIdLogin_loginButton" href="javascript:void(0)">
                  <div class="button_wrapper">
                      <button class="naver">
                          <img src="${cp}/img/naver-icon-file.png" class="naverimg" alt=""><p>네이버 간편 가입 하기</p>
                      </button>
                  </div>
              </a>
              <div class="line">

              </div>
          </div>
          <div class="email_join">
            <p class="font_30_center">이메일로 회원가입 하세요.</p>
            <a href="${cp}/app/user/join2.jsp"><button class="email">이메일로 가입하기</button></a>
          </div>
        </div>
      </div>
    </div>
  </body>
  <script type="text/javascript" src="http://developers.kakao.com/sdk/js/kakao.js"></script>
  <script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
  <script>
  Kakao.init("8d4eab699192415f5b2eb69fb710606d");
  function kakaoLogin(){
  	Kakao.Auth.loginForm({
  		scope:"profile_nickname,account_email,gender,age_range,birthday",
  		success:function(authObj){
  			console.log(authObj);
  			Kakao.API.request({
  				url:"/v2/user/me",
  				success:function(res){
  					console.log(res);
  					let email = res.kakao_account.email;
  					location.href="/KakaLoginOK/"+email;
  				}
  			});
  		}
  	});
  }

  var naverLogin = new naver.LoginWithNaverId(
          {
              clientId: "eydQiCAA6MUq8olbhUee", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
              callbackUrl: "http://127.0.0.1:5500", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
              isPopup: false,
              callbackHandle: true
          }
      );	

  naverLogin.init();

  window.addEventListener('load', function () {
      naverLogin.getLoginStatus(function (status) {
          if (status) {
              var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
              
              console.log(naverLogin.user); 
              
              if( email == undefined || email == null) {
                  alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
                  naverLogin.reprompt();
                  return;
              }
          } else {
              console.log("callback 처리에 실패하였습니다.");
          }
      });
  });


  var testPopUp;
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
      
      
  }

  </script>
</body>
</html>