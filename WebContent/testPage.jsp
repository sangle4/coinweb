<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page import="dao.user_dao" %>
<%@ page import="dao.user_dto" %>
<%@ page import="java.util.ArrayList" %>
<html>
	<head>
	<meta charset="UTF-8">
    <title>DB test-page</title>
	</head>
	<body>
		<%
			user_dao userdao = new user_dao();
			ArrayList<user_dto> dtos = userdao.User_Select();
		
			for(int i=0; i <dtos.size(); i++){
				user_dto dto = dtos.get(i);
				out.println(dto.getID());
				out.println(dto.getName());
				out.println(dto.getPassword());
				out.println(dto.getEmail());
			}
		%>
	</body>
</html>