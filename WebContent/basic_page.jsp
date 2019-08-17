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
<script src="js/AccessAPI/binanceAPI.js"></script>
<!-- 바이낸스 API js파일  -->
<script src="js/AccessAPI/bithumbAPI.js"></script>
<!-- 빗썸 API js파일  -->
<script src="js/AccessAPI/upbitAPI.js"></script>
<!-- 업비트 API js파일  -->
<script src="js/AccessAPI/coinmarketcapAPI.js"></script>
<!-- 마켓캡 API js파일  -->
<script src="js/AccessAPI/coinoneAPI.js"></script>
<!-- 코인원 API js파일  -->
<script src="js/AccessAPI/korbitAPI.js"></script>
<!-- 코빗 API js파일  -->
<script src="js/AccessAPI/poloniexAPI.js"></script>
<!-- 폴로닉스 API js파일  -->
<script src="js/AccessAPI/upbitAPI.js"></script>
<!-- 업비트 API js파일  -->
<script src="js/tradeCalcul.js"></script>
<!-- 거래 계산식모음 스크립트파일 -->
<script src="js/mainPage.js"></script>
<!-- 페이지 초기세팅 js파일  -->
<script>
	function hello() {
		// form태그는 id로 찾지 않고 부여한 name으로 간단하게 검색가능
		var ff = document.ff;

		// form태그 안의 값들은 따로 값을 검색하지 않아도 넘어간다
		// submit() : action에 지정된 주소로 파라미터와 함께 전송하겠다는 의미
		ff.submit();
	}
</script>
</head>
<body>
	<header>
		<h1>
			<a href="http://localhost:8080/testweb/" id="mainTitle"> <img
				id="mainImage" src="img/main.png">oinWeb
			</a>
		</h1>
	</header>

	<ul class="mainNAV">
		<!-- <i class="material-icons">cloud</i> -->
		<li class="menuLabel"><a href="#s0"><i class="material-icons"
				id="menuHome">home</i></a></li>
		<li class="menuLabel"><a href="#s1" class="menuA">menu</a></li>
		<li class="menuLabel"><a href="/free_board" class="menuA">board</a></li>
		<li class="menuLabel"><a href="#s3" class="menuA">forum</a></li>
		<li class="menuLabel"><a href="#s4" class="menuA">article</a></li>
		<li class="menuLabel"><a href="#s5" class="menuA">chart</a></li>
		<li class="menuLabel"><a href="#s6" class="menuA">calculator</a></li>
	</ul>

	<div class="contents">
		<div class="contents_trade_table" style="text-align: center;">
		
		</div>

		<div class="login_tab">

		</div>


		<div class="rank_section" id="s1" style="float: left;">

		</div>

		<div class="aside_tab">
		
		</div>

	</div>
		
	<footer>
		<div class = "footer_copy">
			e-mail: sangle4@naver.com<br>
			Copyright&copy; CoinWeb All Rights Reserved.
		</div>
		<form name="ff" action="testInclude.jsp" method="get">
			<input name="str">dd
			<input type="button" value="DB test button" onclick="hello()">
		</form>
	</footer>
</body>
</html>