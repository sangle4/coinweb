function writeTableUpbit(){
	$.get('https://crix-api-endpoint.upbit.com/v1/crix/candles/days/?code=CRIX.UPBIT.KRW-BTC', function(data) {
	    console.log(data);
	    
	    var upbit_btc = parseFloat(data[0]['tradePrice']);
	    var upbit_btc_fluctate = parseFloat(data[0]['changePrice']);
	    var upbit_btc_trade = parseFloat(data[0]['candleAccTradeVolume']);
	    
	    var fluctateRate = ((upbit_btc_fluctate/upbit_btc)*100).toFixed(2); //일일 변화량 퍼센트
	    
	 	// 거래소 시세 정보 표에 값 세팅
	 	$('#upbit_KRW').html(numberWithCommas(upbit_btc) + " KRW");
	 	$('#upbit_USD').html(numberWithCommas(KRWtoUSD(upbit_btc)) + " USD");
	    $('#upbit_trade').html(upbit_btc_trade.toFixed(1) + " BTC");
	    
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