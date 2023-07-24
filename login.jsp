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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>

<link rel="stylesheet" type="text/css" href="<%=cp%>/aMr/css/style_nav.css"/>

<style type="text/css">
html {
  height: 100%;
}
body {
  margin:0;
  padding:0;
  font-family: sans-serif;
  background: #B2EBF4;
}

.login-box {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 400px;
  padding: 40px;
  transform: translate(-50%, -50%);
  background: rgba(0,0,0,.5);
  box-sizing: border-box;
  box-shadow: 0 15px 25px rgba(0,0,0,.6);
  border-radius: 10px;
}

.login-box h2 {
  margin: 0 0 30px;
  padding: 0;
  color: #fff;
  text-align: center;
}

.login-box .user-box {
  position: relative;
}

.login-box .user-box input {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background: transparent;
}
.login-box .user-box label {
  position: absolute;
  top:0;
  left: 0;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  pointer-events: none;
  transition: .5s;
}

.login-box .user-box input:focus ~ label,
.login-box .user-box input:valid ~ label {
  top: -20px;
  left: 0;
  color: #03e9f4;
  font-size: 12px;
}

.login-box form a {
  position: relative;
  display: inline-block;
  padding: 10px 20px;
  color: #03e9f4;
  font-size: 16px;
  text-decoration: none;
  text-transform: uppercase;
  overflow: hidden;
  transition: .5s;
  margin-top: 40px;
  letter-spacing: 4px
}

.login-box a:hover {
  background: #03e9f4;
  color: #fff;
  border-radius: 5px;
  box-shadow: 0 0 5px #03e9f4,
              0 0 25px #03e9f4,
              0 0 50px #03e9f4,
              0 0 100px #03e9f4;
}

.login-box a span {
  position: absolute;
  display: block;
}

.login-box a span:nth-child(1) {
  top: 0;
  left: -100%;
  width: 100%;
  height: 2px;
  background: #5CD1E5;
  animation: btn-anim1 1s linear infinite;
}

@keyframes btn-anim1 {
  0% {
    left: -100%;
  }
  50%,100% {
    left: 100%;
  }
}

.login-box a span:nth-child(2) {
  top: -100%;
  right: 0;
  width: 2px;
  height: 100%;
  background: #5CD1E5;
  animation: btn-anim2 1s linear infinite;
  animation-delay: .25s
}

@keyframes btn-anim2 {
  0% {
    top: -100%;
  }
  50%,100% {
    top: 100%;
  }
}

.login-box a span:nth-child(3) {
  bottom: 0;
  right: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(270deg, transparent, #03e9f4);
  animation: btn-anim3 1s linear infinite;
  animation-delay: .5s
}

@keyframes btn-anim3 {
  0% {
    right: -100%;
  }
  50%,100% {
    right: 100%;
  }
}

.login-box a span:nth-child(4) {
  bottom: -100%;
  left: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(360deg, transparent, #03e9f4);
  animation: btn-anim4 1s linear infinite;
  animation-delay: .75s
}

@keyframes btn-anim4 {
  0% {
    bottom: -100%;
  }
  50%,100% {
    bottom: 100%;
  }
}
</style>

<script type="text/javascript">

	function login() {
		
		var f = document.myForm;
		
		if(!f.id.value){
			alert("아이디를 입력하세요.");
			f.id.focus();
			return;
		}
		
		if(!f.pwd.value){
			alert("패스워드를 입력하세요.");
			f.pwd.focus();
			return;
		}
		
		
		f.action = "<%=cp%>/mr/login_ok.do";
		f.submit();
		
	}


</script>
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
		<li><a href="">MR PAY</a></li>
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
  
  <div class="login-box" style="margin-top: 50px; margin-bottom: 30px;">
  <h2>로그인</h2>
  <form action="" method="post" name="myForm">
    <div class="user-box">
      <input type="text" name="id" required="">
      <label>ID</label>
    </div>
    <div class="user-box">
      <input type="password" name="pwd" required="">
      <label>PWD</label>
    </div>
    
 	<tr height="30">
	<td colspan="2" align="center">
	<font color="red"><b>${message }</b></font>
	</td>
</tr>
 	<br/>
    <a style="text-align: center;" href="#" onclick="login();">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      	로그인
    </a><br/>
    <a style="text-align: center;" href="#" onclick="location='<%=cp%>/mr/signup.do';"">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      	회원가입
    </a><br/>
 
    	<br/>
     <a style="font-size: 8px; text-align: right;" onclick="location='<%=cp%>/mr/searchid.do';"  href="#">아이디 찾기</a>
     <a style="font-size: 8px; text-align: right;" onclick="location='<%=cp%>/mr/searchpw.do';"  href="#">비밀번호 찾기</a>
     
  </form>
  </div>


  
  
  
  </body>
</html>