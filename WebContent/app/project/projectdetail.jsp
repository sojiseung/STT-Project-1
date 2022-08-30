<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="cp" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Set The Table | 프로젝트디테일</title>
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
    <link rel="stylesheet" href="${cp}/css/projectdetail.css" />
</head>
<body>
    <c:choose>
      <c:when test="${loginUser != null}">	
        <%@ include file="/fix/loginheader.jsp"%>
      </c:when>
      <c:otherwise> <%@ include file="/fix/header.jsp" %> </c:otherwise>
    </c:choose>
    <section id="projectdetail"class="inner">
      <div id="pjdetail" class="grid">
        <div id="pjtitle">
          <div id="title">IT·프로그래밍 / 웹사이트・모바일앱 신규 제작</div>
          <h1 id="subtitle">${project.projecttitle}</h1>
        </div>
        <div id="withouttitle">
          <div id="pjmethod" class="grid">
            <div class="question">프로젝트 진행 방식</div>
            <div class="answer">
              ${project.projectresident } : 외부 프리랜서 & 사업자와 프로젝트 진행
            </div>
          </div>
          <div id="porb" class="grid">
            <div class="question">개인 / 기업 여부</div>
            <div class="answer">${project.projectpersonal}</div>
          </div>
          <div id="pjcontents" class="grid">
            <div class="question">구체적인 내용 설명</div>
            <pre class="answer">
1. 프로젝트 개요
${project.projectoutline}
              
2. 상세내용
${project.projectdetail}
              
3. 기한 및 예산
- 기한 : ${project.projectdeadline }
- 예산 : 제안 가능
            </pre>
          </div>
          <div class="grid">
            <div class="question">프로젝트 작업 마감 일자</div>
            <div class="answer">
            ${project.projectdeadline }
            </div>
          </div>
          <div class="grid">
            <div class="question">작업 기간(일)</div>
            <div class="answer">
            ${project.projectdeadline}
			<%-- <fmt:parseDate var="sDate" value="${project.regdate }" pattern="yyyy-MM-dd" />
        	<fmt:parseNumber value="${sDate.time / (1000*60*60*24)}" integerOnly="true" var="isDate" scope="request" />
        	<fmt:parseDate var="tDate" value="${project.projectdeadline }" pattern="yyyy-MM-dd" />
        	<fmt:parseNumber value="${tDate.time / (1000*60*60*24)}" integerOnly="true" var="itDate" scope="request" />
        	${itDate - isDate} --%>
			</div>
          </div>
        </div>
      </div>
      <div id="pjoffer">
        <div class="pjbox">
          <div id="rqinfo">
            <div id="requester">
              <div id="imgwrap">
                <img src="${cp}/img/logo2.png" alt="" />
                <div id="cong"></div>
              </div>
              <div>더*****</div>
            </div>
            <div id="money">
              <div id="tax">
                <div>세금계산서</div>
                <div>필요</div>
              </div>
              <div id="budget">
                <div>예산</div>
                <div class="fs24"><span><fmt:formatNumber value="${project.projectbudget}" pattern="#,###"/></span>원</div>
              </div>
            </div>
            <div id="bt">
              <button><span>제안하기</span></button>
              <div id="closingdate">
                마감일까지
                <div>
               ${project.projectdeadline}
                	일
                </div>
                남았습니다.
              </div>
            </div>
          </div>
          <div id="similarpj">
            <div id="sm1">비슷한 프로젝트 의뢰하기</div>
            <div id="sm2">프로젝트 의뢰하고, 딱 맞는 전문가를 만나보세요.</div>
            <a href="" id="sm3"> 비슷한 프로젝트 의뢰하기 </a>
          </div>
        </div>
      </div>
    </section>
    <!-- FOOTER -->
    <%@ include file="/fix/footer.jsp" %>     
</body>
</html>