<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coin Web</title>
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/login.css">
<link rel="stylesheet" type="text/css" href="css/premiumCalcul.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Myeongjo|Ubuntu&display=swap"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Baloo+Chettan&display=swap"
	rel="stylesheet">
<script src="js/AccessAPI/binanceAPI.js"></script> <!-- 바이낸스 API js파일  -->
<script src="js/AccessAPI/bithumbAPI.js"></script> <!-- 빗썸 API js파일  -->
<script src="js/AccessAPI/upbitAPI.js"></script> <!-- 업비트 API js파일  -->
<script src="js/AccessAPI/coinmarketcapAPI.js"></script> <!-- 마켓캡 API js파일  -->
<script src="js/AccessAPI/coinoneAPI.js"></script> <!-- 코인원 API js파일  -->
<script src="js/AccessAPI/korbitAPI.js"></script> <!-- 코빗 API js파일  -->
<script src="js/AccessAPI/poloniexAPI.js"></script> <!-- 폴로닉스 API js파일  -->
<script src="js/AccessAPI/upbitAPI.js"></script> <!-- 업비트 API js파일  -->
<script src="js/tradeCalcul.js"></script> <!-- 거래 계산식모음 스크립트파일 -->
<script src="js/mainPage.js"></script> <!-- 페이지 초기세팅 js파일  -->
</head>
<body>
	<jsp:include page="views/menu/top.jsp"></jsp:include>
	
	<jsp:include page="views/menu/main.jsp"></jsp:include>
	
	<jsp:include page="views/menu/footer.jsp"></jsp:include>
</body>
</html>