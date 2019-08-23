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
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<%-- 아이디 : <%=id %><br> --%>
<%-- 비번 : <%=pw %><br> --%>
<br>
<%
	 user_dao userdao = new user_dao();  
%>

<jsp:useBean id = "dao" class = "dao.user_dao"/><br>
<jsp:setProperty property="*" name = "userdao"/><br>

아이디 : <jsp:getProperty property = "id" name = "userdao"/><br>
비밀번호 : <jsp:getProperty property = "pw" name = "userdao"/><br>
</body>
</html>