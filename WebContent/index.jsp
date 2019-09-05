<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coin Web</title>
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/login.css">
<link rel="stylesheet" type="text/css" href="css/premiumCalcul.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link href="https://fonts.googleapis.com/css?family=Nanum+Myeongjo|Ubuntu&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Baloo+Chettan&display=swap" rel="stylesheet">
<script src="js/AccessAPI/binanceAPI.js"></script> <!-- 바이낸스 API js파일  -->
<script src="js/AccessAPI/bithumbAPI.js"></script> <!-- 빗썸 API js파일  -->
<script src="js/AccessAPI/upbitAPI.js"></script> <!-- 업비트 API js파일  -->
<script src="js/AccessAPI/coinmarketcapAPI.js"></script> <!-- 마켓캡 API js파일  -->
<script src="js/AccessAPI/coinoneAPI.js"></script> <!-- 코인원 API js파일  -->
<script src="js/AccessAPI/korbitAPI.js"></script> <!-- 코빗 API js파일  -->
<script src="js/AccessAPI/poloniexAPI.js"></script> <!-- 폴로닉스 API js파일  -->
<script src="js/AccessAPI/upbitAPI.js"></script> <!-- 업비트 API js파일  -->
<script src="js/tradeCalcul.js"></script> <!-- 거래 계산식모음 스크립트파일 -->
<script src="js/userLogin.js"></script> <!-- 유저 로그인관련 js파일 -->
<script src="js/mainPage.js"></script> <!-- 페이지 초기세팅 js파일  -->
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
	
	<jsp:include page="views/module/top.jsp"></jsp:include> <!-- top부분을 불러옴 -->
	
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
			<div style = "margin : 0px 0px 10px 0px; width : 700px; height : 25px;">
				<div id="usd_rate"
				style="width : 250px; font-family: 'Baloo Chettan', cursive; padding: 0px; margin: 1px 10px 10px 0px; text-align: left; color: #1E60B5; font-size: 15px; float : left;">
				loading...</div>
				<div id="marketcap"
				style="width : 400px; font-family: 'Baloo Chettan', cursive; padding: 0px; margin: 1px 10px 10px 0px; text-align: right; color: #1E60B5; font-size: 15px; float : right;">
				loading...</div>
			</div>	
		</div>
		
		<jsp:include page="views/module/login_tool.jsp"></jsp:include> <!-- login부분을 불러옴 -->

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

		<div class="aside_tab">
			<div class = "tab_Sites">
				Exchange Market sites
			</div>
			<div class = "sites_list_seperate">
				<a href="https://upbit.com" target="_sub" class = "site_url" title="업비트 사이트 바로가기">업비트　　www.upbit.com</a> 
			</div>
			<div class = "sites_list_seperate">
				<a href="https://bithumb.com" target="_sub" class = "site_url" title="빗썸 사이트 바로가기">빗썸　　　www.bithumb.com</a> 
			</div>
			<div class = "sites_list_seperate">
				<a href="https://coinone.co.kr" target="_sub" class = "site_url" title="코인원 사이트 바로가기">코인원　　www.coinone.co.kr</a> 
			</div>
			<div class = "sites_list_seperate">
				<a href="https://coinbit.co.kr" target="_sub" class = "site_url" title="코인빗 사이트 바로가기">코인빗　　www.coinbit.co.kr</a> 
			</div>
			<div class = "sites_list_seperate">
				<a href="https://korbit.com" target="_sub" class = "site_url" title="코빗 사이트 바로가기">코빗　　　www.korbit.com</a> 
			</div>
			<div class = "sites_list_seperate">
				<a href="https://binance.com" target="_sub" class = "site_url" title="바이낸스 사이트 바로가기">바이낸스　www.binance.com</a> 
			</div>
			<div class = "sites_list_seperate">
				<a href="https://poloniex.com" target="_sub" class = "site_url" title="폴로닉스 사이트 바로가기">폴로닉스　www.poloniex.com</a> 
			</div>
			<div class = "sites_list_seperate">
				<a href="https://bittrex.com" target="_sub" class = "site_url" title="비트렉스 사이트 바로가기">비트렉스　www.bittrex.com</a> 
			</div>
			<div class = "sites_list_seperate">
				<a href="https://bitfinex.com" target="_sub" class = "site_url" title="파이넥스 사이트 바로가기">파이넥스　www.bitfinex.com</a> 
			</div>
			<div style = "height : 20px;"></div>
			<div class = "tab_Sites">
				Information sites
			</div>
			<div class = "sites_list_seperate">
				<a href="https://coinpan.com" target="_sub" class = "site_url" title="코인판 사이트 바로가기">코인판　　www.coinpan.com</a> 
			</div>
			<div class = "sites_list_seperate">
				<a href="https://gall.dcinside.com/mgallery/board/lists?id=coin" target="_sub" class = "site_url" title="디시인사이드 알트갤러리 사이트 바로가기">알트갤　　www.gall.dcinside..</a> 
			</div>
			<div class = "sites_list_seperate">
				<a href="https://cafe.naver.com/nexontv" target="_sub" class = "site_url" title="비트맨 사이트 바로가기">비트맨　　www.cafe.naver.c..</a> 
			</div>
			<div class = "sites_list_seperate">
				<a href="https://coinmarketcap.com" target="_sub" class = "site_url" title="코인마켓캡 사이트 바로가기">마켓캡　　www.coinmarketc..</a> 
			</div>
		</div>

	</div>

	<jsp:include page="views/module/footer.jsp"></jsp:include> <!-- footer부분을 불러옴 -->
</body>
</html>

<!-- 데이터베이스 테스트 버튼, footer에 입력 -->
	<!-- <jsp:include page="views/module/output_test.jsp"></jsp:include> -->
	<!-- 
	<form name="ff" action="testPage.jsp" method="get" style = "margin : 0px 220px;">		
		<input type="button" value="DB test button" onclick="hello()">
	</form>
	 -->