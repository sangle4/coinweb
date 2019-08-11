function writeTableUpbit(coin){
	var url = 'https://crix-api-endpoint.upbit.com/v1/crix/candles/days/?code=CRIX.UPBIT.KRW-';
	url += coin;
	$.get(url, function(data) {
	    //console.log(data);
		try {
			var upbit_coin = parseFloat(data[0]['tradePrice']); //실시간 시세
		    var upbit_coin_fluctate = parseFloat(data[0]['changePrice']); //변동 가격
		    var upbit_coin_trade = parseFloat(data[0]['candleAccTradeVolume']); //당일 거래량
		    
		    var fluctateRate = ((upbit_coin_fluctate/upbit_coin)*100).toFixed(2); //일일 변화량 %계산
		    
		 	// 거래소 시세 정보 표에 값 세팅
		 	$('#upbit_KRW').html(numberWithCommas(upbit_coin) + " KRW"); //실시간 시세 원화
		 	$('#upbit_USD').html(numberWithCommas(KRWtoUSD(upbit_coin)) + " USD"); //실시간 시세 달러
		    $('#upbit_volume').html(upbit_coin_trade.toFixed(1) + " " + coin); //당일 거래량
		    
		    calculPremium(upbit_coin, "upbit", coin);
		    
		    var temp = "";
		    if(data[0]['change'] == 'RISE'){
		    	document.getElementById('upbit_fluctate').style.color = "#FF5E00";
		    	temp += "▲  " + numberWithCommas(upbit_coin_fluctate) + " KRW";
		    	temp += "　+" + fluctateRate + "%"
		    	$('#upbit_fluctate').html(temp);
		    }
		    else{
		    	document.getElementById('upbit_fluctate').style.color = "#0054FF";
		    	temp += "▼  " + numberWithCommas(upbit_coin_fluctate) + " KRW";
		    	temp += "　-" + fluctateRate + "%"
		    	$('#upbit_fluctate').html(temp);
		    }
		} catch(e) {
			errorThrow("Upbit", coin);
			
			$('#upbit_KRW').html(" - "); //실시간시세 원화
		 	$('#upbit_USD').html(" - "); //실시간시세 달러
		    $('#upbit_volume').html(" - "); //1일 거래량
		    document.getElementById('upbit_fluctate').style.color = "black";
		    $('#upbit_fluctate').html(" - ");
		    calculPremium(upbit_coin, "upbit", "null")
		}
	});
	
}