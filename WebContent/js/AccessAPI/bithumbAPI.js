function writeTableBithumb(coin){
	$.get('https://api.bithumb.com/public/ticker/ALL', function(data) {
		var bithumb_coin = parseFloat(data['data'][coin]['closing_price']); //종가 시세
		var bithumb_coin_fluctate = parseFloat(data['data'][coin]['24H_fluctate']); //변동률
		var bithumb_coin_trade = parseFloat(data['data'][coin]['volume_1day']); //당일 거래량
		
		var fluctateRate = ((bithumb_coin_fluctate/bithumb_coin)*100).toFixed(2); //변동율 KRW을 %로 변환
		
		// 거래소 시세 정보 표에 값 세팅
	    $('#bithumb_KRW').html(numberWithCommas(bithumb_coin) + " KRW"); //실시간 시세
	    $('#bithumb_USD').html(numberWithCommas(KRWtoUSD(bithumb_coin)) + " USD"); //실시간 달러시세
	    $('#bithumb_volume').html(bithumb_coin_trade.toFixed(1) + " " + coin); //실시간 거래량
	    
	    calculPremium(bithumb_coin, "bithumb", coin);
	    
	    var temp = "";
	    if(bithumb_coin_fluctate > 0){ //변동률이 증가냐 감소에 따라 색변경
	    	document.getElementById('bithumb_fluctate').style.color = "red";
	    	temp += "▲  " + numberWithCommas(bithumb_coin_fluctate) + " KRW";
	    	temp += "　+" + fluctateRate + "%"
	    	$('#bithumb_fluctate').html(temp);
	    }
	    else{
	    	document.getElementById('bithumb_fluctate').style.color = "blue";
	    	temp += "▼  " + numberWithCommas(bithumb_coin_fluctate) + " KRW";
	    	temp += "　" + fluctateRate + "%"
	    	$('#bithumb_fluctate').html(temp);
	    }
	});
}