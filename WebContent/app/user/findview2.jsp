<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 확인 STT</title>
<!-- 파비콘 -->
<link rel="icon" href="${cp}/img/favicon.ico" />
<!-- 글꼴 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@100;200;300;400;500;600;700&display=swap"
	rel="stylesheet" />
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css"
	rel="stylesheet" />
<link rel="stylesheet" href="${cp}/css/modifypw.css" />
<link rel="stylesheet" href="${cp}/css/common.css" />
<%--   <script defer src="${cp}/js/modifypw.js"></script> --%>
</head>
<body>
	<c:set var="userid" value="${userid}" />
	<div class="container">
		<img src="${cp}/img/logo.png" alt="">
		<div class="header">
			<h2>안녕하세요, STT입니다!</h2>
		</div>
		<div class="center">
			<div class="center_menu">
				<h3 class="check_wan">회원님의 아이디 입니다.</h3>
				<form name="modifyPwForm" action="${cp}/app/user/findinfo.jsp"
					method="post" onsubmit="return sendit()">
					<div class="pw">
						<div class="input_wrapper" id="userpw1">
							<p style="text-align : center">${userid}</p> <!-- 이부분 가운데 정렬 및 폰트 사이즈 키워주면 좋을것 같아요~! -->
							<c:remove var="userid"/>
							<%
								request.getSession().removeAttribute("userid");
							%>
						</div>

					</div>
					<div class="join_button">
						<input type="submit" value="확인" class="join_btn" />
					</div>
					<input type="submit" value="로그인 하러 가기" class="join_btn" />
				</form>
			</div>
		</div>
	</div>

	<script>
      function All(selectAll) {
        const checkboxes = document.getElementsByName("chk");

        checkboxes.forEach((checkbox) => {
          checkbox.checked = selectAll.checked;
        });
      }
    </script>
</body>
</html>