<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.user_dao" %>
<%@ page import="dao.user_dto" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="login_tab">
			<div class="userState">
				<strong>로그인 후 이용해 주세요.</strong>
			</div>
			<form class="loginForm" action="" method="post" >
				<div class="IDPWfont">ID</div>
				<input name="userid" class="IDPWform" id = "idField">
				<div class="IDPWfont">PW</div>
				<input type="password" name="userpw" class="IDPWform" id = "pwField">
				<div class = "btbox">
					<div class="loginIns">
						<input type="checkbox" name="keep_id" id="logincb" title="체크시 로그인한 아이디를 기억합니다.">
						<label class = "idLabel" for="logincb">아이디유지</label>
					</div>
					<input type="submit" value="로그인" class="loginbt" onclick="loginBT()">
				</div>
				<div class = "option_box">
					<input type = "button" value = "회원가입" class = "login_option" onclick = "location.href='views/join.jsp'">
					<input type = "button" value = "아이디 /비밀번호 찾기" class = "login_option" onclick = "">
				</div>
			</form>
		</div>
</body>
</html>