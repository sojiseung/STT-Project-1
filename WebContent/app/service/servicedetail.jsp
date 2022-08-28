<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath }" />
<%@ page errorPage="/app/error/errorpage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Set the table | 서비스상세페이지</title>
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
<!-- 아이콘 -->
<script src="https://kit.fontawesome.com/bd7db36e77.js"
	crossorigin="anonymous"></script>
<!-- css -->
<link rel="stylesheet" href="${cp}/css/common.css" />
<link rel="stylesheet" href="${cp}/css/servicedetail.css" />
<!-- js -->
<script defer src="${cp}/js/servicedetail.js"></script>
</head>
<body>
	<c:choose>
		<c:when test="${loginUser != null}">
			<%@ include file="/fix/loginheader.jsp"%>
		</c:when>
		<c:otherwise>
			<%@ include file="/fix/header.jsp"%>
		</c:otherwise>
	</c:choose>
	<section id="service_detail">
		<div class="inner">
			<!-- MAIN -->
			<div class="main_detail">
				<img src="${cp}/file/${file.saveFilename}" alt="" />
				<section class="ratingscore">
					<div class="starrating">
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
					</div>
					<div class="score">4.9</div>
					<div class="ratingcnt">(290개의 평가)</div>
				</section>
				<nav class="sticky">
					<div class="flex">
						<div id="f1" class="ff1" onclick="move1()">서비스 설명</div>
						<div id="f2" class="ff" onclick="move2()">의뢰인 준비사항</div>
						<div id="f3" class="ff" onclick="move3()">취소·환불</div>
						<div id="f4" class="ff" onclick="move4()">서비스 평가</div>
					</div>
				</nav>
				<section id="explain" class="size">
					<div id="book1" class="h60"></div>
					<div>서비스설명</div>
					<pre class="exp">
					${service.serviceinfo}
              <!-- 2021년 크몽어워즈 수상 "메이크홈즈"
              보러가기

              대상 수상팀다운 보답 반드시 해드리겠습니다!

              안녕하세요. 반응형홈페이지제작 전문 메이크홈즈입니다.
              크몽에서 가장 합리적인 가격에 반응형홈페이지제작을 의뢰해 보세요.
              예전에는 PC와 모바일 버전을 각각 홈페이지 제작을 해야 하는 번거로움이 있었지만,
              메이크홈즈는 한번의 홈페이지제작으로 모바일과 PC에서 동시에 사용이 가능한 반응형홈페이지제작이 가능합니다.
              2021년 크몽어워즈 수상 "메이크홈즈"
              보러가기

              대상 수상팀다운 보답 반드시 해드리겠습니다!

              안녕하세요. 반응형홈페이지제작 전문 메이크홈즈입니다.
              크몽에서 가장 합리적인 가격에 반응형홈페이지제작을 의뢰해 보세요.
              예전에는 PC와 모바일 버전을 각각 홈페이지 제작을 해야 하는 번거로움이 있었지만,
              메이크홈즈는 한번의 홈페이지제작으로 모바일과 PC에서 동시에 사용이 가능한 반응형홈페이지제작이 가능합니다.
              2021년 크몽어워즈 수상 "메이크홈즈"
              보러가기

              대상 수상팀다운 보답 반드시 해드리겠습니다!

              안녕하세요. 반응형홈페이지제작 전문 메이크홈즈입니다.
              크몽에서 가장 합리적인 가격에 반응형홈페이지제작을 의뢰해 보세요.
              예전에는 PC와 모바일 버전을 각각 홈페이지 제작을 해야 하는 번거로움이 있었지만,
              메이크홈즈는 한번의 홈페이지제작으로 모바일과 PC에서 동시에 사용이 가능한 반응형홈페이지제작이 가능합니다. -->
              
              </pre>
				</section>
				<section id="prepare" class="size">
					<div id="book2" class="h60"></div>
					<div>의뢰인 준비사항</div>
					<pre class="exp">
					${service.servicereadyto }
<!--               벤치마킹하실 사이트 주소 (링크로 전달)
              기획중인 페이지수 (구성한 대메뉴-하위메뉴)
              꼭 필요한 기능(결제기능,실시간상담 등)
              홈페이지 작업에 사용될 자료 --></pre>
				</section>
				<section id="cancel" class="size">
					<div id="book3" class="h60"></div>
					<div>취소 및 환불규정</div>
					<pre class="exp">
              가.기본 환불 규정
              1.전문가와 의뢰인의 상호 협의하에 청약 철회 및 환불이 가능합니다.
              2.작업이 완료된 이후 또는 자료,프로그램 등 서비스가 제공된 이후에는 환불이 불가합니다.
              (소비자보호법 17조 2항의 5조. 용역 또는 「문화산업진흥 기본법」 제2조 제5호의 디지털콘텐츠의 제공이 개시된 경우에 해당)

              나.전문가 책임 사유
              1.전문가의 귀책사유로 당초 약정했던 서비스 미이행 혹은 보편적인 관점에서 심각하게 잘못 이행한 경우 결제 금액 전체 환불이 가능합니다.

              다.의뢰인 책임 사유
              1.서비스 진행 도중 의뢰인의 귀책사유로 인해 환불을 요청할 경우, 사용 금액을 아래와 같이 계산 후 총 금액의 10%를 공제하여 환불합니다.
              총 작업량의 1/3 경과 전:이미 납부한 요금의 2/3 해당액
              총 작업량의 1/2 경과 전:이미 납부한 요금의 1/2 해당액
              총 작업량의 1/2 경과 후:반환하지 않음
            </pre>
				</section>
				<section id="assessment">
					<div id="book4">
						<div>서비스 평가</div>
						<section class="downratingscore">
							<div class="starrating">
								<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
							</div>
							<div class="score">4.9</div>
							<div class="ratingcnt">(290개의 평가)</div>
						</section>
						<div id="realrating">실제 STT를 통해 구매한 이용자들이 남긴 평가입니다.</div>
					</div>
					<section>
						<div id="realrevieworderby">
							<div>서비스후기290개</div>
							<div></div>
						</div>
						<div>
							<div></div>
							<div></div>
						</div>
					</section>
				</section>
			</div>
			<!-- SUB -->
			<aside class="sub_detail">
				<section id="likecnt">
					<div></div>
					<form action="">
						<button id="like" onclick="change()">
							<i id="heart" class="fa-regular fa-heart"></i> <span>2552</span>
						</button>
					</form>
				</section>
				<h1>${service.servicetitle }</h1>
				<section id="purchase">
					<div id="purchaseinfo">
						<div class="pinfo1">
							<div class="price">
								${service.serviceprice}원 <span class="vat">(VAT 포함가)</span>
							</div>
							<div class="info1">${service.servicetype }</div>
							<div class="info2">${service.serviceresident }<br> 
											팀 규모 : ${service.serviceteamscale}명
							</div>
							<div class="period">
								<span>작업일</span> <span>${service.serviceperiod}</span>
							</div>
								<button onclick="location.href='${cp}/app/service/serviceorder.jsp'"	
								role="button" color="prime" class="pc">
									<span class="cppc"><span>구매하기</span></span>
								</button>
						</div>
					</div>
				</section>
				<section id="purchase2">
					<img src="${cp}/img/escro.png" alt="" />
					<h5>서비스 제공이 완료된 이후에 전문가에게 결제 대금이 전달됩니다.</h5>
				</section>
				<section id="purchase3">
					<div>
						<a href=""> <img src="${cp}/img/setthetable.png" alt="" />
							<h1>${service.servicecompany}</h1>
						</a>
					</div>
					<div>
						<div class="resptime">
							<i class="fa-regular fa-clock"></i> 연락 가능 시간 : 9시 ~ 20시
						</div>
						<button>
							<span>쪽지 보내기</span>
						</button>
					</div>
				</section>
			</aside>
		</div>
	</section>
	<!-- FOOTER -->
	<%@ include file="/fix/footer.jsp"%>
</body>
  <script>
    const header = document.querySelector("header");
    header.style.position = "relative";
  </script>
</html>