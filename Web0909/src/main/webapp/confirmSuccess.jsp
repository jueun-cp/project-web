<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Web0909 : 회원가입</title>
		<link href="memberRegister.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div class="wrap">
			<div class="logo">
				<h1><a><img src="./img/web0909_logo.png" alt="Girl in a jacket"></a></h1>
			</div>
			<div class="content">
				<form action="" method="">
					<label for="id">아이디</label>
				  	<input type="text" name="id" value="">
				  	<div id="con_r">사용가능한 아이디입니다.</div>
				  	<label for="pw">비밀번호</label>
				  	<input type="password" name="pw" value="">
				  	<label for="name">이름</label>
				  	<input type="text" name="name" value="">
				  	<label for="name">주소</label>
				  	<input type="text" name="name" value="">
				  	<label for="name">휴대폰</label>
				  	<input type="text" name="name" value="">
				  	<label for="name">성별</label>
				  	
				  	<input id="gen" type="radio" name="gen" value="mal" checked>
				  	<div class="gender"><span>남성<span></div>
				  	<input id="gen" type="radio" name="gen" value="fem">
				  	<div class="gender"><span>여성<span></div>
				  	
				  	<input id="submit" type="submit" value="가입하기">
				</form>
			
			</div>
			
		</div>
		
	</body>
</html>