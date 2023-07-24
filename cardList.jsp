<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>MRcardList</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap 3 CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet" />
        <!-- Bootstrap icons -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap) -->
        <link href="css/style3.css" rel="stylesheet" />
        
        <link rel="stylesheet" type="text/css" href="<%=cp%>/aMr/css/style_nav.css"/>
        
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

	<!-- Header -->
        <header class="bg-dark py-5" style="background-color: #353535;">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder"><font color="#fff">Card List</font></h1>
                    <p class="lead fw-normal text-white-50 mb-0" align="left" style="margin-left: 30px; color: #ffffff">
                    #추천 해시태그</p>
                    <hr color="#ffffff">
				<div class="container">
					<ul class="pager">
						<li><a href="<%=cp %>/mr/cardList.do">#전체</a></li>
						<li><a href="<%=cp %>/mr/searchCard.do?searchKey=ptrans">#대중교통</a></li>
						<li><a href="<%=cp %>/mr/searchCard.do?searchKey=mart">#마트</a></li>
						<li><a href="<%=cp %>/mr/searchCard.do?searchKey=cstore">#편의점</a></li>
						<li><a href="<%=cp %>/mr/searchCard.do?searchKey=dstore">#백화점</a></li>
						<li><a href="<%=cp %>/mr/searchCard.do?searchKey=cafe">#카페</a></li>
						<li><a href="<%=cp %>/mr/searchCard.do?searchKey=pgas">#주유</a></li>
					</ul>
				</div>
                </div>
            </div>
        </header>
        <!-- Section -->
        <br/><br/>
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row">
                	<c:forEach var="dto" items="${lists }">
                    <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                        <div class="thumbnail">
                            <a href="<%=cp %>/mr/cardDetails.do?cardName=${dto.cardName }"> 
							<img class="card-img-top" 
								src="http://192.168.16.11:8080/study/pds/imageFile/${dto.cardName }.jpg" alt="..." /></a>
                             <div class="caption" align="center">
                                <h5 class="fw-bolder">${dto.cardName }</h5>
                                <p><a href="<%=cp %>/mr/cardDetails.do?cardName=${dto.cardName }" 
                                	class="btn btn-outline-dark" role="button" style="color: black; border-color: black;">
                                카드 상세보기</a></p>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    <!-- Add more products here -->
                </div>
            </div>
        </section>
        <!-- Footer -->
        <footer class="py-5 bg-dark">
            <div class="container">
                <p class="m-0 text-center text-white">&copy; Your Website 2023</p>
            </div>
        </footer>
        <!-- Bootstrap 3 core JS -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </body>
</html>
