<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath }"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="${cp}/css/footer.css">
    <link rel="stylesheet" href="${cp}/css/common.css">
</head>
<body>
    <footer id="footer" class="inner" >
        <div id="footer_box1">
            <div id="inbox1">
                <ul class="foot_main1">고객센터
                    <li class="footer_top">10:30~18:00(점심시간 13:00~14:00)</li>
                    <li>주말, 공휴일 휴무</li>
                    <li><input type="button" value="1:1문의"></li>
                </ul>  
                <ul class="foot_main">STT
                    <li class="footer_top"><a href="#">STT 메인</a></li>
                    <li><a href="#">Prime</a></li>
                    <li><a href="#">엔터프라이즈</a></li>
                    <li><a href="#">프리랜서클럽</a></li>
                </ul>
                <ul class="foot_main">STT 정보
                    <li class="footer_top"><a href="#">서비스소개</a></li>
                    <li><a href="#">인재영입</a></li>
                </ul>
                <ul class="foot_main">STT 관련사이트
                    <li class="footer_top"><a href="#">STT 블로그</a></li>
                    <li><a href="#">STT 인스타그램</a></li>
                    <li><a href="#">STT 유튜브</a></li>
                </ul>
                <ul class="foot_main2">지원
                    <li class="footer_top"><a href="#">공지사항</a></li>
                    <li><a href="#">자주 묻는 질문</a></li>
                    <li><a href="#">이용약관</a></li>
                    <li id="bold"><a href="#">개인정보처리방침</a></li>
                    <li><a href="#">전문가 센터</a></li>
                </ul>
            </div>
            <div id="image_box">
                <a href="#"><img class="image1" src="${cp}/img/google.png" alt=""></a>
                <a href="#"><img class="image" src="${cp }/img/apple.png" alt=""></a>
            </div>
        </div>
        <div id="footer_box2">
            <div id="inbox2">
                <span>(주)STT 서울시 서초구 역삼로 157, 3층 | 대표 : 1조 | 개인정보관리책임자 : 안재현 | 사업자등록번호 : 123-45-678910 </span>
                <p><span>통신판매업신고 : 2022-서울역삼-1234 | 유료직업소개사업등록번호 : 제2022-9876543-21-0-12345호 | 고객센터 : 1577-1577 | help@ishelp.com</span></p>
                <div id="foot_a">
                    <a href="#">(주)STT는 통신판매중개자이며, 통신판매의 당사자가 아닙니다. 상품, 상품정보, 거래에 관한 의무와 책임은 판매회원에게 있습니다.
                        <p>(주)STT 사이트의 상품/판매회원/중개 서비스/거래 정보, 콘텐츠, UI 등에 대한 무단복제, 전송, 배포, 스크래핑 등의 행위는 저작권법, 콘텐츠산업 진흥법 등 관련법령에 의하여 엄격히 금지됩니다. [안내 보기]</p>
                        <div id="copy"><p>Copyright &copy 2022 STT Inc. All rights reserved.</p></div></a>
                </div>
        </div>
    </footer>
</body>
</html>