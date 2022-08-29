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
    <link rel="stylesheet" href="${cp}/css/mytable_pay_management.css">
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
                                <div class="small_menu">
                                <ul>
                                    <li><a class="small_a" href="#">전체 (0)</a></li>
                                    <li><a class="small_a" href="#">승인대기중 (0)</a></li>
                                    <li><a class="small_a" href="#">요청중 (0)</a></li>
                                    <li><a class="small_a" href="#">마감 (0)</a></li>
                                    <li><a class="small_a" href="#">비승인 (0)</a></li>
                                </ul>
                                </div>
                            </ul>
                            <ul class="big_menu">
                                <li class="fun"><a class="big_a" href="">구매관리</a><span class="fun2"><i class="fa-solid fa-angle-down question" id="que-5"> </i></span></li>
                                <div class="small_menu">
                                <ul>
                                    <li><a class="small_a" href="#">전체 (0)</a></li>
                                    <li><a class="small_a" href="#">요청사항 미작성 (0)</a></li>
                                    <li><a class="small_a" href="#">진행중 (0)</a></li>
                                    <li><a class="small_a" href="#">수정요청 (0)</a></li>
                                    <li><a class="small_a" href="#">발송중 (0)</a></li>
                                    <li><a class="small_a" href="#">완료 (0)</a></li>
                                    <li><a class="small_a" href="#">평가 미작성 (0)</a></li>
                                    <li><a class="small_a" href="#">취소 (0)</a></li>
                                </ul>
                                </div>
                            </ul>
                            <ul class="big_menu">
                                <li><a class="big_a" href="">구매 컨텐츠 관리(전자책, VOD)</a></li>
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
                    <p class="top_p"><b>결제 내역</b></p>
                    <div id="input_top">
                        <input type="text" placeholder="2017-01-01" size="12"
                        onfocus="(this.type='date')"
                        onblur="(this.type='text')"> &nbsp; ~ &nbsp;
                        <input type="text" placeholder="2022-01-01" size="12"
                        onfocus="(this.type='date')"
                        onblur="(this.type='text')">&nbsp;
                        <input type="submit" name="click" value="조회"></input> 
                    </div> 
                </div> 
                <div id="search_box">
                    <p>내역이 없습니다!</p>
                </div>
                <div id="more">
                    <ul>
                        <li id="more_1"><b>꼭 확인해주세요!</b></li>
                        <ul>
                            <li class="more_2">세금계산서는 거래 주체인 전문가가 의뢰인에게 발행합니다.</li>
                            <li class="more_2">세금계산서는 사업자 인증 받은 기업전문가에게 요청할 수 있습니다.</li>
                            <li class="more_2">이벤트 쿠폰 사용 금액은 할인된 금액이기 때문에 세금계산서에 포함되지 않습니다.</li>
                            <li class="more_2">거래명세서는 결제가 완료되었음을 증명하는 용도로만 활용 가능하며 세무상의 지출증빙 효력이 없습니다.</li>
                            <li class="more_2">현금영수증은 개인의 소득공제용으로만 사용 가능하며, 결제 당시 지충 증빙용으로 선택했더라도 매입세액공제를 받으실 수 없습니다. </li>
                        </ul>
                    </ul>
                </div>
            </div>
    </form>
    <div id="end"><%@ include file="/fix/footer.jsp" %></div>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript" src="${cp}/js/mypage_left.js"></script>
    
</body>
</html>