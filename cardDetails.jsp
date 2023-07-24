<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>MR card details</title>
<!-- Bootstrap 3 CSS-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="<%=cp%>/aMr/css/style_nav.css" />
<style type="text/css">
button {
	margin: 20px;
}

.custom-btn {
	width: 130px;
	height: 40px;
	color: #fff;
	border-radius: 5px;
	padding: 10px 25px;
	font-family: 'Lato', sans-serif;
	font-weight: 500;
	background: transparent;
	cursor: pointer;
	transition: all 0.3s ease;
	position: relative;
	display: inline-block;
	box-shadow: inset 2px 2px 2px 0px rgba(4, 180, 174, .5), 7px 7px 20px
		0px rgba(0, 0, 0, .1), 4px 4px 5px 0px rgba(0, 0, 0, .1);
	outline: none;
}

.btn-10 {
	background: rgb(7, 11, 25);
	background: linear-gradient(0deg, rgba(4, 180, 174, 1) 0%,
		rgba(4, 180, 174, 1) 100%);
	color: #fff;
	border: none;
	transition: all 0.3s ease;
	overflow: hidden;
}

.btn-10:after {
	position: absolute;
	content: " ";
	top: 0;
	left: 0;
	z-index: -1;
	width: 100%;
	height: 100%;
	transition: all 0.3s ease;
	-webkit-transform: scale(.1);
	transform: scale(.1);
}

.btn-10:hover {
	color: #fff;
	border: none;
	background: transparent;
}

.btn-10:hover:after {
	background: rgb(7, 11, 25);
	background: linear-gradient(0deg, rgba(4, 180, 174, 1) 0%,
		rgba(4, 180, 174, 1) 100%);
		
		
	-webkit-transform: scale(1);
	transform: scale(1);
}
</style>

</head>
<body>
	<c:choose>
	<c:when test="${empty sessionScope.customInfo.id }">

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

	<!-- Product section -->
	<section class="container py-5">
		<div class="row">
			<div class="col-md-6"><br/><br/>
				<img class="img-responsive"
					src="http://192.168.16.11:8080/study/pds/imageFile/${dto.cardName }.jpg"
					 alt="Card Image">
			</div>
			<div class="col-md-6"><br/><br/>
				<h1 class="display-4">${dto.cardName}</h1><br/>

				<table bordercolor="#E6E6E6" border="0" width="55%" height="50px" 
				cellspacing="0" style="border-radius: 10px;">

				<c:if test="${dto.cardName eq 'VIVA' }"><br/>
				
					<font size="4px"><b>연회비 2만원</b></font>
					<br/><br/>
					<p>■&nbsp;커피전문점 10%할인</p>
					<p>■&nbsp;보험 3% 결제일 할인</p>
					<p>■&nbsp;헬스/뷰티 4% 결제일할인</p>
					<p>■&nbsp;생활요금 정기결제 3% 결제일할인</p>
					<p>■&nbsp;이동통신/렌탈/멤버십 5%할인</p>

				</c:if>


				<c:if test="${dto.cardName eq 'WING' }">
                 
                 		<font size="4px"><b> 연회비 1만원</b></font>
						<br/><br/>
						<p>■&nbsp;shopping 10%할인</p>
						<p>■&nbsp;커피전문점 20%할인</p>
						<p>■&nbsp;편의점 5% 할인</p>
						<p>■&nbsp;대형마트 5%할인</p>
						<p>■&nbsp;대중교통＊택시 10%할인</p>
						
				</c:if>


				<c:if test="${dto.cardName eq 'YOUTH' }">
				
						<font size="4px"><b> 연회비 1만 5천원</b></font>
						<br/><br/>
						<p>■&nbsp;shopping 40%할인</p>
						<p>■&nbsp;이동통신＊아파트관리비 30%할인</p>
						<p>■&nbsp;커피전문점 20%할인</p>
						<p>■&nbsp;편의점 20% 할인</p>
						<p>■&nbsp;대형마트 25%할인</p>
						
				</c:if>


				<c:if test="${dto.cardName eq 'MORU' }">
                 
               
						<font size="4px"><b>연회비 10만원</b></font>
						<br/><br/>
						<p>■&nbsp;shopping 20%할인</p>
						<p>■&nbsp;커피전문점 20%할인</p>
						<p>■&nbsp;편의점 10% 할인</p>
						<p>■&nbsp;대형마트 30%할인</p>
						<p>■&nbsp;대중교통＊택시 10%할인</p>
						<p>■&nbsp;주유 10%할인</p>
						
				</c:if>


				<c:if test="${dto.cardName eq 'PINKPONG' }">
                 
                <font size="4px"><b>연회비 1만 5천원</b></font>
						<br/><br/>
						<p>■&nbsp;주유 15%할인</p>
						<p>■&nbsp;이동통신＊아파트관리비 30%할인</p>
						<p>■&nbsp;배달앱 25% 할인</p>
						<p>■&nbsp;해외＊항공＊철도 10%할인</p>
						<p>■&nbsp;대형마트 40%할인</p>
						
				</c:if>



				<c:if test="${dto.cardName eq 'DREAM' }">
                 
                  		<font size="4px"><b>연회비 8천원</b></font>
						<br/><br/>
						<p>■&nbsp;shopping 20%할인</p>
						<p>■&nbsp;이동통신＊아파트관리비 30%할인</p>
						<p>■&nbsp;주유 5%할인</p>
						<p>■&nbsp;편의점 5% 할인</p>
						<p>■&nbsp;대형마트 5%할인</p>
						
				</c:if>


				<c:if test="${dto.cardName eq 'TAP' }">
				
              			<font size="4px"><b>연회비 1만원</b></font>
						<br/><br/>
						<p>■&nbsp;shopping 5%할인</p>
						<p>■&nbsp;커피전문점 40%할인</p>
						<p>■&nbsp;배달앱 25% 할인</p>
						<p>■&nbsp;편의점 30% 할인</p>
						<p>■&nbsp;대형마트 20%할인</p>
						
				</c:if>



				<c:if test="${dto.cardName eq 'NOLZA' }">
                 
                		<font size="4px"><b>연회비 2만 9천원</b></font>
						<br/><br/>
						<p>■&nbsp;shopping 5%할인</p>
						<p>■&nbsp;주유 10%할인</p>
						<p>■&nbsp;배달앱 25% 할인</p>
						<p>■&nbsp;커피전문점 20%할인</p>
						<p>■&nbsp;편의점 5% 할인</p>
						
				</c:if>



				<c:if test="${dto.cardName eq 'LIFE' }">
				
						<font size="4px"><b>연회비 1만 5천원</b></font>
						<br/><br/>
						<p>■&nbsp;커피전문점 30%할인</p>
						<p>■&nbsp;주유 20%할인</p>
						<p>■&nbsp;편의점 15% 할인</p>
						<p>■&nbsp;대형마트 10%할인</p>
						<p>■&nbsp;대중교통＊택시 5%할인</p>
						
				</c:if>


				<c:if test="${dto.cardName eq 'MOVE' }">
                 
                 		<font size="4px"><b>연회비 2만원</b></font>
						<br/><br/>
						<p>■&nbsp;주유 20%할인</p>
						<p>■&nbsp;이동통신＊아파트관리비 30%할인</p>
						<p>■&nbsp;배달앱 25% 할인</p>
						<p>■&nbsp;해외＊항공＊철도 10%할인</p>
						<p>■&nbsp;대중교통＊택시 40%할인</p>
						
				</c:if>
				
			</table>


				<button class="custom-btn btn-10"
					onclick="javascript:location.href='<%=cp%>/mr/cardForm.do?cardName=${dto.cardName}';">신청하기</button>

			</div>
		</div>
	</section>

	<!-- Related items section -->
	<section class="container py-5 bg-light">
		<h2 class="text-center mb-4">Related card</h2>
		<div class="row">
			<div class="col-md-3 col-sm-6">
				<div class="thumbnail">
					<img src="http://192.168.16.11:8080/study/pds/imageFile/VIVA.jpg"
						alt="Card Image">
					<div class="caption">
						<h3>VIVA</h3>
						<button class="btn btn-outline-dark" type="button" onclick="javascript:location.href='<%=cp%>/mr/cardDetails.do?cardName=VIVA';">신청하기</button>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="thumbnail">
					<img
						src="http://192.168.16.11:8080/study/pds/imageFile/PINKPONG.jpg"
						alt="Card Image">
					<div class="caption">
						<h3>PINKPONG</h3>
						<button class="btn btn-outline-dark" type="button" onclick="javascript:location.href='<%=cp%>/mr/cardDetails.do?cardName=PINKPONG';">신청하기</button>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="thumbnail">
					<img src="http://192.168.16.11:8080/study/pds/imageFile/TAP.jpg"
						alt="Card Image">
					<div class="caption">
						<h3>TAP</h3>
						<button class="btn btn-outline-dark" type="button" onclick="javascript:location.href='<%=cp%>/mr/cardDetails.do?cardName=TAP';">신청하기</button>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="thumbnail">
					<img src="http://192.168.16.11:8080/study/pds/imageFile/WING.jpg"
						alt="Card Image">
					<div class="caption">
						<h3>WING</h3>
						<button class="btn btn-outline-dark" type="button" onclick="javascript:location.href='<%=cp%>/mr/cardDetails.do?cardName=WING';">신청하기</button>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; 내 손안의 작은
				Mr</p>
		</div>
	</footer>






	<!-- Bootstrap 3 JS -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>
