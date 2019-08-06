function writeTableCoinone(){
	$.get('https://api.coinone.co.kr/ticker?currency=all', function(data) {
		//console.log(data);
	    yesterday_btc = parseFloat(data['btc']['yesterday_last']); //변동율을 알기 위해 전날 종가를 저장

	    var coinone_btc = parseFloat(data['btc']['last']); //실시간 시세
	    var coinone_btc_fluctate = coinone_btc - yesterday_btc; //변동율 원화차이
	    var coinone_btc_trade = parseFloat(data['btc']['volume']); //1일 거래량
	    
	    var fluctateRate = ((coinone_btc_fluctate/coinone_btc)*100).toFixed(2); //일일 변동율 %계산
	    
	 	// 거래소 시세 정보 표에 값 세팅
	 	$('#coinone_KRW').html(numberWithCommas(coinone_btc) + " KRW"); //실시간시세 원화
	 	$('#coinone_USD').html(numberWithCommas(KRWtoUSD(coinone_btc)) + " USD"); //실시간시세 달러
	    $('#coinone_volume').html(coinone_btc_trade.toFixed(1) + " BTC"); //1일 거래량
	    
	    calculPremium(coinone_btc, "coinone");
	    
	    var temp = "";
	    if(coinone_btc_fluctate > 0){ //변동률이 증가냐 감소에 따라 색변경
	    	document.getElementById('coinone_fluctate').style.color = "red";
	    	temp += "▲  " + numberWithCommas(coinone_btc_fluctate) + " KRW";
	    	temp += "　+" + fluctateRate + "%"
	    	$('#coinone_fluctate').html(temp);
	    }
	    else{
	    	document.getElementById('coinone_fluctate').style.color = "blue";
	    	temp += "▼  " + numberWithCommas(coinone_btc_fluctate) + " KRW";
	    	temp += "　" + fluctateRate + "%"
	    	$('#coinone_fluctate').html(temp);
	    }
	});
}