function writeTableUpbit(){
	$.get('https://crix-api-endpoint.upbit.com/v1/crix/candles/days/?code=CRIX.UPBIT.KRW-BTC', function(data) {
	    //console.log(data);
	    
	    var upbit_btc = parseFloat(data[0]['tradePrice']); //실시간 시세
	    var upbit_btc_fluctate = parseFloat(data[0]['changePrice']); //변동 가격
	    var upbit_btc_trade = parseFloat(data[0]['candleAccTradeVolume']); //당일 거래량
	    
	    var fluctateRate = ((upbit_btc_fluctate/upbit_btc)*100).toFixed(2); //일일 변화량 %계산
	    
	 	// 거래소 시세 정보 표에 값 세팅
	 	$('#upbit_KRW').html(numberWithCommas(upbit_btc) + " KRW"); //실시간 시세 원화
	 	$('#upbit_USD').html(numberWithCommas(KRWtoUSD(upbit_btc)) + " USD"); //실시간 시세 달러
	    $('#upbit_volume').html(upbit_btc_trade.toFixed(1) + " BTC"); //당일 거래량
	    
	    calculPremium(upbit_btc, "upbit");
	    
	    var temp = "";
	    if(data[0]['change'] == 'RISE'){
	    	document.getElementById('upbit_fluctate').style.color = "red";
	    	temp += "▲  " + numberWithCommas(upbit_btc_fluctate) + " KRW";
	    	temp += "　+" + fluctateRate + "%"
	    	$('#upbit_fluctate').html(temp);
	    }
	    else{
	    	document.getElementById('upbit_fluctate').style.color = "blue";
	    	temp += "▼  " + numberWithCommas(upbit_btc_fluctate) + " KRW";
	    	temp += "　-" + fluctateRate + "%"
	    	$('#upbit_fluctate').html(temp);
	    }
	    
	});
	
}