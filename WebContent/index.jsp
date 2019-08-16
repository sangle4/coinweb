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
		<li class="menuLabel"><a href="#s2" class="menuA">nav</a></li>
		<li class="menuLabel"><a href="#s3" class="menuA">section</a></li>
		<li class="menuLabel"><a href="#s4" class="menuA">article</a></li>
		<li class="menuLabel"><a href="#s5" class="menuA">aside</a></li>
		<li class="menuLabel"><a href="#s6" class="menuA">footer</a></li>
	</ul>

	<div class="contents">
		<div class="contents_trade_table" style="text-align: center;">
			<ul>
				<li class="LiBTC" style="border-left: 1px solid #BEE0FF;"><a
					href="#1" class="tradeLabel" onclick="fillTable('BTC')">BTC</a></li>
				<li class="LiETH"><a href="#1" class="tradeLabel"
					onclick="fillTable('ETH')">ETH</a></li>
				<li class="LiLTC"><a href="#1" class="tradeLabel"
					onclick="fillTable('LTC')">LTC</a></li>
				<li class="LiXRP"><a href="#1" class="tradeLabel"
					onclick="fillTable('XRP')">XRP</a></li>
				<li class="LiADA"><a href="#1" class="tradeLabel"
					onclick="fillTable('ADA')">ADA</a></li>
				<li class="LiBCH" style="border-right: 1px solid #BEE0FF;"><a
					href="#1" class="tradeLabel" onclick="fillTable('BCH')">BCH</a></li>
			</ul>
			<table width=100%; onLoad="refreshTable()"
				style="border: 1px solid #BEE0FF;">
				<thead>
					<tr id="tradeTR" style="background-color: #E0EFFF">
						<th>거래소</th>
						<th>실시간 시세(KRW)</th>
						<th>실시간 시세(USD)</th>
						<th>24시간 변동률</th>
						<th>한국 프리미엄</th>
						<th>거래량</th>
					</tr>
				</thead>
				<tbody>
					<tr id="tradeTR">
						<td>업비트</td>
						<td id="upbit_KRW"></td>
						<!-- 빗썸 실시간 시세(원화) -->
						<td id="upbit_USD"></td>
						<!-- 빗썸 실시간 시세(달러) -->
						<td id="upbit_fluctate"></td>
						<!-- 빗썸 24시간 변동률 -->
						<td id="upbit_premium" style="color: green;"></td>
						<!-- 해외 거래소와의 프리미엄 차이 -->
						<td id="upbit_volume"></td>
						<!-- 빗썸 거래량 -->
					</tr>
					<tr id="tradeTR">
						<td>빗썸</td>
						<td id="bithumb_KRW"></td>
						<td id="bithumb_USD"></td>
						<td id="bithumb_fluctate"></td>
						<td id="bithumb_premium" style="color: green;"></td>
						<td id="bithumb_volume"></td>
					</tr>
					<tr id="tradeTR">
						<td>코인원</td>
						<td id="coinone_KRW"></td>
						<td id="coinone_USD"></td>
						<td id="coinone_fluctate"></td>
						<td id="coinone_premium" style="color: green;"></td>
						<td id="coinone_volume"></td>
					</tr>
					<tr id="tradeTR">
						<td>폴로닉스</td>
						<td id="poloniex_KRW"></td>
						<td id="poloniex_USD"></td>
						<td id="poloniex_fluctate"></td>
						<td id="poloniex_premium"></td>
						<td id="poloniex_volume"></td>
					</tr>
					<!-- 
        				<tr>
            				<th>추가</th>
            				<td></td> 
            				<td></td> 
            				<td></td> 
            				<td></td> 
        				</tr>
        				 -->
				</tbody>
				<tfoot>
					<tr id="tradeTR">
						<td>세계 종합</td>
						<td id="marketcap_KRW"></td>
						<td id="marketcap_USD"></td>
						<td id="marketcap_fluctate"></td>
						<td id="marketcap_premium"></td>
						<td id="marketcap_volume"></td>
					</tr>
				</tfoot>
			</table>

			<div id="marketcap"
				style="font-family: 'Baloo Chettan', cursive; padding: 0px; margin: 1px 10px 10px 0px; text-align: right; color: #1E60B5; font-size: 15px;">
				loading...</div>
		</div>

		<div class="login_tab">

			<div class="userState">
				<strong>로그인 후 이용해 주세요.</strong>
			</div>
			<form class="loginForm" action="" method="get">
				<div class="IDPWfont">ID</div>
				<input name="userid" class="IDPWform">
				<div class="IDPWfont">PW</div>
				<input type="password" name="userpw" class="IDPWform">
				<div class = "btbox">
					<div class="loginIns">
						<input type="checkbox" name="keep_id" id="logincb" title="체크시 로그인한 아이디를 기억합니다.">
						<label class = "idLabel" for="logincb">아이디유지</label>
					</div>
					<input type="button" value="로그인" class="loginbt" onclick="">
				</div>
				<div class = "option_box">
					<input type = "button" value = "회원가입" class = "login_option" onclick = "">
					<input type = "button" value = "아이디 /비밀번호 찾기" class = "login_option" onclick = "">
				</div>
			</form>

		</div>


		<div class="rank_section" id="s1" style="float: left;">
			<!-- 시가총액 섹션 -->
			<h2 class="rankTitle">Cryptocurrency Rank</h2>
			<div class="rankTableDiv" style="text-align: center;">
				<table width=100%; onLoad="refreshTable()">
					<thead id="rankHead">
						<tr style="background-color: #E0EFFF">
							<th>순위</th>
							<th></th>
							<th>코인명</th>
							<th>심볼</th>
							<th>시가 총액</th>
							<th>거래 가격</th>
							<th>1일 변화량</th>
							<th>1일 거래량</th>
							<th>총 발행량</th>
							<th>유통량</th>
							<th>발행 대비 유통량</th>
						</tr>
					</thead>
					<tbody id="rankTableBody">

					</tbody>
				</table>
			</div>
		</div>

		<div class="aside_tab"></div>


	</div>



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
		<a href="https://eclass.dongguk.edu/index.jsp"><img src="https://eclass.dongguk.edu/lmsdata/img/template1/logo.png"></a>
		-->
		
	<footer>
		<div class = "footer_copy">
			e-mail: sangle4@naver.com<br>
			Copyright&copy; CoinWeb All Rights Reserved.
		</div>
	</footer>
</body>
</html>