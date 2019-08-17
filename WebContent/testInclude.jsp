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
		<!-- 
		<section id = "premium_section" style = "float : left;">
		
			<h2>환차 이익 계산기<a href = "#1" id = "premium_trade" onclick="fillTable('BTC')"><i class="material-icons">keyboard_arrow_down</i></a></h2>
			<form name = "myform">
			<div class = "box1">
				<p class = "pc1">
					<input type = "text" name = "txt1" id = "txt1" placeholder = "number1" size = "5">
				</p>
				<p class = "pc2">
					<input type = "radio" name = "r_op" id = "r_op1" value = "+"><br>
					<input type = "radio" name = "r_op" id = "r_op2" value = "-"><br>
					<input type = "radio" name = "r_op" id = "r_op3" value = "*"><br>
					<input type = "radio" name = "r_op" id = "r_op4" value = "/"><br>
				</p>
				<p class = "pc2">
					<label for = "r_op1"> + </label><br>
					<label for = "r_op2"> - </label><br>
					<label for = "r_op3"> * </label><br>
					<label for = "r_op4"> / </label><br>
				</p>
				<p class = "pc1">
					<input type = "text" name = "txt2" id = "txt2" placeholder = "number2" size = "5">
				</p>
				<p class = "pc1">
					<input type = "button" value = "=" onclick = "calShow();">
					<input type = "button" value = "Cancel" onclick = "cancelData();">
				</p>
				<p class = "pc3">
					<input type = "checkbox" name = "ck_eval" id = "ck_eval">
					<label for = "ck_eval">including fx</label>
				</p>
			</div>
			</form>
			<div class = "box3">
				<div id = "msg"></div>
			</div>
		</section>
		
		<form name="ff" action="testPage.jsp" method="get">
			<input name="str">
			<input type="button" value="DB test button" onclick="hello()">
		</form>
		
		<section id = "box1">
			<h2>aside</h2>
			본문에서 약간 벗어난 노트나 팁
			신문, 잡지에서 주요 기사 옆 관련기사, 삽입 어구로 표시된 논평등
			페이지의 오른쪽이나 왼쪽에 주로 배치
		</section>
		<section id = "box1">
			<h2>footer</h2>
			꼬리말 영역, 주로 저자나 저작권 정보
			<div id = "hyperLink">
			<a href="http://eclass.dongguk.edu">동국대학교 eclass 사이트</a>
			</div>
		</section>
		-->

	<!--
		<form name="ff" action="testInclude.jsp" method="get">
			<input name="str">
			<input type="button" value="DB test button" onclick="hello()">
		</form>
	-->
</body>
</html>