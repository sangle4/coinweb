<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.user_dao" %>
<%@ page import="dao.user_dto" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" http-equiv='refresh' content='0; url="http://localhost:8080/testweb'>
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
String pw = request.getParameter("password");

user_dto dto = new user_dto();
dto.setID(id);
dto.setPassword(pw);
dto.setName("iri");
dto.setEmail("sangle4@naver.com");

user_dao dao = new user_dao();
	
dao.User_Insert(dto);
%>
<script>
alert("회원가입이 완료되었습니다.");
</script>
Page Loading....
</body>
</html>