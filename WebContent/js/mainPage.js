function numberWithCommas(x) { //KRW 단위 나눔 표시 함수
	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

function numberDeleteChar(x) { //문자열 제거 함수
    return x.toString().replace(/[^0-9]+/g, '');
}


function getUSDrate(){
    //$.get('https://www.koreaexim.go.kr/site/program/financial/exchangeJSON?authkey=STnLuqSqWcCH0lXq6Hk6y2CpfILa4SY3&searchdate=20180102&data=AP01', function(data) {
      //  console.log(data);
    //});
    /*
    $.ajax({
		url:'https://www.koreaexim.go.kr/site/program/financial/exchangeJSON?authkey=STnLuqSqWcCH0lXq6Hk6y2CpfILa4SY3&searchdate=20180102&data=AP01',
		type:'GET',
		dataType:'json',
		success: function(json){
			console.log(json);
		},
		error: function(){
			alert("error!");
		}
	});
	*/
}

function tableRefresh(coin){
	fillTable();
}

function fillTable(){
	writeTableBithumb();
	writeTableCoinone();
	writeTableMarketCap();
	writeTablePoloniex();
	writeTableUpbit();
	//writeTableBinance();
	
	writeTotalCap();
}

$.ajax({
	   url: "http://localhost:8080/testweb/",
	   timeout: 12000
	});

$(document).ready(function(){ //페이지의 로딩이 완료된 후에 실행하는 스크립트 문장
	fillTable();
	setInterval("fillTable()", 10000); //10초후 재시작
	getUSDrate();
	calculPremium(0,0);
	
	
	$("#start_ajax").click(function(){ //새로고침 버튼시 실행되는 함수
		fillTable();
	//end start ajax
	});
	
	
//end document ready
});
			
			
