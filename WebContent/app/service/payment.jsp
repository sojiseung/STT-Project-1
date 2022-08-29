<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${cp}/css/payment.css">
</head>
<body>
    <c:choose>
      <c:when test="${loginUser != null}">	
        <%@ include file="/fix/loginheader.jsp"%>
      </c:when>
      <c:otherwise> <%@ include file="/fix/header.jsp" %> </c:otherwise>
    </c:choose>
    <div id="max" style="margin-top:180px; margin-bottom:300px;">
        <div id="wrap">
            <p id="order_page"><b>결제하기</b></p>
            <div id="pay_box">
                <p class="order_menu">주문 내역</p>
                <div id="orderinfo">
                    <div id="pay_img">
                        <img src="" alt="">   
                    </div>
                    <div id="pay_title">
                        <h4>트랜디한 디자인과 깔금한 코드로 네이티브 앱 개발해드립니다.</h4>
                        <p style="color: #aaa;">-레이드-</p>
                    </div>
                </div>
                    <table id="order_option">
                        <colgroup>
                            <col width="180px">
                            <col width="180px">
                            <col width="190px">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>수량선택</th>
                                <th>작업일</th>
                                <th>가격</th>
                            </tr> 
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <div>
                                        <!-- <button>-</button> -->
                                        <span>1</span>
                                        <!-- <button>+</button> -->
                                    </div>
                                </td>
                                <td>1일</td>
                                <td>24,400,000원</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            <div id="cash_box">
                <p class="order_menu">할인/캐시사용</p>
                <ul style="margin:0; padding:0">
                    <li>
                        <label for="">사용 가능한 쿠폰</select></label>
                        <select name="coupon" id="coupon">
                        <!-- <option value="" disabled selected>- 사용 안함</option> -->
                        <option value="0" class="no_coupon">- 사용 안함</option>
                        <option value="1">- 쿠폰 1</option>
                        <option value="2">- 쿠폰 2</option>
                        <option value="3">- 쿠폰 3</option>
                     </select>
                    </li>
                    <li>
                        <label for="">캐시사용</select></label>
                        <input type="" name="" id="cash" placeholder="0원"><button name="">전액사용</button> <span id="cash_balance">캐시잔액 : <input type="text" name="" readonly />캐시</span> 
                    </li>
                </ul>
            </div>
            <div id="pay_way">
                <p class="order_menu">결제방법</p>
                <label for="1"><input type="radio" name="order_way">신용카드 </label>
                <label for="2"><input type="radio" name="order_way">무통장입금 </label>
                <label for="3"><input type="radio" name="order_way">실시간 계좌이체 </label>
                <label for="4"><input type="radio" name="order_way">휴대폰 </label>
                <label for="5"><input type="radio" name="order_way">toss </label>
                <label for="6"><input type="radio" name="order_way">payco </label>
            </div>
            <div id="tax">
                <label for=""><input type="checkbox"> 세금계산서 발행신청</label>
                <ul>
                    <li>세금계산서 신청시, 세금계산서와 결제증빙 영수증이 모두 발행됩니다.</li>
                    <li>매입세액 공제시 사용가능한 자료는 전문가가 발행하는 '세금계산서'이며 STT의 이름으로 발행되는 '결제증빙 영수증'은 활용하실 수 없습니다.</li>
                    <li>쿠폰할인 금액은 세금계산서 발행내역에 포함되지 않습니다.</li>
                </ul>
            </div>
        </div>
        <!--여기서부터는 오른쪽 결제창-->
        <div id="he">
            <div id="pay">
                <div id="pay1">
                    <table>
                        <colgroup>
                            <col width="220px">
                            <col width="160px">
                        </colgroup>
                        <tr>
                            <td class="td_1">총 서비스 금액</td>
                            <td class="td_2">24,400,000원</td>
                        </tr>
                        <tr>
                            <td class="td_1">쿠폰 할인</td>
                            <td class="td_2">0원</td>
                        </tr>
                        <tr>
                            <td class="td_1">캐시 사용</td>
                            <td class="td_2">0원</td>
                        </tr>
                        <tr class="last_pay">
                            <td class="td_1">총 결제금액</td>
                            <td class="td_2">24,2400,000원</td>
                        </tr>
                    </table>
                </div>
                <div class="agree">
                    <input type="checkbox"><label for=""> 주문 내용을 확인했으며, 결제에 동의합니다. (필수)</label><br>
                </div>
                <button id="order_button">결제하기</button>
                <p>서비스 제공이 완료된 이후에 전문가에게 결제대금이 전달됩니다.</p>
            </div>
        </div>
    </div>
    <%@ include file="/fix/footer.jsp" %>
</body>
<script src="http://code.jquery.com/jquery-lastest.js"></script>
<script type="text/javascript" src="${cp}/js/payment.js"></script>
</html>