<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 매장 수정 페이지 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/OSJ/food.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/foodJS/foodCss.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/foodJS/fixCompFoodList.js"></script>
<div class="page-main">
	<div class="main-title">
		<img class="title-img" src="${pageContext.request.contextPath}/images/title_icon.gif">
		<h2> 푸드 | <a href="/food/foodList.do">매장</a> | <a href="/food/food_CompDetail.do">상호명</a></h2>
	</div>
	<hr noshade="noshade">
	<!-- 카테고리 시작 -->
	<div class="food-category">
		<!-- 우측 수정, 취소 버튼 -->
		<div class="float-right">
			<input type="submit" class="adminBtn" value="수정">
			<input type="button" class="adminBtn" value="취소" onclick='location.href="/food/foodCompDetail.do"'>
		</div>
	</div>
	<div class="clear"></div>
	<!-- 매장 상세정보 시작 -->
	<div class=comp-container>
		<div class="comp-detail"><!-- 상세페이지 링크는 스크립트로 해결해야함. -->
			<div class="f-img"><img src="${pageContext.request.contextPath}/images/product-ready.png" class="food-main-img"></div>
			<div class="comp-title bdr"><b>네네치킨(부산 롯데 사직야구장점)</b></div>
			<div class="comp-score bdr"><b>별점 (3.00)</b></div>
			<div class="comp-content bdr">
				<p>안녕하세요. <br>네네치킨 부산 롯데 사직야구장점 입니다.<br>ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ<br>ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</p>
			</div>
		</div>
		<!-- 새 상품 추가하기 시작 -->	
		<div class="compFood-list">
			<a href="${pageContext.request.contextPath}/food/addNewFood.do">
				<img src="${pageContext.request.contextPath}/images/plus.png">
				<span>새 상품 추가하기</span>
			</a>
		</div>
		<!-- 새 상품 추가하기 끝-->
		<!-- 기업 상품 리스트 시작 -->
		<div id="fix_compMenu">
			<c:if test="${count == 0}"><!-- 목록 없을 경우 -->
				<table id="fix_menuList">
					<tr>
						<th> 표시할 상품이 없습니다. </th>
					</tr>
				</table>
			</c:if>
			
			<c:if test="${count > 0}"> <!-- 목록 있을 경우 -->
				<table id="fix_menuList">
					<tr>
						<th>상품번호</th>
						<th>상품명</th>
						<th>가격</th>
						<th>재고수량</th>
						<th>상태</th>
						<th>수정/삭제</th>
					</tr>
					<c:forEach var="food" items="${list}">
					<tr>
						<td>${food.food_num}</td>
						<td>${food.food_name}</td>
						<td><fmt:formatNumber value="${food.food_price}"/> 원</td>
						<td><fmt:formatNumber value="${food.food_quantity}"/> 개</td>
						<td>
							<c:if test="${food.food_status == 1 }">판매중지</c:if>
							<c:if test="${food.food_status == 2 }">판매중</c:if>
						</td>
						<td>
							<input type="button" value="수정" onclick="location.href='${pageContext.request.contextPath}/food/fixFood.do?food_num=${food.food_num}'"> 
							<form id="del_form_${food.food_num}" action="deleteFood.do" method="post">
								<input type="hidden" name="food_num" value="${food.food_num}">
								<input type="button" value="삭제" class="del-food" data-num="${food.food_num}">
							</form>
						</td>
					</tr>
					</c:forEach>
				</table>
				<div class="paging align-center">${page}</div>
			</c:if>
		</div>
		<!-- 기업 상품 리스트 끝 -->
	</div>
	<!-- 목록 끝 -->
</div>
<!-- 매장 상세보기 페이지 끝-->