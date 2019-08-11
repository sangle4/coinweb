<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Coin Web</title>
		<link rel="stylesheet" type="text/css" href="css/css01.css">
		<link rel="stylesheet" type="text/css" href="css/premiumCalcul.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src = "js/AccessAPI/binanceAPI.js"></script> <!-- 바이낸스 API js파일  -->
		<script src = "js/AccessAPI/bithumbAPI.js"></script> <!-- 빗썸 API js파일  -->
		<script src = "js/AccessAPI/upbitAPI.js"></script> <!-- 업비트 API js파일  -->
		<script src = "js/AccessAPI/coinmarketcapAPI.js"></script> <!-- 마켓캡 API js파일  -->
		<script src = "js/AccessAPI/coinoneAPI.js"></script> <!-- 코인원 API js파일  -->
		<script src = "js/AccessAPI/korbitAPI.js"></script> <!-- 코빗 API js파일  -->
		<script src = "js/AccessAPI/poloniexAPI.js"></script> <!-- 폴로닉스 API js파일  -->
		<script src = "js/AccessAPI/upbitAPI.js"></script> <!-- 업비트 API js파일  -->
		<script src = "js/tradeCalcul.js"></script> <!-- 거래 계산식모음 스크립트파일 -->
		<script src = "js/mainPage.js"></script> <!-- 페이지 초기세팅 js파일  -->
		<script>
		function hello(){
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
				<img width = "200" height = "45" float = left src="http://blogfiles.naver.net/MjAxODAyMjhfMTc4/MDAxNTE5NzQ0MDA0MjU2.UkoBQg_qlKF7JI1QTga9Ayt_9Dose1j2cI6nbh2Q1kYg.DHAS_0aVUt_GE2OTt2stp7rE31cofj4Xwe0YTSfuVrMg.JPEG.wapper12001/bitcoin-1-300x225.jpg">
				<h1 id = "mainTitle"><a href = "http://localhost:8080/testweb/" id = "ad">코인웹</a></h1>
		</header>
		
		<nav>
			<a href="#s1" id = "na"><i class="material-icons">cloud</i></a>&nbsp;&nbsp;
			<a href="#s2" id = "na">[nav]</a>&nbsp;&nbsp;
			<a href="#s3" id = "na">[section]</a>&nbsp;&nbsp;
			<a href="#s4" id = "na">[article]</a>&nbsp;&nbsp;
			<a href="#s5" id = "na">[aside]</a>&nbsp;&nbsp;
			<a href="#s6" id = "na">[footer]</a>&nbsp;&nbsp;
		</nav>
		<!-- <section class="c1" id = "trade"> -->
			
			<div style="text-align : center;">
				<h1 id = "priceh1">시세표</h1>
				<button id="start_ajax">새로고침</button>
				<div id = "tableWithLabel">
					<ul>
						<li><a href = "#1" id = "tradeLabel" onclick="fillTable('BTC')">BTC</a></li>
						<li><a href = "#1" id = "tradeLabel" onclick="fillTable('ETH')">ETH</a></li>
						<li><a href = "#1" id = "tradeLabel" onclick="fillTable('LTC')">LTC</a></li>
						<li><a href = "#1" id = "tradeLabel" onclick="fillTable('XRP')">XRP</a></li>
						<li><a href = "#1" id = "tradeLabel" onclick="fillTable('ADA')">ADA</a></li>
						<li><a href = "#1" id = "tradeLabel" onclick="fillTable('BCH')">BCH</a></li>
					</ul>
					<table width = 100%; onLoad="refreshTable()">
    				<thead>
        				<tr id = "tradeTR" style = "background-color : #EAEAEA">
            				<th>거래소</th>
            				<th>실시간 시세(KRW)</th>
            				<th>실시간 시세(USD)</th>
            				<th>24시간 변동률</th>
            				<th>한국 프리미엄</th>
            				<th>거래량</th>
        				</tr>
    				</thead>
    				<tbody>
    					<tr id = "tradeTR">
            				<td>업비트</td>
            				<td id = "upbit_KRW"></td> <!-- 빗썸 실시간 시세(원화) -->
            				<td id = "upbit_USD"></td> <!-- 빗썸 실시간 시세(달러) -->
            				<td id = "upbit_fluctate"></td> <!-- 빗썸 24시간 변동률 -->
            				<td id = "upbit_premium" style="color : green;"></td> <!-- 해외 거래소와의 프리미엄 차이 -->
            				<td id = "upbit_volume"></td> <!-- 빗썸 거래량 -->
        				</tr>
        				<tr id = "tradeTR">
            				<td>빗썸</td>
            				<td id = "bithumb_KRW"></td>
            				<td id = "bithumb_USD"></td>
            				<td id = "bithumb_fluctate"></td>
            				<td id = "bithumb_premium" style="color : green;"></td>
            				<td id = "bithumb_volume"></td>
        				</tr>
        				<tr id = "tradeTR">
            				<td>코인원</td>
            				<td id = "coinone_KRW"></td> 
            				<td id = "coinone_USD"></td>
            				<td id = "coinone_fluctate"></td>
            				<td id = "coinone_premium" style="color : green;"></td>
            				<td id = "coinone_volume"></td>
        				</tr>
        				<tr id = "tradeTR">
            				<td>폴로닉스</td>
            				<td id = "poloniex_KRW"></td> 
            				<td id = "poloniex_USD"></td> 
            				<td id = "poloniex_fluctate"></td>
            				<td id = "poloniex_premium"></td>
            				<td id = "poloniex_volume"></td>
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
      					<tr id = "tradeTR">
          					<td>세계 종합</td>
          					<td id = "marketcap_KRW"></td> 
            				<td id = "marketcap_USD"></td> 
            				<td id = "marketcap_fluctate"></td>
            				<td id = "marketcap_premium"></td>
            				<td id = "marketcap_volume"></td>
      					</tr>  
    				</tfoot>
  					</table>
  				</div>
  				<div id = "marketcap" style="padding:0px 10px; text-align : right;">
	  					<!-- 종합 표시란 -->
  						loading...
  				</div>
			</div>
			
		<!--  </section> -->
		<section class="c1" id = "s1">
			<h2>시가총액 순위표</h2>
			<div id = "rankTableDiv" style="text-align : center;">
				<table width = 100%; onLoad="refreshTable()">
    				<thead id = "rankHead">
        				<tr style = "background-color : #EAEAEA">
            				<th>순위</th>
            				<th>코인명</th>
            				<th>심볼</th>
            				<th>시가 총액</th>
            				<th>거래 가격</th>
            				<th>1일 변화량</th>
            				<th>1일 거래량</th>
            				<th>총 발행량</th>
            				<th>유통량</th>
        				</tr>
    				</thead>
    				<tbody id = "rankTableBody">
    					  
				    </tbody>
  					</table>
			</div>
		</section>
		
		<section id = "premium_section">
		
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
		<footer>
			<p>A Competitive Study on 3G Blockchain EOS and Cardano(ADA)<br />
			Kangil Kim<br>
			&copy;Dept, of Computer Science and Engineering, Dongguk University<br>
			e-mail: sangle4@naver.com
			</p>
		</footer>
		<a href="https://eclass.dongguk.edu/index.jsp"><img src="https://eclass.dongguk.edu/lmsdata/img/template1/logo.png"></a>
	</body>
</html>