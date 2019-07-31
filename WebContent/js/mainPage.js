function numberWithCommas(x) { //KRW 단위 나눔 표시 함수
	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

function USDtoKRW(){
	
}

function KRWtoUSD(){
	
}


function fillTable() {
	getDataFromBithumb();
	getDataFromCoinone();
	getDataFromCoinmarketcap();
	//getDataFromKorbit(); //CORS문제로 chrome에서 사용불가
}

$(document).ready(function(){ //페이지의 로딩이 완료된 후에 실행하는 스크립트 문장
	fillTable();
	totalCap();
	
	$("#start_ajax").click(function(){ //새로고침 버튼시 실행되는 함수
		fillTable();
		
	//end start ajax
	});
//end document ready
});
			
			
