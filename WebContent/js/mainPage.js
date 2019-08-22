var tableCoin = "BTC"; //10초 refresh시 사용자가 선택한 코인 탭을 기억하기 위한 변수
var usdRate = 0; //달러 환율
var userState = false;

function numberWithCommas(x) { //KRW 단위 나눔 표시 함수
	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

function numberDeleteChar(x) { //문자열 제거 함수
    return x.toString().replace(/[^0-9]+/g, '');
}


function getUSDrate(){
    $.get('http://quotation-api-cdn.dunamu.com/v1/forex/recent?codes=FRX.KRWUSD', function(data) {
    	usdRate = parseFloat(data[0]['basePrice']);
    	$('#usd_rate').html("USD Exchange Rate : " + numberWithCommas(usdRate) + " KRW");
    });
}

function fillTable(coin){
	tableCoin = coin; //현재 출력 코인명을 저장
	
	writeTableBithumb(coin);
	writeTableCoinone(coin);
	writeTableMarketCap(coin);
	writeTablePoloniex(coin);
	writeTableUpbit(coin);
	//writeTableBinance();
	
	writeTotalCap();
}

function changeLabelBC(){
	if(tableCoin == "BTC"){
		$(".LiBTC").css({"background" : "#E0EFFF"});
		$(".LiETH").css({"background" : "white"});
		$(".LiLTC").css({"background" : "white"});
		$(".LiXRP").css({"background" : "white"});
		$(".LiADA").css({"background" : "white"});
		$(".LiBCH").css({"background" : "white"});
	}
	else if(tableCoin == "ETH"){
		$(".LiBTC").css({"background" : "white"});
		$(".LiETH").css({"background" : "#E0EFFF"});
		$(".LiLTC").css({"background" : "white"});
		$(".LiXRP").css({"background" : "white"});
		$(".LiADA").css({"background" : "white"});
		$(".LiBCH").css({"background" : "white"});
	}
	else if(tableCoin == "LTC"){
		$(".LiBTC").css({"background" : "white"});
		$(".LiETH").css({"background" : "white"});
		$(".LiLTC").css({"background" : "#E0EFFF"});
		$(".LiXRP").css({"background" : "white"});
		$(".LiADA").css({"background" : "white"});
		$(".LiBCH").css({"background" : "white"});
	}	
	else if(tableCoin == "XRP"){
		$(".LiBTC").css({"background" : "white"});
		$(".LiETH").css({"background" : "white"});
		$(".LiLTC").css({"background" : "white"});
		$(".LiXRP").css({"background" : "#E0EFFF"});
		$(".LiADA").css({"background" : "white"});
		$(".LiBCH").css({"background" : "white"});
	}	
	else if(tableCoin == "ADA"){
		$(".LiBTC").css({"background" : "white"});
		$(".LiETH").css({"background" : "white"});
		$(".LiLTC").css({"background" : "white"});
		$(".LiXRP").css({"background" : "white"});
		$(".LiADA").css({"background" : "#E0EFFF"});
		$(".LiBCH").css({"background" : "white"});
	}	
	else {
		$(".LiBTC").css({"background" : "white"});
		$(".LiETH").css({"background" : "white"});
		$(".LiLTC").css({"background" : "white"});
		$(".LiXRP").css({"background" : "white"});
		$(".LiADA").css({"background" : "white"});
		$(".LiBCH").css({"background" : "#E0EFFF"});
	}
}

$.ajax({
	   url: "http://localhost:8080/testweb/", //시간 경과로 인한 자동 서버 다운을 방지하기 위해 시간초를 넉넉하게 늘림
	   timeout: 12000
	});

$(document).ready(function(){ //페이지의 로딩이 완료된 후에 실행하는 스크립트 문장
	//document.getElementById("idField").value = "";
	document.getElementById("pwField").value = "";
	getUSDrate();
	$(".LiBTC").css({"background" : "#E0EFFF"});
	fillTable('BTC');
	setInterval("fillTable(tableCoin)", 10000); //10초후 재시작
	getRankfromMarketcap(); //시가총액 순위표
	
	$("#start_ajax").click(function(){ //새로고침 버튼시 실행되는 함수
		fillTable();
	});
	
	$("#premium_trade").click(function(){ //프리미엄 계산기 펼치기
		$('#test1').html(
			""
		);
	});
	
	$(".tradeLabel").click(function(){ //시세표 라벨 클릭시
		changeLabelBC();	
	});
	
//end document ready
});
			
			
