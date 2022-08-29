<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
 	<%--    <c:choose>
   <c:when test ="${loginUser != null}">
   <%@ include file="/fix/loginheader.jsp" %>
   </c:when>
   <c:otherwise>
   <%@ include file="/fix/header.jsp" %>
   </c:otherwise>
</c:choose> --%>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>서비스 등록</title>
    <link rel="stylesheet" href="${cp}/css/service_register.css">
</head>
<body>
	<c:if test="${loginUser == null }">
		<script>
			let cp = "${pageContext.request.contextPath}";
			alert("로그인 후 이용하세요!");
			location.replace(cp+"/user/userlogin.us");
		</script>
	</c:if>
<div id="header"></div>
        <p id="service_up">내 서비스 등록</p>
        <form id="serviceForm" method="post" action="${cp}/service/serviceregisterok.sv" enctype="multipart/form-data">
            <div class="wrap">
                <p>서비스 기본 정보</p>
                <div class="info">
                    <ul>
                        <li>
                             <div class="cont_sub">
                             <label class="cont_title" for="">제목</label> <br><br>
                             <input id="servicetitle" name="servicetitle" type="text" size="83" placeholder="서비스를 잘 드러낼 수 있는 제목을 지어주세요." maxlength="30">
                            </div>
                            <div class="cont_sub">
                             <label class="cont_title">회사이름 </label> <br><br>
                             <input id="servicecompany" name="servicecompany" type="text" size="83" placeholder="회사이름을 입력해주세요 ." maxlength="30">
                            </div>
                        </li>
                        <li>
                            <div class="cont_sub">
                             <label class="cont_title" for="">카테고리</label><br><br>
                             <select name="servicecategory" id="servicecategory">
                                <option value="" disabled selected>선택해주세요</option>
                                <option value="IT · 프로그래밍">IT · 프로그래밍</option>
                                <option value="디자인">디자인</option>
                                <option value="마케팅">마케팅</option>
                                <option value="문서 · 글쓰기">문서 · 글쓰기</option>
                                <option value="영상 · 사진 · 음향">영상 · 사진 · 음향</option>
                             </select>
                            </div>
                        </li> 
                        <li>
                            <div class="cont_sub">
                                <label class="cont_title" for="">서비스 타입</label><br><br>
                                <select name="servicetype" class="servicetype">
                                    <option value="" disabled selected>선택해주세요</option>
                                    <option value="신입·초급 : 소스분석/수정">신입·초급 : 소스분석/수정</option>
                                    <option value="중급 : 설계/코딩">중급 : 설계/코딩</option>
                                    <option value="고급 : 최적화 설계">고급 : 최적화 설계</option>
                                    <option value="전문가">전문가</option>
                                 </select>
                                <input  type="number" id="serviceteamscale" name="serviceteamscale" min="1"  size="" placeholder="팀 규모(최소 1명)">
                                <select name="serviceresident" class="serviceresident">
                                    <option value="" disabled selected>상주 여부를 선택해주세요</option>
                                    <option value="상주 가능">상주 가능</option>
                                    <option value="상주 불가능">상주 불가능</option>
                                 </select>
                            </div>
                        </li>
                        <li>
                            <div class="cont_sub">
                                <label class="cont_title" for="">금액</label><br><br> <input id="serviceprice" name="serviceprice" type="text" size="83" placeholder="서비스 금액을 적어주세요.">
                            </div>
                        </li>
                        <li>
                            <div class="cont_sub">
                                <label class="cont_title" for="">작업 기간</label><br><br> <input id="serviceperiod" name="serviceperiod" type="text" size="83" placeholder="작업 기간을 정해주세요. ex) 45일">
                            </div>
                        </li> 
                     </ul>
                </div>
            </div>
            <div class="wrap">
                <p>서비스 설명</p>
                <div class="info">
                    <div class="service_box">
                        <textarea name="serviceinfo" id="serviceinfo" cols="30" rows="10" placeholder="서비스에 대한 설명을 적어주세요."></textarea>
                    </div>
                </div>
            </div>
            <div class="wrap">
                <p>의뢰인 준비사항</p>
                <div class="info">
                    <div class="service_box">
                        <textarea name="servicereadyto" class="servicereadyto" cols="30" rows="10" placeholder="의뢰인 준비 사항을 적어주세요."></textarea>
                    </div>
                </div>
            </div>
            <div class="wrap">
                <p>서비스 썸네일</p>
                <div class="container">
                    <div class="image-upload" id="image-upload">
                            <div class="button" style="display:flex; justify-content:space-between;margin:0 auto; width:300px;">
                                <a href="javascript:upload('chooseFile')">이미지 선택</a>
                                <a href="javascript:cancelFile('chooseFile')">이미지 삭제</a>
                            </div>
                            <input type="file" id="chooseFile" name="chooseFile" accept="image/*" onchange="loadFile(this)">
                        <div class="fileContainer">
                            <div class="fileInput">
                                <p>FILE NAME: </p>
                                <p id="fileName"></p>
                            </div>
                        </div>
                        
                    </div>
                    <div class="image-show" id="image-show"></div>
                </div>
            </div>
            <div id="fin">
                <button id="fin_btn">서비스 등록하기</button>
                <a href="${cp}/service/serviceregister.sv" style="padding: 10px; background-color: #27314c; cursor: pointer; border: solid 1px #333;font-size: 15px; border-radius: 10px; color: #fff;">서비스 취소하기</a>
            </div>
        </form>
        <%@ include file="/fix/footer.jsp" %>
        <script src="http://code.jquery.com/jquery-lastest.js"></script>
</body>
        <script type="text/javascript" src="${cp}/js/service_register.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<!-- jQuery에 주요 업데이트가 있을 경우 콘솔에 경고 표시, 해결할 수 있는 문제들은 스스로 해결 -->
		<script src="https://code.jquery.com/jquery-migrate-1.2.1.js"></script>
		
		<script>
		function upload(name){
			$("#"+name).click();
		}
		//$(제이쿼리선택자).change(함수) : 해당 선택자의 요소에 변화가 일어난다면 넘겨주는 함수 호출
 		$("[type='file']").change(function(e){
 			//e :  파일이 업로드된 상황 자체를 담고있는 객체
 			//.files : 파일태그에 업로드를 한 파일 객체들의 배열
 			let file = e.target.files[0];
 			
 			if(file == undefined){
 				$('#fileName').text("선택된 파일 없음");
 				$('.image-upload .thumbnail').remove();
 				
 			}
 			else {
 				$('#fileName').text(file.name);
 				
 				//["QR","png"]
 				
 				let ext = file.name.split(".").pop(); //마지막 팝!
 				
 				/* //마지막은 length -1 ! 기억하기 !
 				var ar = file.name.split("."); //배열
 				let ext = ar[ar.legth-1]; */ 
 				
 				if(ext == 'jpeg' || ext =='jpg' || ext == 'png' || ext == 'gif' || ext == 'webp'){
 					const reader =new FileReader();
 					//ie = 내부 이벤트
 					reader.onload = function(ie){
 						const img = document.createElement("img");
 						img.setAttribute("style","width: 120px; height: 120px; text-align: center; margin: 0 auto;")
 						img.setAttribute("src",ie.target.result)
 						img.setAttribute("class",'thumbnail');//<img src"???/QR.png" class="thumbnail"
 						document.querySelector(".image-upload").appendChild(img);
 						
 					}
 					reader.readAsDataURL(file);// file의 URL을 읽어온다. 그걸 위 src에 넣어주는 과정
 				}
 				
 			}
 		});
		
		function cancelFile(name){
			if($.browser.msie){
			//[브라우저객체를 이용할때].msie(ms Internet)인지 아닌지...확인
				$("input[name="+name+"]").replaceWith($("input[name="+name+"]").clone(true));
				//기존 태그를 복사할때 데이터까지는 복사를 못하므로 데이터 없는 태그가 덮힌다.
			}
			else{
				$("input[name="+name+"]").val(""); //다른 브라우저는 value로 가진다.
			}
			
			$('#fileName').text("선택된 파일 없음");
			$('.image-upload .thumbnail').remove();
			
		}
		
		
		</script>
</html>