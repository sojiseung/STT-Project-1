<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
    <title>프로젝트 등록</title>
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
    <!-- 아이콘 -->
    <script
      src="https://kit.fontawesome.com/bd7db36e77.js"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="${cp}/css/project_request.css">
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
        <p id="service_up">프로젝트 의뢰하기</p>
        <form id="projectForm" method = "post" action="${cp}/project/projectrequestok.pj" enctype="multipart/form-data">
            <div class="wrap">
                <p>프로젝트 기본 정보</p>
                <div class="info">
                    <ul>
                        <li>
                             <div class="cont_sub">
                             <label class="cont_title" for="">제목</label> <br><br>
                             <input id="projecttitle" name="projecttitle" type="text" size="83" placeholder="어떤 프로젝트인지 잘 드러날 수 있는 제목을 지어주세요." maxlength="30">
                            </div>
                            <div class="cont_sub">
                             <label class="cont_title">예산 </label> <br><br>
                             <input id="projectbudget" name="projectbudget" type="text" size="83" placeholder="예산을 적어주세요.(ex. 1,000,000원, 제안 가능)" maxlength="30">
                            </div>
                        </li>
                        <li>
                            <div class="cont_sub">
                             <label class="cont_title" for="">프로젝트 진행 방식(외주, 상주)</label><br><br>
                             <select name="projectresident" id="servicecategory">
                                <option value="외주">외주</option>
                                <option value="상주">상주</option>
                             </select>
                            </div>
                        </li> 
                        <li>
                            <div class="cont_sub">
                             <label class="cont_title" for="">개인 / 기업 여부</label><br><br>
                             <select name="projectpersonal" id="servicecategory">
                                <option value="개인">개인</option>
                                <option value="기업">기업</option>
                             </select>
                            </div>
                        </li> 
                        <li>
                            <div class="cont_sub">
                                <label class="cont_title" for="">작업 기간</label><br><br> 
                                <input id="projectdeadline" name="projectdeadline" type="date">
                            </div>
                        </li> 
                     </ul>
                </div>
            </div>
            <div class="wrap">
                <p>프로젝트 개요</p>
                <div class="info">
                    <div class="service_box">
                        <textarea name="serviceinfo" id="projectouline" cols="30" rows="10" placeholder="전체적인 프로젝트 개요에 대한 설명을 적어주세요."></textarea>
                    </div>
                </div>
            </div>
            <div class="wrap">
                <p>상세내용</p>
                <div class="info">
                    <div class="service_box">
                        <textarea name="servicereadyto" class="projectdetail" cols="30" rows="10" placeholder="프로젝트 상세내용을 적어주세요."></textarea>
                    </div>
                </div>
            </div>
            <div class="wrap">
                <p>프로젝트 썸네일</p>
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
                <button id="fin_btn">프로젝트 등록하기</button>
                <a href="${cp}/project/projectlist.pj" style="padding: 10px; background-color: #27314c; cursor: pointer; border: solid 1px #333;font-size: 15px; border-radius: 10px; color: #fff;">프로젝트 의뢰 취소하기</a>
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