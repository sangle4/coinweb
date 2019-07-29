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
		<script>
			//alert("hello, iri!"); //페이지의 로딩이 되기 전에 먼저 실행하는 스크립트 문장
			
			$(document).ready(function(){ //페이지의 로딩이 완료된 후에 실행하는 스크립트 문장
				
				function numberWithCommas(x) {
                	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            	}
				
				$("#start_ajax").click(function(){
					$.get('https://api.bithumb.com/public/ticker/ALL', function(data) {
	                    var bithumb_btc = parseFloat(data['data']['BTC']['closing_price']);
	                    var bithumb_btc_fluctate = parseFloat(data['data']['BTC']['24H_fluctate']);
	                    var bithumb_btc_trade = parseFloat(data['data']['BTC']['volume_1day']);
	                    
	                    var rate = 1183; //달러 환율, 변경해야됨
	                    
	                 	// 거래소 시세 정보 표에 값 세팅
	                    $('#bithumb_KRW').html(numberWithCommas(bithumb_btc) + " KRW");
	                    $('#bithumb_USD').html(numberWithCommas(bithumb_btc) + " USD");
	                    $('#bithumb_fluctate').html(bithumb_btc_fluctate + " KRW");
	                    $('#bithumb_trade').html(bithumb_btc_trade.toFixed(1) + " BTC");
	                    
	                    
	                    //$('#bithumb_BTC').html(bithumb_btc0 + ' (N)<BR>'+bithumb_btc1+'<br>'+bithumb_btc2);  // 거래소 시세 정보 표에 값 세팅 
	                    //$('#bithumb_ETH').html(bithumb_eth0 + ' (N)<BR>'+bithumb_eth1+'<br>'+bithumb_eth2); 
	                    //$('#bithumb_XRP').html(bithumb_xrp0 + ' (N)<BR>'+bithumb_xrp1+'<br>'+bithumb_xrp2);                 
	                    //$('#bithumb_LTC').html(bithumb_ltc0 + ' (N)<BR>'+bithumb_ltc1+'<br>'+bithumb_ltc2);                 
	                });
				});
				/*
				alert("no data");
				$.get('', funtion(data))
				$("#start_ajax").click(function(){
				    $.ajax({
				        type:"GET",
				        url:"https://api.bithumb.com/public/ticker/{currency}",
				        data : "ALL",
				        dataType : "xml",
				        success: function(xml){
				            console.log(xml);
				            alert("success");
				        },
				        error: function(xhr, status, error) {
				            alert(error);
				        }  
				    });
				});
				*/
				
			});
			
			
			
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
            				<th>업비트</th>
            				<td></td> <!-- 업비트 실시간 시세(원화) -->
            				<td></td> <!-- 업비트 실시간 시세(달러) -->
            				<td></td> <!-- 업비트 24시간 변동률 -->
            				<td></td> <!-- 업비트 거래량 -->
        				</tr>
        				<tr>
            				<th>코인원</th>
            				<td></td> <!-- 코인원 실시간 시세(원화) -->
            				<td></td> <!-- 코인원 실시간 시세(달러) -->
            				<td></td> <!-- 코인원 24시간 변동률 -->
            				<td></td> <!-- 코인원 거래량 -->
        				</tr>
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
          					<th>...</th>
          					<td>...</td>
          					<td>...</td>
          					<td>...</td>
          					<td>...</td>
      					</tr>  
    				</tfoot>
  				</table>
			</div>
		<!--  </section> -->
		<section class="c1" id = "s1">
			<h2>header</h2>
			<ol>
			<li>페이지의 머가리</li>
			<li>페이지 제목, 페이지를 소개하는 간단한 섹션</li>
			</ol>
			<div id = "hyperLink">
			<a href="http://eclass.dongguk.edu">동국대학교 eclass 사이트</a>
			</div>
		</section>
		<section id = "s2">
			<h2>nav</h2>
			<ul>
			<li>하이퍼링크들을 모아 놓은 특별한 섹션</li>
			<li>페이지 내 목차를 만드는 용도</li>
			</ul>
		</section>
		<section id = "box1">
			<h2>section</h2>
			문서의 장, 혹은 절을 구성
			일반 문서에 여러 장이 있듯이 웹 페이지에 여러 섹션이 가능
			제목태그를 사용하여 절 혹은 섹션의 주제를 기입
		</section>
		<section id = "box1">
			<h2>article</h2>
			본문과 연관있지만, 독립적인 콘텐츠를 담는 영역
			혹은 보조 기사, 블로그 포스트, 댓글 등 기타 독립적인 내용
			article에 담는 내용이 많은 경우 여러 섹션을 들 수 있다
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
		</section>
		<footer>
			<p>A Competitive Study on 3G Blockchain EOS and Cardano(ADA)<br />
			Kangil Kim<br>
			&copy;Dept, of Computer Science and Engineering, Dongguk University<br>
			e-mail: sangle4@naver.com
			</p>
		</footer>
		<div id = "d3">
		<ul>
			요약
			<li>블록체인 기술의 발달 및 암호화폐에 대한 대중의 관심 증가에 따라 수많은 암호화폐가 생성되고 소멸되고 있다.</li>
			<li>대표적인 암호화폐로는 비트코인 및 이더리움이 있으며, 이에 대한 비교 및 분석 논문은 현재 굉장히 많이 존재한다.</li>
			<li>하지만 1세대 및 2세대라고 불리는 비트코인 및 이더리움에 반해 3세대 암호화폐인 EOS와 ADA는 현재 비교 및 분석한 논문이 존재하지 않는 상태이다. </li>
			<li>따라서 본 논문은 3세대 암호화폐라 칭하는 EOS 및 ADA를 연구한 내용을 담았다. </li>
			<li>본 논문을 통하여 블록체인에 관심을 가지고 있는 개발자 및 일반 사용자, 그리고 EOS와 ADA에 대해 정보를 얻고자 하는 사람들에게 도움을 주고자 한다.</li>
			<li>키워드: 블록체인, 비트코인, 이더리움, 암호화폐, 이오스, 에이다, 3세대 암호화폐</li>
		</ul>
		</div>
		<a href="https://eclass.dongguk.edu/index.jsp"><img src="https://eclass.dongguk.edu/lmsdata/img/template1/logo.png"></a>
	</body>
</html>