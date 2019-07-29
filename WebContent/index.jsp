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
		<script src = "js/tradeTable.js"></script> <!-- 메인페이지 테이블출력 js -->
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
        				<tr>
            				<th>업비트</th>
            				<td></td> <!-- 업비트 실시간 시세(원화) -->
            				<td></td> <!-- 업비트 실시간 시세(달러) -->
            				<td></td> <!-- 업비트 24시간 변동률 -->
            				<td></td> <!-- 업비트 거래량 -->
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
		<a href="https://eclass.dongguk.edu/index.jsp"><img src="https://eclass.dongguk.edu/lmsdata/img/template1/logo.png"></a>
	</body>
</html>