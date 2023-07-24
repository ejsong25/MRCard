<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	Cookie[] ck = request.getCookies();

	String popUrl = "";
	String strUrl, str;

	strUrl = cp + "/aMr/popup.jsp";
	str = "window.open('" + strUrl + "', 'Think', ";
	str = str + "'left=400, ";
	str = str + "top=30, ";
	str = str + "width=400, ";
	str = str + "height=250, ";
	str = str + "toolbar=no, ";
	str = str + "menubar=no, ";
	str = str + "status=no, ";
	str = str + "scrollbars=no, ";
	str = str + "resizable=yes')";

	popUrl = str;

	if (ck != null) {
		for (Cookie c : ck) {
			if (c.getName().equals("popup") && c.getValue().equals("no")) {
				popUrl = "";
				break;
			}
		}
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객센터</title>

<link rel="stylesheet" type="text/css"
	href="<%=cp%>/boardTest/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/boardTest/css/list.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/aMr/css/style_nav.css"/>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body leftmargin="8" onload="<%=popUrl%>">

<c:choose>
	<c:when test="${empty sessionScope.customInfo.id }">

	<nav class="navbar_mr">
	<div class="nav_logo_mr">
		<i class="fa-solid fa-star"></i> <b>
		<a href="<%=cp%>/mr/index.do">MR<span>Card</span></b></a>
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

	<div id="bbsList">

		<!-- Header -->
		<header class="bg-dark py-5" style="background-color: #353535;">
		<div class="container px-4 px-lg-5 my-5">
			<div class="text-center text-white" style="margin: 30px;">
				<h1 class="display-4 fw-bolder" align="center">
					<font color="#fff">&emsp;자주 묻는
						질문(FAQ)</font>
				</h1>
				<div class="container">
					<ul class="pager" style="margin: auto;">
						<li><a href="<%=cp%>/mr/list.do">#전체</a></li>
						<li><a href="<%=cp%>/mr/list.do?searchKey=capply">#카드신청/이용</a></li>
						<li><a href="<%=cp%>/mr/list.do?searchKey=abroad">#해외이용</a></li>
						<li><a href="<%=cp%>/mr/list.do?searchKey=revolving">#리볼빙</a></li>
						<li><a href="<%=cp%>/mr/list.do?searchKey=home">#홈페이지/보안</a></li>
					</ul>
				</div>
			</div>
		</div>
		</header>
		<br />
		<br />

		<div id="bbsList_list2">
			<c:set var="n" value="0" />
			<div id="lists" align="center">
				<div class="container">
					<c:forEach var="dto2" items="${qalists }">
						<dl>
							<button type="button" class="btn-btn-info" data-toggle="collapse"
								data-target="#demo${n }">
								<dd class="subject"
									style="width: 770px; padding: 10px; font-size: 13pt;">
									<b>${dto2.subject }</b>
								</dd>
							</button>
							<div id="demo${n }" class="collapse"
								style="width: 770px; padding: 10px;">
								<dd class="content" style="font-size: 11pt;">${dto2.content }</dd>
							</div>
						</dl>
						<c:set var="n" value="${n+1 }" />
					</c:forEach>
				</div>
			</div>
		</div>


		<div id="container" align="right">
			<div>
				<input type="button" value=" 글 올리기 " class="btn btn-primary"
					onclick="javascript:location.href='<%=cp%>/mr/created.do';" />
			</div>
		</div>
		<br />
		<div id="bbsList_list" style="width: 800px; margin: auto;">
			<div id="title" style="width: 800px;">
				<dl>
					<dt class="num">번호</dt>
					<dt class="subject">제목</dt>
					<dt class="name">작성자</dt>
					<dt class="created">작성일</dt>
					<dt class="hitCount">조회수</dt>
				</dl>
			</div>
			<div id="lists">
				<c:forEach var="dto" items="${lists }">
					<dl>
						<dd class="num">${dto.num }</dd>
						<dd class="subject">
							<a href="${articleUrl}&num=${dto.num }"> ${dto.subject }</a>
						</dd>
						<dd class="name">${dto.name }</dd>
						<dd class="created">${dto.created }</dd>
						<dd class="hitCount">${dto.hitCount }</dd>
					</dl>
				</c:forEach>
			</div>
			<div id="footer">
				<p>
					<c:if test="${dataCount!=0 }">
					${pageIndexList }
				</c:if>
					<c:if test="${dataCount==0 }">
					등록된 게시물이 없습니다.
				</c:if>
				</p>

			</div>
		</div>
</body>
</html>
