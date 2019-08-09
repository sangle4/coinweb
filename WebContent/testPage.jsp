<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page import="dao.test_dao" %>
<%@ page import="dao.test_dto" %>
<%@ page import="java.util.ArrayList" %>
<html>
	<head>
	<meta charset="UTF-8">
    <title>DB test-page</title>
	</head>
	<body>
		<%
			test_dao testdao = new test_dao();
			ArrayList<test_dto> dtos = testdao.Test_Select();
		
			for(int i=0; i <dtos.size(); i++){
				test_dto dto = dtos.get(i);
				out.println(dto.getID());
				out.println(dto.getName());
			}
		%>
	</body>
</html>