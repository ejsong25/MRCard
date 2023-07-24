<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<script type="text/javascript">

	function sendIt() {
		
		var f = document.myForm;
		
		str = f.pwd.value;
		str = str.trim();
		if(!str) {
			alert("패스워드를 입력하세요.");
			f.pwd.focus();
			return;
		}
		
		
		str = f.address.value;
		str = str.trim();
		if(!str) {
			alert("주소를 입력하세요.");
			f.address.focus();
			return;
		}
		
		
		alert("수정이 완료되었습니다.")
		f.action = "<%=cp%>/mr/userUpdated_ok.do";
		f.submit();
	}
		
		
</script>

<link rel="stylesheet" type="text/css" href="<%=cp%>/aMr/css/style_nav.css"/>

<style type="text/css">

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100);

body {
  background-image: #FFFFFF;
  font-family: "Roboto", helvetica, arial, sans-serif;
  font-size: 16px;
  font-weight: 300;
  text-rendering: optimizeLegibility;
}

div.table-title {
   display: block;
  margin: auto;
  max-width: 600px;
  padding:5px;
  width: 100%;
}

.table-title h3 {
   color: #fafafa;
   font-size: 30px;
   font-weight: 400;
   font-style:normal;
   font-family: "Roboto", helvetica, arial, sans-serif;
   text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
   text-transform:uppercase;
}


/*** Table Styles **/

.table-fill {
  background: #FFFFFF;
  border-radius:3px;
  border-collapse: collapse;
  height: 320px;
  margin: auto;
  max-width: 600px;
  padding:5px;
  width: 100%;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  animation: float 5s infinite;
}
 
th {
  color:#FFFFFF;;
  background:#1b1e24;
  border-bottom:4px solid #9ea7af;
  border-right: 1px solid #343a45;
  font-size:23px;
  font-weight: 100;
  padding:24px;
  text-align:left;
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  vertical-align:middle;
}

th:first-child {
  border-top-left-radius:3px;
}
 
th:last-child {
  border-top-right-radius:3px;
  border-right:none;
}
  
tr {
  border-top: 1px solid #C1C3D1;
  border-bottom-: 1px solid #C1C3D1;
  color:#666B85;
  font-size:16px;
  font-weight:normal;
  text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
}
 
tr:hover td {
  background:#4E5066;
  color:#FFFFFF;
  border-top: 1px solid #22262e;
}
 
tr:first-child {
  border-top:none;
}

tr:last-child {
  border-bottom:none;
}
 
tr:nth-child(odd) td {
  background:#FFFFFF;
}
 
tr:nth-child(odd):hover td {
  background:#4E5066;
}

tr:last-child td:first-child {
  border-bottom-left-radius:3px;
}
 
tr:last-child td:last-child {
  border-bottom-right-radius:3px;
}
 
td {
  background:#FFFFFF;
  padding:20px;
  text-align:left;
  vertical-align:middle;
  font-weight:300;
  font-size:18px;
  text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
  border-right: 1px solid #C1C3D1;
}

td:last-child {
  border-right: 0px;
}

th.text-left {
  text-align: left;
}

th.text-center {
  text-align: center;
}

th.text-right {
  text-align: right;
}

td.text-left {
  text-align: left;
}

td.text-center {
  text-align: center;
}

td.text-right {
  text-align: right;
}
}

* {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

.buttons {
    margin: 10%;
    text-align: center;
}

.btn-hover {
    width: 200px;
    font-size: 16px;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
    margin: 20px;
    height: 55px;
    text-align:center;
    border: none;
    background-size: 300% 100%;

    border-radius: 50px;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:hover {
    background-position: 100% 0;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:focus {
    outline: none;
}

.btn-hover.color-1 {
    background-image: linear-gradient(to right,  #000000,  #000000,  #000000,  #000000);
   
}
.btn-hover.color-2 {
    background-image: linear-gradient(to right, #000000, #000000, #000000, #000000);
   
}

.btn-hover.color-6 {
    background-image: linear-gradient(to right, #009245, #FCEE21, #00A8C5, #D9E021);
    box-shadow: 0 4px 15px 0 rgba(83, 176, 57, 0.75);
}


</style>


<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>회원정보 수정</title>
  <meta name="viewport" content="initial-scale=1.0; maximum-scale=1.0; width=device-width;">
</head>

<body >

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
		<li><a href="">MR PAY</a></li>
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
		<li><a href="">MR PAY</a></li>
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

<form action="" method="post" name="myForm">
<div class="table-title">
<h3></h3>
</div>
<table class="table-fill">
<thead>
<tr>

<th colspan="2" class="text-left">회원정보 수정</th>
</tr>
</thead>
<tbody class="table-hover">
<tr>
<td colspan="0" class="text-left">아이디</td>
<td>${dto.id }</td>
</tr>
<tr>
<td colspan="0" class="text-left">패스워드</td>
<td><input type="text" name="pwd" style="font-size: 20px; border: none; background-color: #FFFFFF;" value="${dto.pwd }">
</tr>
<tr>
<td colspan="0" class="text-left">이름</td>
<td>${dto.name }</td>
</tr>
<tr>
<td colspan="0" class="text-left">주소</td>
<td><input type="text" name="address" style="font-size: 20px; border: none; background-color: #FFFFFF;" value="${dto.address }">
</tr>
<tr>
<td colspan="0" class="text-left">주민번호</td>
<td>${dto.jumin }</td>
</tr>
</table>
<input type="hidden" name="id" value="${sessionScope.customInfo.id }"/>

<div id="bbsCreated_footer" align="center">
	<input type="button" value="수정하기" class="btn-hover color-1" onclick="sendIt();"/>
	<input type="button" value="수정취소" class="btn-hover color-2" 
	onclick="location='<%=cp%>/mr/index.do';"/>
	</div>
	</form>

</body>
</html>