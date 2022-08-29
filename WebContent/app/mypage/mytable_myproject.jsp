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
    <title>내 테이블</title>
    <link rel="stylesheet" href="${cp}/css/mytable_my_project.css">
    <script
      src="https://kit.fontawesome.com/bd7db36e77.js"
      crossorigin="anonymous"
    ></script>
</head>
<body>
    <form action="">
        <div id="wrap">
            <div id="left">
                <div id="my_img">
                    <p class="chef_spoon">의뢰인</p>
                </div>
                <div id="change_chef">
                    <img id="change_img" src="${cp}/img/change.png" alt="">
                    <span id="ch_p">쉐프로 전환</span>
                </div>
                <div id="menu">
                    <p id="line_bottom">내 테이블</p>
                        <div class="sub_menu">
                            <ul class="big_menu">
                                    <li class="fun"><a class="big_a" href="">내 프로젝트</a><span class="fun2"><i class="fa-solid fa-angle-down question" id="que-5"> </i></span></li>
                                <ul class="small_menu">
                                    <li><a class="small_a" href="#">전체 (0)</a></li>
                                    <li><a class="small_a" href="#">승인대기중 (0)</a></li>
                                    <li><a class="small_a" href="#">요청중 (0)</a></li>
                                    <li><a class="small_a" href="#">마감 (0)</a></li>
                                    <li><a class="small_a" href="#">비승인 (0)</a></li>
                                </ul>
                            </ul>
                            <ul class="big_menu">
                                <li class="fun"><a class="big_a" href="">구매관리</a><span class="fun2"><i class="fa-solid fa-angle-down question" id="que-5"> </i></span></li>
                                <ul class="small_menu">
                                    <li><a class="small_a" href="#">전체 (0)</a></li>
                                    <li><a class="small_a" href="#">요청사항 미작성 (0)</a></li>
                                    <li><a class="small_a" href="#">진행중 (0)</a></li>
                                    <li><a class="small_a" href="#">수정요청 (0)</a></li>
                                    <li><a class="small_a" href="#">발송중 (0)</a></li>
                                    <li><a class="small_a" href="#">완료 (0)</a></li>
                                    <li><a class="small_a" href="#">평가 미작성 (0)</a></li>
                                    <li><a class="small_a" href="#">취소 (0)</a></li>
                                </ul>
                            </ul>
                            <ul class="big_menu">
                                <li><a class="big_a" href="">구매 컨텐츠 관리(전자책, VOD)</li>
                            </ul>
                            <ul class="big_menu">
                                <li><a class="big_a" href="">STT 캐시</a></li>
                            </ul>
                            <ul class="big_menu">
                                <li><a class="big_a" href="">캐시 충전</a></li>
                            </ul>
                            <ul class="big_menu">
                                <li><a class="big_a" href="">결제 내역</a></li>
                            </ul>
                            <ul class="big_menu">
                                <li><a class="big_a" href="">프로필 설정</a></li>
                            </ul>
                        </div>
                    </div>
            </div>
            <div id="right">
                <div id="right_top">
                    <p class="top_p"><b>내 프로젝트</b></p>
                </div>
                <div id="search_box">
                    <img src="" alt="">
                    <p>등록된 프로젝트가 없습니다.<br>
                        프로젝트를 의뢰하여 전문가들의 제안을 받아보세요!
                    </p>
                    <input type="submit" name="click" value="프로젝트 의뢰하기"></input>
                </div>
            </div>
    </form>
    <div id="end"><%@ include file="/fix/footer.jsp" %></div>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript" src="${cp}/js/mypage_left.js"></script>
</body>
</html>