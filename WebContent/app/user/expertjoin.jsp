<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="cp" value="${pageContext.request.contextPath }"/>
	<c:if test="${loginUser == null }">
		<script>
			let cp = "${pageContext.request.contextPath}";
			alert("로그인 후 이용하세요!");
			location.replace(cp+"/user/userlogin.us");
		</script>
	</c:if>  
	<form action = "/user/expertjoin.us">
		<div>
		닉네임 <input type ="text" name ="expertnickname" id="expertnickname"/>
		</div>
		<div>
		자기소개 <input type ="text" name ="expertintro" id="expertintro"/>
		</div>
	
		<div>
		가능지역    
		     <span class="gender_pointer">서울 </span
                ><input
                  type="radio"
                  name="expertworkplace"
                  value="서울"
                  class="gender_pick"
                />
                <span class="gender_pointer">경기</span
                ><input
                  type="radio"
                  name="expertworkplace"
                  value="경기도"
                  class="gender_pick"
                />
                <span class="gender_pointer">인천</span
                ><input
                  type="radio"
                  name="expertworkplace"
                  value="인천"
                  class="gender_pick"
                />
                <span class="gender_pointer">경상도</span
                ><input
                  type="radio"
                  name="expertworkplace"
                  value="경상도"
                  class="gender_pick"
                />
                <span class="gender_pointer">전라도</span
                ><input
                  type="radio"
                  name="expertworkplace"
                  value="전라도"
                  class="gender_pick"
                />
                <span class="gender_pointer">제주도</span
                ><input
                  type="radio"
                  name="expertworkplace"
                  value="제주도"
                  class="gender_pick"
                />
		</div>
		
		<div>
		전공 
		     <span class="gender_pointer">it프로그래밍</span
                ><input
                  type="radio"
                  name="expertmajor"
                  value="it프로그래밍"
                  class="gender_pick"
                />
                     <span class="gender_pointer">디자인</span
                ><input
                  type="radio"
                  name="expertmajor"
                  value="디자인"
                  class="gender_pick"
                />
                     <span class="gender_pointer">마케팅</span
                ><input
                  type="radio"
                  name="expertmajor"
                  value="마케팅"
                  class="gender_pick"
                />
		
		</div>
		<div>
	상세전공 
	     <span class="gender_pointer">웹사이트신규제작</span
                ><input
                  type="radio"
                  name="expertmajorpart"
                  value="웹사이트신규제작"
                  class="gender_pick"
                />
                     <span class="gender_pointer">웹사이트 개선 및 버그수정</span
                ><input
                  type="radio"
                  name="expertmajorpart"
                  value="웹사이트 개선 및 버그수정"
                  class="gender_pick"
                />
                     <span class="gender_pointer">모바일앱 신규제작</span
                ><input
                  type="radio"
                  name="expertmajorpart"
                  value="모바일앱 신규제작"
                  class="gender_pick"
                />
                     <span class="gender_pointer">모바일앱 개선 및 버그 수정</span
                ><input
                  type="radio"
                  name="expertmajorpart"
                  value="모바일앱 개선 및 버그 수정"
                  class="gender_pick"
                />
                  
		</div>
		<div>
		상세기술
		<span class="gender_pointer">워드프레스</span
                ><input
                  type="radio"
                  name="expertmajortechnic"
                  value="워드프레스"
                  class="gender_pick"
                />
		<span class="gender_pointer">Java</span
                ><input
                  type="radio"
                  name="expertmajortechnic"
                  value="Java"
                  class="gender_pick"
                />
		<span class="gender_pointer">Javascript</span
                ><input
                  type="radio"
                  name="expertmajortechnic"
                  value="Javascript"
                  class="gender_pick"
                />
		<span class="gender_pointer">Python</span
                ><input
                  type="radio"
                  name="expertmajortechnic"
                  value="Python"
                  class="gender_pick"
                />
		<span class="gender_pointer">c#</span
                ><input
                  type="radio"
                  name="expertmajortechnic"
                  value="c#"
                  class="gender_pick"
                />
                  
            
		</div>
		<div>
		 프리랜서 유무
		 <span class="gender_pointer">프리랜스</span
                ><input
                  type="radio"
                  name="freelancercheck"
                  value="프리랜스"
                  class="gender_pick"
                />
         <span class="gender_pointer">일반</span
                ><input
                  type="radio"
                  name="freelancercheck"
                  value="일반"
                  class="gender_pick"
                />       
		 
		</div>
		<div>
			상주여부 
				 <span class="gender_pointer">상주</span
                ><input
                  type="radio"
                  name="expertresident"
                  value="상주"
                  class="gender_pick"
                />
         <span class="gender_pointer">외주</span
                ><input
                  type="radio"
                  name="expertresident"
                  value="외주"
                  class="gender_pick"
                />       
		</div>
		            <div class="join_button">
              <input
                type="submit"
                value="버튼만 누르면 가입완료!"
                class="join_btn"
              />
            </div>
	</form>
</body>
</html>