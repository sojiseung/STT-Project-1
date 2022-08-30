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
    <link rel="stylesheet" href="${cp}/css/mytable_chef_sale_management.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
                    <p class="chef_spoon">전문가</p>
                </div>
                <div id="change_chef" onclick="location.href='${cp}/app/mypage/mytable_buy_management.jsp'">
                    <img id="change_img" src="${cp}/img/change.png" alt="">
                    <span id="ch_p">의뢰인로 전환</span>
                </div>
                <div id="menu">
                    <p id="line_bottom">내 테이블</p>
                        <div class="sub_menu">
                            <ul class="big_menu">
                                    <li class="fun"><a class="big_a" href="${cp}/app/mypage/mytable_chef_myservice.jsp">나의 서비스</a><span class="fun2"><i class="fa-solid fa-angle-down question" id="que-5"> </i></span></li>
                                <ul class="small_menu">
                                    <li><a class="small_a" href="#">전체 (0)</a></li>
                                    <li><a class="small_a" href="#">판매중 (0)</a></li>
                                    <li><a class="small_a" href="#">승인대기중 (0)</a></li>
                                    <li><a class="small_a" href="#">판매중지 (0)</a></li>
                                    <li><a class="small_a" href="#">비승인 (0)</a></li>
                                </ul>
                            </ul>
                            <ul class="big_menu">
                                <li class="fun"><a class="big_a" href="${cp}/app/mypage/mytable_chef_sale_management.jsp">판매관리</a><span class="fun2"><i class="fa-solid fa-angle-down question" id="que-5"> </i></span></li>
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
                                <li><a class="big_a" href="">나의 포토폴리오</li>
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
                    <p class="top_p"><b>판매관리</b></p>
                    <div id="input_top">
                        <input type="text" placeholder="닉네임 혹은 전화번호를 입력하세요." size="30">
                        <button type="submit"><i class="fas fa-search"></i></button>
                    </div> 
                </div>
                <div id="search_box">
                    <p>내역이 없습니다.</p>
                </div>
            </div>
    </form>
    <div id="end"><%@ include file="/fix/footer.jsp" %></div>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript" src="${cp}/js/mypage_left.js"></script>
</body>
</html>