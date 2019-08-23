<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.user_dao" %>
<%@ page import="dao.user_dto" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" http-equiv='refresh' content='0; url="http://localhost:8080/testweb'>
<title>Coin Web</title>
<link rel="shortcut icon" type="image/x-icon" href="../favicon.ico">
</head>
<body>
<%
String id = request.getParameter("id");
String pw = request.getParameter("password");
String name = request.getParameter("name");
String nickname = request.getParameter("nickname");
String email = request.getParameter("email");

user_dto dto = new user_dto();
dto.setID(id);
dto.setPassword(pw);
dto.setName(name);
dto.setNickname(nickname);
dto.setEmail(email);
dto.setAdmin(0);

user_dao dao = new user_dao();
	
dao.User_Insert(dto);
%>
<script>
alert("회원가입이 완료되었습니다.");
</script>
Page Loading....
</body>
</html>