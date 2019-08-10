<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %><%--db를 가져오기 위한 sql클래스 모두 임포트 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DB test page</title>
</head>
<body>
<%
	Class.forName("com.mysql.jdbc.Driver");//jsp에서 db가져오기 위한 jdbc드라이버를 찾아서 가져옴
	
	Connection conn = null;//JSP와 DB연결
	Statement stmt = null;	//SQL문장을 실행
	ResultSet rs = null;	//DB로부터 넘어온 값 저장
	try{ //SQL문을 쓰려면 try catch구문 써주어야한다 실제로 일하는 부분
		conn = DriverManager.getConnection("jdbc:mysql://localhost:8080/testweb","root","");
			//커넥션 만듦. 만드는 메소드 DriverManager.getConnection. "root", 비밀번호는 주지 않음
		stmt = conn.createStatement();
		rs = stmt.executeQuery("SELECT * FROM author");
			//가져온 결과를 rs배열에 저장하라
		while(rs.next()){//rs를 출력하는 while문 배열이니까
			out.println(rs.getString(1)+":"+rs.getString(2)+":"+rs.getInt(3)+":"+rs.getString(4)+"<br>");
		}
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		conn.close();
		stmt.close();
		rs.close();//초기화가 안되는 에러가 뜨기 때문에 변수 선언한 곳에 null로 잡아준다.
	}
%>
</body>
</html>