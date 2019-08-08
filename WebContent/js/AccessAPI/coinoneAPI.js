function writeTableCoinone(coin){
	$.get('https://api.coinone.co.kr/ticker?currency=all', function(data) {
		//console.log(data);
		coin = coin.toLowerCase(); //코인원은 코인명을 소문자로 받기 때문에 소문자로 변경
	    yesterday_coin = parseFloat(data[coin]['yesterday_last']); //변동율을 알기 위해 전날 종가를 저장

	    var coinone_coin = parseFloat(data[coin]['last']); //실시간 시세
	    var coinone_coin_fluctate = coinone_coin - yesterday_coin; //변동율 원화차이
	    var coinone_coin_trade = parseFloat(data[coin]['volume']); //1일 거래량
	    
	    var fluctateRate = ((coinone_coin_fluctate/coinone_coin)*100).toFixed(2); //일일 변동율 %계산
	    
	 	// 거래소 시세 정보 표에 값 세팅
	 	$('#coinone_KRW').html(numberWithCommas(coinone_coin) + " KRW"); //실시간시세 원화
	 	$('#coinone_USD').html(numberWithCommas(KRWtoUSD(coinone_coin)) + " USD"); //실시간시세 달러
	    $('#coinone_volume').html(coinone_coin_trade.toFixed(1) + " " + coin); //1일 거래량
	    
	    calculPremium(coinone_coin, "coinone", coin);
	    
	    var temp = "";
	    if(coinone_coin_fluctate > 0){ //변동률이 증가냐 감소에 따라 색변경
	    	document.getElementById('coinone_fluctate').style.color = "red";
	    	temp += "▲  " + numberWithCommas(coinone_coin_fluctate) + " KRW";
	    	temp += "　+" + fluctateRate + "%"
	    	$('#coinone_fluctate').html(temp);
	    }
	    else{
	    	document.getElementById('coinone_fluctate').style.color = "blue";
	    	temp += "▼  " + numberWithCommas(coinone_coin_fluctate) + " KRW";
	    	temp += "　" + fluctateRate + "%"
	    	$('#coinone_fluctate').html(temp);
	    }
	});
}