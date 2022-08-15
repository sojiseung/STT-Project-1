<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath }"/>
<%@ page errorPage = "/app/error/errorpage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Set the table | IT · 프로그래밍</title>
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
    <link rel="stylesheet" href="${cp}/css/servicelist.css" />
    <!-- JS -->
    <script defer src="${cp}/js/servicelist.js"></script>
</head>
<body>
<%@ include file="/fix/header.jsp" %>
    <section id="pjbanner">
      <div class="inner">
        <img src="${cp}/img/topbanner.png" alt="" />
      </div>
      <div id="pjlist" class="inner">
        <p>IT · 프로그래밍</p>
        <div id="project_list">
          <div id="left_menu">
            <img src="${cp}/img/leftbanner.png" alt="" />
            <ul class="main_category">
              <li>
                <div>
                  <a href="">모바일 앱</a>
                  <i class="fa-solid fa-angle-down question" id="que-1"></i>
                </div>
                <ul class="answer" id="ans-1">
                  <a href=""><li>전체</li></a>
                  <a href=""><li>네이티브앱</li></a>
                  <a href=""> <li>하이브리드앱·웹앱</li></a>
                  <a href=""> <li>앱 개선·버그수정</li></a>
                </ul>
              </li>
            </ul>
            <ul class="main_category">
              <li>
                <div>
                  <a href="">웹</a>
                  <i class="fa-solid fa-angle-down question" id="que-2"> </i>
                </div>
                <ul class="answer" id="ans-2">
                  <a href=""><li>전체</li></a>
                  <a href=""> <li>웹사이트 제작</li></a>
                  <a href=""> <li>웹사이트 제작(CMS)</li></a>
                  <a href=""><li>웹사이트 개선·버그수정</li></a>
                  <a href=""><li>프론트엔드·퍼블리싱</li></a>
                  <a href=""><li>랜딩페이지</li></a>
                  <a href=""><li>검색최적화·SEO</li></a>
                  <a href=""><li>애널리틱스</li></a>
                </ul>
              </li>
            </ul>
            <ul class="main_category">
              <li>
                <div>
                  <a href="">프로그램</a>
                  <i class="fa-solid fa-angle-down question" id="que-3"> </i>
                </div>
                <ul class="answer" id="ans-3">
                  <li>전체</li>
                  <li>일반프로그램</li>
                  <li>VBA·매크로</li>
                  <li>프로그램 개선·버그수정</li>
                  <li>기타</li>
                </ul>
              </li>
            </ul>
            <ul class="main_category">
              <li>
                <div>
                  <a href="">쇼핑몰·커머스</a>
                  <i class="fa-solid fa-angle-down question" id="que-4"> </i>
                </div>
                <ul class="answer" id="ans-4">
                  <li>전체</li>
                  <li>웹사이트 제작</li>
                  <li>웹사이트 제작(CMS)</li>
                  <li>웹사이트 개선·버그수정</li>
                </ul>
              </li>
            </ul>
            <ul class="main_category">
              <li>
                <div>
                  <a href="">워드프레스</a>
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
                  <a href="">데이터</a>
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
                  <a href="">게임·AR·VR</a>
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
                  <a href="">메타버스</a>
                  <i class="fa-solid fa-angle-down question" id="que-8"> </i>
                </div>
                <ul class="answer" id="ans-8">
                  <li></li>
                </ul>
              </li>
            </ul>
          </div>
          <form action="">
            <div id="service_list">
              <div id="pj_search">
                <div id="project_search">
                  <input
                    type="text"
                    name="search"
                    id="search_project"
                    autocomplete="off"
                    placeholder="키워드를 검색하세요."
                  />
                  <i class="fa-solid fa-magnifying-glass"></i>
                </div>
                <div id="order_by">
                  <span id="popularity">인기순</span>
                  <span id="newreg">신규등록순</span>
                  <span id="score">평점순</span>
                </div>
              </div>
              <div id="service_items">
                <div class="fourlist">
                  <div class="withouti">
                    <a href="" class="service_item">
                      <div class="imgbox">
                        <img src="${cp}/img/pj1.jpg" alt="" />
                        <!-- 하트 눌리면 좋아요 +1 -->
                      </div>
                      <div class="sv_content">
                        <div>
                          <span class="company">홈페이지제작전문웹드림</span>
                        </div>
                        <!-- 회사이름 -->
                        <h3>
                          홈페이지 디자인부터 제작까지 고객님의 꿈을
                          이뤄드립니다.
                        </h3>
                        <!-- 타이틀 -->
                        <div class="price">590,000원~</div>
                        <!-- 가격 -->
                        <div class="rating">
                          <div><i class="fa-solid fa-star"></i></div>
                          &nbsp;4.9
                          <span class="ib"></span>
                          <div>671개의 평가</div>
                        </div>
                        <!-- 별점 및 평가수 -->
                      </div>
                    </a>
                    <i class="fa-regular fa-heart"></i>
                  </div>
                  <div class="withouti">
                    <a href="" class="service_item">
                      <div class="imgbox">
                        <img src="${cp}/img/pj2.jpg" alt="" />
                        <!-- 하트 눌리면 좋아요 +1 -->
                      </div>
                      <div class="sv_content">
                        <div>
                          <span class="company">홈페이지제작전문웹드림</span>
                        </div>
                        <!-- 회사이름 -->
                        <h3>
                          홈페이지 디자인부터 제작까지 고객님의 꿈을
                          이뤄드립니다.
                        </h3>
                        <!-- 타이틀 -->
                        <div class="price">590,000원~</div>
                        <!-- 가격 -->
                        <div class="rating">
                          <div><i class="fa-solid fa-star"></i></div>
                          &nbsp;4.9
                          <span class="ib"></span>
                          <div>671개의 평가</div>
                        </div>
                        <!-- 별점 및 평가수 -->
                      </div>
                    </a>
                    <i class="fa-regular fa-heart"></i>
                  </div>
                  <div class="withouti">
                    <a href="" class="service_item">
                      <div class="imgbox">
                        <img src="${cp}/img/pj3.jpg" alt="" />
                        <!-- 하트 눌리면 좋아요 +1 -->
                      </div>
                      <div class="sv_content">
                        <div>
                          <span class="company">홈페이지제작전문웹드림</span>
                        </div>
                        <!-- 회사이름 -->
                        <h3>
                          홈페이지 디자인부터 제작까지 고객님의 꿈을
                          이뤄드립니다.
                        </h3>
                        <!-- 타이틀 -->
                        <div class="price">590,000원~</div>
                        <!-- 가격 -->
                        <div class="rating">
                          <div><i class="fa-solid fa-star"></i></div>
                          &nbsp;4.9
                          <span class="ib"></span>
                          <div>671개의 평가</div>
                        </div>
                        <!-- 별점 및 평가수 -->
                      </div>
                    </a>
                    <i class="fa-regular fa-heart"></i>
                  </div>
                  <div class="withouti">
                    <a href="" class="service_item">
                      <div class="imgbox">
                        <img src="${cp}/img/pj4.jpg" alt="" />
                        <!-- 하트 눌리면 좋아요 +1 -->
                      </div>
                      <div class="sv_content">
                        <div>
                          <span class="company">홈페이지제작전문웹드림</span>
                        </div>
                        <!-- 회사이름 -->
                        <h3>
                          홈페이지 디자인부터 제작까지 고객님의 꿈을
                          이뤄드립니다.
                        </h3>
                        <!-- 타이틀 -->
                        <div class="price">590,000원~</div>
                        <!-- 가격 -->
                        <div class="rating">
                          <div><i class="fa-solid fa-star"></i></div>
                          &nbsp;4.9
                          <span class="ib"></span>
                          <div>671개의 평가</div>
                        </div>
                        <!-- 별점 및 평가수 -->
                      </div>
                    </a>
                    <i class="fa-regular fa-heart"></i>
                  </div>
                </div>
                <div class="fourlist">
                  <div class="withouti">
                    <a href="" class="service_item">
                      <div class="imgbox">
                        <img src="${cp}/img/pj5.jpg" alt="" />
                        <!-- 하트 눌리면 좋아요 +1 -->
                      </div>
                      <div class="sv_content">
                        <div>
                          <span class="company">홈페이지제작전문웹드림</span>
                        </div>
                        <!-- 회사이름 -->
                        <h3>
                          홈페이지 디자인부터 제작까지 고객님의 꿈을
                          이뤄드립니다.
                        </h3>
                        <!-- 타이틀 -->
                        <div class="price">590,000원~</div>
                        <!-- 가격 -->
                        <div class="rating">
                          <div><i class="fa-solid fa-star"></i></div>
                          &nbsp;4.9
                          <span class="ib"></span>
                          <div>671개의 평가</div>
                        </div>
                        <!-- 별점 및 평가수 -->
                      </div>
                    </a>
                    <i class="fa-regular fa-heart"></i>
                  </div>
                  <div class="withouti">
                    <a href="" class="service_item">
                      <div class="imgbox">
                        <img src="${cp}/img/pj6.jpg" alt="" />
                        <!-- 하트 눌리면 좋아요 +1 -->
                      </div>
                      <div class="sv_content">
                        <div>
                          <span class="company">홈페이지제작전문웹드림</span>
                        </div>
                        <!-- 회사이름 -->
                        <h3>
                          홈페이지 디자인부터 제작까지 고객님의 꿈을
                          이뤄드립니다.
                        </h3>
                        <!-- 타이틀 -->
                        <div class="price">590,000원~</div>
                        <!-- 가격 -->
                        <div class="rating">
                          <div><i class="fa-solid fa-star"></i></div>
                          &nbsp;4.9
                          <span class="ib"></span>
                          <div>671개의 평가</div>
                        </div>
                        <!-- 별점 및 평가수 -->
                      </div>
                    </a>
                    <i class="fa-regular fa-heart"></i>
                  </div>
                  <div class="withouti">
                    <a href="" class="service_item">
                      <div class="imgbox">
                        <img src="${cp}/img/pj7.jpg" alt="" />
                        <!-- 하트 눌리면 좋아요 +1 -->
                      </div>
                      <div class="sv_content">
                        <div>
                          <span class="company">홈페이지제작전문웹드림</span>
                        </div>
                        <!-- 회사이름 -->
                        <h3>
                          홈페이지 디자인부터 제작까지 고객님의 꿈을
                          이뤄드립니다.
                        </h3>
                        <!-- 타이틀 -->
                        <div class="price">590,000원~</div>
                        <!-- 가격 -->
                        <div class="rating">
                          <div><i class="fa-solid fa-star"></i></div>
                          &nbsp;4.9
                          <span class="ib"></span>
                          <div>671개의 평가</div>
                        </div>
                        <!-- 별점 및 평가수 -->
                      </div>
                    </a>
                    <i class="fa-regular fa-heart"></i>
                  </div>
                  <div class="withouti">
                    <a href="" class="service_item">
                      <div class="imgbox">
                        <img src="${cp}/img/pj8.jpg" alt="" />
                        <!-- 하트 눌리면 좋아요 +1 -->
                      </div>
                      <div class="sv_content">
                        <div>
                          <span class="company">홈페이지제작전문웹드림</span>
                        </div>
                        <!-- 회사이름 -->
                        <h3>
                          홈페이지 디자인부터 제작까지 고객님의 꿈을
                          이뤄드립니다.
                        </h3>
                        <!-- 타이틀 -->
                        <div class="price">590,000원~</div>
                        <!-- 가격 -->
                        <div class="rating">
                          <div><i class="fa-solid fa-star"></i></div>
                          &nbsp;4.9
                          <span class="ib"></span>
                          <div>671개의 평가</div>
                        </div>
                        <!-- 별점 및 평가수 -->
                      </div>
                    </a>
                    <i class="fa-regular fa-heart"></i>
                  </div>
                </div>
                <div class="fourlist">
                  <div class="withouti">
                    <a href="" class="service_item">
                      <div class="imgbox">
                        <img src="${cp}/img/pj1.jpg" alt="" />
                        <!-- 하트 눌리면 좋아요 +1 -->
                      </div>
                      <div class="sv_content">
                        <div>
                          <span class="company">홈페이지제작전문웹드림</span>
                        </div>
                        <!-- 회사이름 -->
                        <h3>
                          홈페이지 디자인부터 제작까지 고객님의 꿈을
                          이뤄드립니다.
                        </h3>
                        <!-- 타이틀 -->
                        <div class="price">590,000원~</div>
                        <!-- 가격 -->
                        <div class="rating">
                          <div><i class="fa-solid fa-star"></i></div>
                          &nbsp;4.9
                          <span class="ib"></span>
                          <div>671개의 평가</div>
                        </div>
                        <!-- 별점 및 평가수 -->
                      </div>
                    </a>
                    <i class="fa-regular fa-heart"></i>
                  </div>
                  <div class="withouti">
                    <a href="" class="service_item">
                      <div class="imgbox">
                        <img src="${cp}/img/pj3.jpg" alt="" />
                        <!-- 하트 눌리면 좋아요 +1 -->
                      </div>
                      <div class="sv_content">
                        <div>
                          <span class="company">홈페이지제작전문웹드림</span>
                        </div>
                        <!-- 회사이름 -->
                        <h3>
                          홈페이지 디자인부터 제작까지 고객님의 꿈을
                          이뤄드립니다.
                        </h3>
                        <!-- 타이틀 -->
                        <div class="price">590,000원~</div>
                        <!-- 가격 -->
                        <div class="rating">
                          <div><i class="fa-solid fa-star"></i></div>
                          &nbsp;4.9
                          <span class="ib"></span>
                          <div>671개의 평가</div>
                        </div>
                        <!-- 별점 및 평가수 -->
                      </div>
                    </a>
                    <i class="fa-regular fa-heart"></i>
                  </div>
                  <div class="withouti">
                    <a href="" class="service_item">
                      <div class="imgbox">
                        <img src="${cp}/img/pj5.jpg" alt="" />
                        <!-- 하트 눌리면 좋아요 +1 -->
                      </div>
                      <div class="sv_content">
                        <div>
                          <span class="company">홈페이지제작전문웹드림</span>
                        </div>
                        <!-- 회사이름 -->
                        <h3>
                          홈페이지 디자인부터 제작까지 고객님의 꿈을
                          이뤄드립니다.
                        </h3>
                        <!-- 타이틀 -->
                        <div class="price">590,000원~</div>
                        <!-- 가격 -->
                        <div class="rating">
                          <div><i class="fa-solid fa-star"></i></div>
                          &nbsp;4.9
                          <span class="ib"></span>
                          <div>671개의 평가</div>
                        </div>
                        <!-- 별점 및 평가수 -->
                      </div>
                    </a>
                    <i class="fa-regular fa-heart"></i>
                  </div>
                  <div class="withouti">
                    <a href="" class="service_item">
                      <div class="imgbox">
                        <img src="${cp}/img/pj7.jpg" alt="" />
                        <!-- 하트 눌리면 좋아요 +1 -->
                      </div>
                      <div class="sv_content">
                        <div>
                          <span class="company">홈페이지제작전문웹드림</span>
                        </div>
                        <!-- 회사이름 -->
                        <h3>
                          홈페이지 디자인부터 제작까지 고객님의 꿈을
                          이뤄드립니다.
                        </h3>
                        <!-- 타이틀 -->
                        <div class="price">590,000원~</div>
                        <!-- 가격 -->
                        <div class="rating">
                          <div><i class="fa-solid fa-star"></i></div>
                          &nbsp;4.9
                          <span class="ib"></span>
                          <div>671개의 평가</div>
                        </div>
                        <!-- 별점 및 평가수 -->
                      </div>
                    </a>
                    <i class="fa-regular fa-heart"></i>
                  </div>
                </div>
              </div>
              <div class="pagination">
                <a href="">&lt;</a>
                <span class="nowPage">1</span>
                <a href="">2</a>
                <a href="">&gt;</a>
              </div>
            </div>
          </form>
        </div>
      </div>
    </section>
<%@ include file="/fix/footer.jsp" %>
</body>
</html>