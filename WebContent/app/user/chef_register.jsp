<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>STT Chef 등록</title>
    <link rel="stylesheet" href="${cp}/css/chef_register.css">
</head>
<body>
<%-- 로그인 유무 js삽입  --%>

    <form action="/user/expertjoin.us">
    <div id="wrap">
        <h1>S T T</h1>
        <div id="chef_info">
            <div id="info_box">
                <h2>딱 이것만 체크하면 등록완료!</h2>
                <p class="p_name">닉네임<span>*</span></p><input type="text" name="expertnickname" placeholder="닉네임 (2~8자까지 입력해주세요.)" maxlength="8">
                <p class="p_name">직업<span>*</span></p>
                <select name="expertjob" id="expertjob" class="selection">
                    <option value="" disabled selected>선택해주세요</option>
                    <option value="1">프리랜서</option>
                    <option value="2">직장인</option>
                    <option value="3">소상공인</option>
                    <option value="4">대학(원)생</option>
                    <option value="5">취업준비생</option>
                 </select>
                <p class="p_name">비즈니스 분야<span>*</span></p>
                <select name="expertmajor" id="expertmajor" class="selection">
                    <option value="" disabled selected>선택해주세요</option>
                    <option value="1">IT 개발</option>
                    <option value="2">디자인/콘텐츠</option>
                    <option value="3">마케팅/광고</option>
                    <option value="4">음식 · 주점</option>
                    <option value="5">미용 · 뷰티</option>
                    <option value="6">기타</option>
                 </select>
                <p class="p_name">관심사 선택<span>*</span></p>
                <select name="expertinterest" id="expertinterest" class="selection">
                    <option value="" disabled selected>선택해주세요</option>
                    <option value="1">IT · 프로그래밍</option>
                    <option value="2">디자인</option>
                    <option value="3">마케팅</option>
                    <option value="4">문서 · 글쓰기</option>
                    <option value="5">영상 · 사진 · 음향</option>
                </select>
                <span id="agree_up"><input type="checkbox" value="서비스 이용약관과 개인 정보 수집/이용에 동의합니다.">서비스 이용약관과 개인 정보 수집/이용에 동의합니다.</span>
            </div>
                <div id="b_sign_up">
                    <button>전문가 등록 완료!</button>
                </div>
            </div>
        </div>
        <p id="good">STT는 회원님의 원활한 서비스 이용에 필요한 정보를<br>
            적절한 전자적 수단을 통해 제공하고 있습니다.</p>
    
</form>

</body>
</html>