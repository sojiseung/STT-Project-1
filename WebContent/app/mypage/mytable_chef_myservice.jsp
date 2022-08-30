<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
<c:choose>
   <c:when test ="${loginUser != null}">
   <%@ include file="/fix/loginheader.jsp" %>
</c:when>
<c:otherwise>
   <%@ include file="/fix/header.jsp" %>
</c:otherwise>
</c:choose>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Set The Table</title>
    <link rel="stylesheet" href="${cp}/css/mytable_chef_myservice.css">
    <script
      src="https://kit.fontawesome.com/bd7db36e77.js"
      crossorigin="anonymous"
    ></script>
</head>
<body>

    <form action="${cp}/app/service/service_register.jsp">
        <div id="wrap">
            <div id="left">
                <div id="my_img">
                    <p class="chef_spoon">전문가</p>
                </div>
                <div id="change_chef">
                    <img id="change_img" src="${cp}/img/change.png" alt="">
                    <span id="ch_p">의뢰인로 전환</span>
                </div>
                <div id="menu">
                    <p id="line_bottom">내 테이블</p>
                    <div class="sub_menu">
                        <ul class="big_menu">
                                <li class="fun"><a class="big_a" href="">나의 서비스</a><span class="fun2"><i class="fa-solid fa-angle-down question" id="que-5"> </i></span></li>
                            <ul class="small_menu">
                                <li><a class="small_a" href="#">전체 (0)</a></li>
                                <li><a class="small_a" href="#">판매중 (0)</a></li>
                                <li><a class="small_a" href="#">승인대기중 (0)</a></li>
                                <li><a class="small_a" href="#">판매중지 (0)</a></li>
                                <li><a class="small_a" href="#">비승인 (0)</a></li>
                            </ul>
                        </ul>
                        <ul class="big_menu">
                            <li class="fun"><a class="big_a" href="">판매관리</a><span class="fun2"><i class="fa-solid fa-angle-down question" id="que-5"> </i></span></li>
                            <ul class="small_menu">
                                <li><a class="small_a" href="#">전체 (0)</a></li>
                                <li><a class="small_a" href="#">요청사항 미작성 (0)</a></li>
                                <li><a class="small_a" href="#">진행중 (0)</a></li>
                                <li><a class="small_a" href="#">수정요청 (0)</a></li>
                                <li><a class="small_a" href="#">발송중 (0)</a></li>
                                <li><a class="small_a" href="#">완료 (0)</a></li>
                                <li><a class="small_a" href="#">취소 (0)</a></li>
                            </ul>
                        </ul>
                        <ul class="big_menu">
                            <li><a class="big_a" href="">나의 포트폴리오</li>
                        </ul>
                        <ul class="big_menu">
                            <li><a class="big_a" href="">나의 전문가 등급</a></li>
                        </ul>
                        <ul class="big_menu">
                        
                            <li><a class="big_a" href="">전문가 마일리지</a></li>
                        </ul>
                        <ul class="big_menu">
                            <li><a class="big_a" href="">프로필 설정</a></li>
                        </ul>
                    </div>
                </div>
        </div>
            <div id="right">
                <div id="right_top">
                    <p class="top_p"><b>나의 서비스</b></p>
                </div> 
                <div id="search_box">
                    <p>등록된 서비스가 없습니다.<br>
                        서비스를 등록하여 판매를 시작해보세요!
                    </p>
                    <input type="submit" name="click" value="판매 시작하기"></input>
                </div>
            </div>
    </form>
    <div id="end"><%@ include file="/fix/footer.jsp" %></div>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript" src="${cp} }/js/mypage_left.js"></script>
    	<c:if test="${cookie.w.value == 'f'}">
		<script>
			alert("프로젝트 의뢰 실패... 다시 시도해주세요!");
			//자바스크립트로 쿠키삭제 하기
			var deleteCookie = function(name) {document.cookie = name + '=; expires=Thu, 01 Jan 1999 00:00:10 GMT;';  }
			deleteCookie('w');
		</script>
	</c:if>
</body>
</html>