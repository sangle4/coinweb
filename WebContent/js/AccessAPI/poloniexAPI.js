function writeTablePoloniex(coin){
	$.get('https://poloniex.com/public?command=returnTicker', function(data) {
		console.log(data);
		if(coin == "BCH"){ //표준 코인명과 해당거래소 내의 코인명이 다른 경우 변환
			coin = "BCHABC";
		}
		else if(coin == "BSV"){
			coin = "BCHSV"
		}
		
		try {
			var findCoin = "USDT_" + coin;
			var fluctateRate = (parseFloat(data[findCoin]['percentChange'])*100).toFixed(2);
			
	        var poloniex_coin = parseFloat(data[findCoin]['last']);
	        var poloniex_coin_fluctate = (parseFloat(data[findCoin]['percentChange'])*100).toFixed(2);
	        
	        var poloniex_coin_trade = parseFloat(data[findCoin]['quoteVolume']);
	        
	        var rate = 1183;
	        
	        var changeSize = numberWithCommas((poloniex_coin/100*rate*poloniex_coin_fluctate).toFixed(0));
	        
	        poloniex_coin = fixFloat(poloniex_coin); //가격에 맞게 소숫점 변환
	        
	        // 거래소 시세 정보 표에 값 세팅
		 	$('#poloniex_KRW').html(USDtoKRW(poloniex_coin) + " KRW");
		 	//달러 소숫점 정리하기
		 	$('#poloniex_USD').html(numberWithCommas(poloniex_coin) + " USD");
		    $('#poloniex_volume').html(poloniex_coin_trade.toFixed(1) + " " + coin);
		    $('#poloniex_premium').html(" - ");
		    
		    var temp = "";
		    if(poloniex_coin_fluctate > 0){
		    	document.getElementById('poloniex_fluctate').style.color = "red";
		    	temp += "▲  " + changeSize + "KRW　";
		    	temp += " +" + poloniex_coin_fluctate + "%";
		    	
		    	$('#poloniex_fluctate').html(temp);
		    }
		    else{
		    	document.getElementById('poloniex_fluctate').style.color = "blue";
		    	temp += "▼  " + changeSize + "KRW　";
		    	temp += " " + poloniex_coin_fluctate + "%";
		    	
		    	$('#poloniex_fluctate').html(temp);
		    }
		} catch(e) {
			errorThrow("Poloniex", coin);
			
			$('#poloniex_KRW').html(" - "); //실시간시세 원화
		 	$('#poloniex_USD').html(" - "); //실시간시세 달러
		    $('#poloniex_volume').html(" - "); //1일 거래량
		    document.getElementById('poloniex_fluctate').style.color = "black";
		    $('#poloniex_fluctate').html(" - ");
		    calculPremium(poloniex_coin, "poloniex", "null")
		}
		
         
    });
}