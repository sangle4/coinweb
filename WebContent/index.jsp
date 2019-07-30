<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Coin Web</title>
		<link rel="stylesheet" type="text/css" href="css/css01.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src = "js/AccessAPI/binanceAPI.js"></script> <!-- 빗썸 API js파일  -->
		<script src = "js/AccessAPI/bithumbAPI.js"></script> <!-- 바이낸스 API js파일  -->
		<script src = "js/AccessAPI/upbitAPI.js"></script> <!-- 업비트 API js파일  -->
		<script src = "js/AccessAPI/coinmarketcapAPI.js"></script> <!-- 코인원 API js파일  -->
		<script src = "js/AccessAPI/coinoneAPI.js"></script> <!-- 마켓캡 API js파일  -->
		<script src = "js/AccessAPI/korbitAPI.js"></script> <!-- 코빗 API js파일  -->
		<script src = "js/mainPage.js"></script> <!-- 페이지 초기세팅 js파일  -->
		<script>
						
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
			
			<div>
				<h1 id = "priceh1">시세표</h1>
				<button id="start_ajax">새로고침</button>
				
				<table border="1" width = 98%; id = "tradeTable">
    				<thead>
        				<tr>
            				<th>거래소</th>
            				<th>실시간 시세(KRW)</th>
            				<th>실시간 시세(USD)</th>
            				<th>24시간 변동률</th>
            				<th>거래량</th>
        				</tr>
    				</thead>
    				<tbody>
        				<tr>
            				<th>빗썸</th>
            				<td id = "bithumb_KRW"></td> <!-- 빗썸 실시간 시세(원화) -->
            				<td id = "bithumb_USD"></td> <!-- 빗썸 실시간 시세(달러) -->
            				<td id = "bithumb_fluctate"></td> <!-- 빗썸 24시간 변동률 -->
            				<td id = "bithumb_trade"></td> <!-- 빗썸 거래량 -->
        				</tr>
        				<tr>
            				<th>코인원</th>
            				<td id = "coinone_KRW"></td> <!-- 코인원 실시간 시세(원화) -->
            				<td id = "coinone_USD"></td> <!-- 코인원 실시간 시세(달러) -->
            				<td id = "coinone_fluctate"></td> <!-- 코인원 24시간 변동률 -->
            				<td id = "coinone_trade"></td> <!-- 코인원 거래량 -->
        				</tr>
        				<!--
        				<tr>
            				<th>코빗</th>
            				<td id = "korbit_KRW"></td> 
            				<td id = "korbit_USD"></td> 
            				<td id = "korbit_fluctate"></td>
            				<td id = "korbit_trade"></td>
        				</tr> -->
        				<tr>
            				<th>추가</th>
            				<td></td> <!--  실시간 시세(원화) -->
            				<td></td> <!--  실시간 시세(달러) -->
            				<td></td> <!--  24시간 변동률 -->
            				<td></td> <!--  거래량 -->
        				</tr>
        				<tr>
            				<th>추가2</th>
            				<td></td> <!--  실시간 시세(원화) -->
            				<td></td> <!--  실시간 시세(달러) -->
            				<td></td> <!--  24시간 변동률 -->
            				<td></td> <!--  거래량 -->
        				</tr>  
				    </tbody>			
    				<tfoot>
      					<tr>
          					<th>종합</th>
          					<td id = "marketcap_KRW"></td> 
            				<td id = "marketcap_USD"></td> 
            				<td id = "marketcap_fluctate"></td>
            				<td id = "marketcap_trade"></td>
      					</tr>  
    				</tfoot>
  				</table>
  				<div>
  					<!-- 종합 표시란 -->
  				</div>
			</div>
		<!--  </section> -->
		<section class="c1" id = "s1">
			<h2>시가총액</h2>
			<ol>
			<li>페이지의 머가리</li>
			<li>페이지 제목, 페이지를 소개하는 간단한 섹션</li>
			</ol>
		</section>
		<section id = "s2">
			<h2>nav</h2>
			<ul>
			<li>하이퍼링크들을 모아 놓은 특별한 섹션</li>
			<li>페이지 내 목차를 만드는 용도</li>
			</ul>
		</section>
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