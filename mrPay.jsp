<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>MrPay</title>
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/aMr/css/style_nav.css" />
<style type="text/css">
body {
	background-color: black;
}
</style>
</head>
<body>
	<c:choose>
	<c:when test="${empty sessionScope.customInfo.id }">

<div align="top">
	<nav class="navbar_mr">
	<div class="nav_logo_mr">
		<i class="fa-solid fa-star"></i> <b><a href="<%=cp%>/mr/index.do">MR<span>Card</span></b></a>
	</div>
	<ul class="nav_menu_mr">
		<li><a href="<%=cp%>/mr/login.do">마이</a></li>
		<li><a href="<%=cp%>/mr/cardList.do">카드</a></li>
		<li><a href="<%=cp%>/mr/list.do">고객센터</a></li>
		<li><a href="<%=cp%>/mr/mrPay.do">MR PAY</a></li>
	</ul>
	<ul class="nav_menu2_mr">
		<li><a href="<%=cp%>/mr/login.do"><i>로그인</i></a></li>
		<li><a href="<%=cp%>/mr/signup.do"><i>회원가입</i></a></li>
	</ul>
	</nav>
</div>		
	</c:when>
	<c:otherwise>
	
	<nav class="navbar_mr">
	<div class="nav_logo_mr">
		<i class="fa-solid fa-star"></i> <b><a href="<%=cp%>/mr/index.do">MR<span>Card</span></b></a>
	</div>
	<ul class="nav_menu_mr">
		<li><a href="<%=cp%>/mr/myPage.do?id=${sessionScope.customInfo.id }">마이</a></li>
		<li><a href="<%=cp%>/mr/cardList.do">카드</a></li>
		<li><a href="<%=cp%>/mr/list.do">고객센터</a></li>
		<li><a href="<%=cp%>/mr/mrPay.do">MR PAY</a></li>
	</ul>
	<ul class="nav_menu2_mr">
		<li><a href="<%=cp%>/mr/login.do"><i>
		<font color=" #fff"><b>${sessionScope.customInfo.name }
			</b></font>님</i></a></li>
		<li><a href="<%=cp%>/mr/logout.do"><i>로그아웃</i></a></li>
	</ul>
	</nav>
	
	</c:otherwise>
</c:choose>
	<div class="gif-container" align="center">
		<font style="color: var(--accent-color); font-size: 80px; margin-left: 300px;">
		<b><span style="color: #5CD1E5;">MR Pay</span> Comming&emsp;&emsp;<br> Soon</b></font>
		<iframe src="https://giphy.com/embed/SpoZWVAYlMCMGcLfqU" width="500"
			height="500" frameBorder="0"></iframe>
	</div>
	<br />
	<br />
</body>
</html>