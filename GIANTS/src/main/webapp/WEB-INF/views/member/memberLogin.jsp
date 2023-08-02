<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- 로그인폼시작 -->
<div class="page-main">
	<h2>회원로그인</h2>
	<form:form modelAttribute="memberVO" action="login.do" id="member_login">
		<form:errors element="div" cssClass="error-color"/>
		<ul>
			<li>
				<form:input path="mem_id" placeholder="아이디" 
				            cssClass="form-input" autocomplete="off"/>
	            <form:label path="mem_id">아이디</form:label>
	            <form:errors path="mem_id" element="div" 
	            			 cssClass="error-color"/>
			</li>
			<li>
				<form:password path="passwd" placeholder="비밀번호" 
				            cssClass="form-input" autocomplete="off"/>
	            <form:label path="passwd">비밀번호</form:label>
	            <form:errors path="passwd" element="div" 
	            			 cssClass="error-color"/>
			</li>
			<li><input type="checkbox" name="auto" id="auto">로그인상태유지</li>		
		</ul>
		<div>
			<form:button class="login-btn">로그인</form:button>
		</div>
	</form:form>
</div>
<!-- 로그인폼끝 -->