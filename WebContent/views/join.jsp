<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coin Web</title>
<link rel="shortcut icon" type="image/x-icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<link rel="stylesheet" type="text/css" href="../css/login.css">
<link rel="stylesheet" type="text/css" href="../css/premiumCalcul.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link href="https://fonts.googleapis.com/css?family=Nanum+Myeongjo|Ubuntu&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Baloo+Chettan&display=swap" rel="stylesheet">
<script src="../js/AccessAPI/binanceAPI.js"></script> <!-- 바이낸스 API js파일  -->
<script src="../js/AccessAPI/bithumbAPI.js"></script> <!-- 빗썸 API js파일  -->
<script src="../js/AccessAPI/upbitAPI.js"></script> <!-- 업비트 API js파일  -->
<script src="../js/AccessAPI/coinmarketcapAPI.js"></script> <!-- 마켓캡 API js파일  -->
<script src="../js/AccessAPI/coinoneAPI.js"></script> <!-- 코인원 API js파일  -->
<script src="../js/AccessAPI/korbitAPI.js"></script> <!-- 코빗 API js파일  -->
<script src="../js/AccessAPI/poloniexAPI.js"></script> <!-- 폴로닉스 API js파일  -->
<script src="../js/AccessAPI/upbitAPI.js"></script> <!-- 업비트 API js파일  -->
<script src="../js/tradeCalcul.js"></script> <!-- 거래 계산식모음 스크립트파일 -->
<script src="../js/userLogin.js"></script> <!-- 유저 로그인관련 js파일 -->
<script src="../js/mainPage.js"></script> <!-- 페이지 초기세팅 js파일  -->
<script>
	function id_check() {
		var selected_id = document.getElementById("user_selected_id").value;
		if(selected_id == ""){
			alert("아이디를 입력하세요.");
		} else {
			alert("존재하는 아이디입니다. \n다른 아이디를 사용하세요.");	
		}
		
		/*
		
		$.ajax({
			type : "POST",
			url : "user_selected_id",
			data : {"id" : selected_id},
			dataType : "text",
			success : function(data){
				if(data == "1"){
					alert("사용가능한 아이디입니다.");
				} else{
					alert("중복된 아이디입니다.\n다른 아이디를 입력해주세요.");
				},
				error : function(){
					alert("ID check function error!");
				}
			}
		});
		
		*/
	}
	
	function pwConfirm() {
		var pw1 = document.getElementById("pw1").value;
		var pw2 = document.getElementById("pw2").value;
		var inner2 = document.getElementById("pw2_inner");
		
		if(pw1 != pw2) //password confirm 
			inner2.innerHTML = "<i class=\"material-icons md-11\">report_problem</i> 비밀번호가 다릅니다.";
		else
			inner2.innerHTML = "<i class=\"material-icons md-11\">check_circle_outline</i> 비밀번호가 일치합니다.";
	}
	
	function pwCondition() {
		var pw1 = document.getElementById("pw1").value;
		var inner = document.getElementById("pw1_inner");
		
		if(pw1.length < 6){
			inner.innerHTML = "<i class=\"material-icons md-11\">report_problem</i> 비밀번호는 최소 6자리 이상이어야 합니다.";
		}
		else {
			inner.innerHTML = "<i class=\"material-icons md-11\">check_circle_outline</i> 사용가능한 비밀번호입니다.";
		}
	}
</script>
</head>
<body>
	<header>
		<h1>
			<a href="http://localhost:8080/testweb/" id="mainTitle"> <img
				id="mainImage" src="../img/main.png">oinWeb
			</a>
		</h1>
	</header>

	<jsp:include page="module/top.jsp"></jsp:include> <!-- top부분을 불러옴 -->
	
	<div class="contents">
		<div class="contents_join_box" style="text-align: center;">
			<table width=100%; onLoad="refreshTable()" style="display : none;" id = "hideTable">
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
			
			<div style = "width : 670px; border : 1px solid #BEE0FF; height : 600px;">
				<div class = "join_box_title">Join Us</div>
				
				<form class="join_form" action="join_process.jsp" method="POST" onsubmit = "return check(this)" style = "height : 400px; text-align : left;">
					<div class = "join_tag">*ID</div>
					<input class = "join_input" name="id" id = "user_selected_id" style = "display : inline-block;">
					<input type="button" class = "checkBT" value="중복확인" onclick="id_check()">
					
					<div class = "join_tag">*PW</div>
					<input class = "join_input" type="password" name="password" id = "pw1" onkeyup="pwCondition()">
					<span class = "inner_text" id = "pw1_inner"></span>
					<div class = "join_tag">*PW verify</div>
					<input class = "join_input" type="password" name="password" id = "pw2" onkeyup="pwConfirm()">
					<span class = "inner_text" id = "pw2_inner"></span>
					
					<div class = "join_tag">*Name</div>
					<input class = "join_input" name="name" style = "display : inline-block;">
					<span class = "inner_text"></span>
					<div class = "join_tag">&nbsp;Nickname</div>
					<input class = "join_input" name="nickname" style = "display : inline-block;">
					<span class = "inner_text"></span>
					<div class = "join_tag">*Email</div>
					<input class = "join_input" name="email" style = "display : inline-block;">
					<span class = "inner_text"></span>
					
					<span class = "join_info">* 표시 항목은 필수사항입니다.</span>
					<input type="submit" value="회원가입" class="submitBT">
				</form>
			</div>
		</div>
		
		<jsp:include page="../views/module/login_tool.jsp"></jsp:include> <!-- login부분을 불러옴 -->

		<div class="join_section" id="s1" style="float: left;">
		</div>
		<jsp:include page="module/aside_tab.jsp"></jsp:include>

	</div>

	
	<jsp:include page="module/output_test.jsp"></jsp:include>
	<jsp:include page="module/footer.jsp"></jsp:include> <!-- footer부분을 불러옴 -->
</body>
</html>