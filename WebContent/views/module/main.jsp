<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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

		<div class="aside_tab">
		
		</div>

	</div>
</body>
</html>