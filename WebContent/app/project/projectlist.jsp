<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="cp" value="${pageContext.request.contextPath }"/>
<%@ page errorPage = "/app/error/errorpage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Set the table | 프로젝트</title>
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
    <!-- css -->
    <link rel="stylesheet" href="${cp}/css/common.css" />
    <link rel="stylesheet" href="${cp}/css/project.css" />
    <!-- JS -->
    <script defer src="${cp}/js/project.js"></script>
</head>
<body>
	<c:if test="${cookie.w.value == 'f'}">
		<script>
			alert("프로젝트 의뢰 실패... 다시 시도해주세요!");
			//자바스크립트로 쿠키삭제 하기
			var deleteCookie = function(name) {document.cookie = name + '=; expires=Thu, 01 Jan 1999 00:00:10 GMT;';  }
			deleteCookie('w');
		</script>
	</c:if>
    <c:choose>
      <c:when test="${loginUser != null}">	
        <%@ include file="/fix/loginheader.jsp"%>
      </c:when>
      <c:otherwise> <%@ include file="/fix/header.jsp" %> </c:otherwise>
    </c:choose>
    <section id="pjbanner">
      <div class="inner">
     	 <a href="${cp}/app/project/project_request.jsp">
       	 	<img src="${cp}/img/registerPJ.png" alt="" />
	     </a>
      </div>
      <div id="pjlist" class="inner">
        <p>프로젝트 리스트</p>
        <div id="project_list">
          <div id="left_menu">
            <h4>카테고리</h4>
            <ul class="main_category">
              <li>
                <div>
                  <a href="">IT·프로그래밍</a>
                  <i class="fa-solid fa-angle-down question" id="que-1"></i>
                </div>
                <ul class="answer" id="ans-1">
                  <a href=""><li>웹사이트 신규 제작</li></a>
                  <a href=""><li>모바일앱 신규 제작</li></a>
                  <a href=""> <li>프로그램 개발</li></a>
                  <a href=""> <li>임베디드 시스템</li></a>
                  <a href=""> <li>게임</li></a>
                  <a href=""> <li>기획</li></a>
                  <a href=""> <li>데이터 사이언스</li></a>
                </ul>
              </li>
            </ul>
            <ul class="main_category">
              <li>
                <div>
                  <a href="">디자인</a>
                  <i class="fa-solid fa-angle-down question" id="que-2"> </i>
                </div>
                <ul class="answer" id="ans-2">
                  <a href=""><li>로고디자인</li></a>
                  <a href=""> <li>캘리그라피</li></a>
                  <a href=""> <li>포토샵 편집</li></a>
                  <a href=""><li>블로그·카페</li></a>
                  <a href=""><li>앱 디자인</li></a>
                  <a href=""><li>명함 디자인</li></a>
                </ul>
              </li>
            </ul>
            <ul class="main_category">
              <li>
                <div>
                  <a href="">영상·사진·음향</a>
                  <i class="fa-solid fa-angle-down question" id="que-3"> </i>
                </div>
                <ul class="answer" id="ans-3">
                  <li>영상제작</li>
                  <li>사진촬영</li>
                  <li>더빙·녹음</li>
                  <li>음악·사운드</li>
                  <li>엔터테이너</li>
                </ul>
              </li>
            </ul>
            <ul class="main_category">
              <li>
                <div>
                  <a href="">마케팅</a>
                  <i class="fa-solid fa-angle-down question" id="que-4"> </i>
                </div>
                <ul class="answer" id="ans-4">
                  <li>종합광고대행사</li>
                  <li>체험단마케팅</li>
                  <li>포털마케팅</li>
                  <li>SNS 마케팅</li>
                  <li>앱마케팅</li>
                </ul>
              </li>
            </ul>
            <ul class="main_category">
              <li>
                <div>
                  <a href="">번역·통역</a>
                  <i class="fa-solid fa-angle-down question" id="que-5"> </i>
                </div>
                <ul class="answer" id="ans-5">
                  <li></li>
                </ul>
              </li>
            </ul>
            <ul class="main_category">
              <li>
                <div>
                  <a href="">문서·글쓰기</a>
                  <i class="fa-solid fa-angle-down question" id="que-6"> </i>
                </div>
                <ul class="answer" id="ans-6">
                  <li></li>
                </ul>
              </li>
            </ul>
            <ul class="main_category">
              <li>
                <div>
                  <a href="">비즈니스컨설팅</a>
                  <i class="fa-solid fa-angle-down question" id="que-7"> </i>
                </div>
                <ul class="answer" id="ans-7">
                  <li></li>
                </ul>
              </li>
            </ul>
            <ul class="main_category">
              <li>
                <div>
                  <a href="">레슨·실무교육</a>
                  <i class="fa-solid fa-angle-down question" id="que-8"> </i>
                </div>
                <ul class="answer" id="ans-8">
                  <li></li>
                </ul>
              </li>
            </ul>
            <h4 id="pm">프로젝트 진행 방식</h4>
            <form action="">
              <div>
                <label
                  ><input type="checkbox" name="method" value="게임" />
                  상주</label
                >
              </div>
              <div>
                <label
                  ><input type="checkbox" name="method" value="그림" />
                  외주</label
                >
              </div>
            </form>
          </div>
          <form action="${cp }project/projectlist.pj">
            <div id="request_list">
              <div id="pj_search">
                <div id="project_search">
                  <input
                    type="text"
                    name="search"
                    id="search_project"
                    autocomplete="off"
                    placeholder="키워드를 검색하세요."
                    value="${keyword == null ? '' : keyword}"
                  />
                  <i class="fa-solid fa-magnifying-glass" onclick="search()"></i>
                </div>
                <div id="order_by">
                  <span>최신등록순</span>
                  <span>마감임박순</span>
                  <span>고가순</span>
                </div>
              </div>
              
              <c:forEach items="${list}" var="project" varStatus="p">
              <div id="request_list_group1" class="request_list_group">
                <a href="${cp}/project/projectdetail.pj?projectidx=${project.projectidx}&page=${page}&keyword=${keyword}">
                  <div class="img_wrapper">
                    <div class="img_size">
                      <c:forEach items="${flist}" var="file" varStatus="f">
                      <c:if test ="${f.index == p.index }">                    
                      <img src="${cp}/file/${file.saveFilename}" alt="" />
                      </c:if>
                      </c:forEach>
                    </div>
                  </div>
                  <div class="request_detail">
                    <div class="request_detail1">
                      <div class="d-day"><span>D-7</span></div>
                      <div class="rqtitle">
                        <span>[${project.projectresident}]${project.projecttitle}</span>
                      </div>
                      <div class="rqoption">
                      <c:choose>
                      <c:when test="${project.projectresident == '상주'}">
                        <img src="${cp}/img/location.png" alt="" />
                        <span>상주</span>
                      </c:when>
                      <c:otherwise>
                        <img src="${cp}/img/os.png" alt="" />
                        <span>외주</span>
                      </c:otherwise>
                      </c:choose>
                        <img src="${cp}/img/tax.png" class="ml" alt="" />
                        <span>세금계산서</span>
                      </div>
                    </div>
                    <div class="request_detail2">
                      IT·프로그래밍
                    </div>
                    <div class="request_detail3">
                      ■마감일: ${project.projectdeadline}■예산: <fmt:formatNumber value="${project.projectbudget}" pattern="#,###"/>원 ■상세 업무 내용-${project.projectdetail}※ 
                    </div>
                    <div class="request_detail4">
                      <div class="salary">
                        <div class="cg">예산</div>
                        <div><fmt:formatNumber value="${project.projectbudget}" pattern="#,###"/>원</div>
                      </div>
                      <div class="period">
                        <div class="cg">진행기간</div>
                        <div>90일</div>
                      </div>
                      <div class="nowoffer">
                        <div class="cg">받은 제안</div>
                        <div>${project.projectoffercount}개</div>
                      </div>
                    </div>
                  </div>
                </a>
              </div>
              </c:forEach>
              
              <div class="pagination">
              	<c:if test="${startPage != 1 }">
                	<a href="${cp}/project/projectlist.pj?page=${startPage - 1}&keyword=${keyword}">&lt;</a>
              	</c:if>
              	<c:forEach begin="${startPage}" end="${endPage}" var="i">
              		<c:choose>
              			<c:when test="${page ==i}">
		    	            <span class="nowPage">${i}</span>
              			</c:when>
              			<c:otherwise>
    		    	        <a href="${cp}/project/projectlist.pj?page=${i}&keyword=${keyword}">${i}</a>
              			</c:otherwise>
              		</c:choose>
              	</c:forEach>
              	<c:if test="${endPage != totalPage}">
	                <a href="${cp}/project/projectlist.pj?page=${endPage + 1}&keyword=${keyword}">&gt;</a>
              	</c:if>
              </div>
            </div>
          </form>
        </div>
      </div>
    </section>
    <!-- FOOTER -->
    <%@ include file="/fix/footer.jsp" %>    
</body>
<script>
	function search(){
		const q = document.getElementById("search_project");
		location.href = "${cp}/project/projectlist.pj?keyword="+q.value;
	}
</script>
</html>