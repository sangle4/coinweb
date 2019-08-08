function writeTotalCap(){ //총 시가총액을 가져오기 위한 함수
	$.ajax({
		url:'https://api.coinmarketcap.com/v1/ticker/?start=5&limit=100',
		type:'GET',
		dataType:'json',
		success: function(json){
			var btcCap = parseFloat(json[0]['market_cap_usd']);
			$('#marketcap').html("총 시가총액 : " + numberWithCommas(btcCap) + " USD");
		},
		error: function(){
			alert("Total cap refreshing error!");
		}
	});
}

function writeTableMarketCap(coin){
	$.get('https://api.coinmarketcap.com/v1/ticker/?limit=100', function(data) {
		//console.log(data);
		var coinNum = -1;
		for(var i = 0; i<100; i++){ //해당 코인에 맞는 데이터를 찾기 위한 for문
			if(data[i]['symbol'] == coin){
				coinNum = i;
				break;
			}
		}
		
		try{
			var marketcap_coin = parseFloat(data[coinNum]['price_usd']); //실시간 시세(달러)
			var marketcap_coin_fluctate = parseFloat(data[coinNum]['percent_change_24h']); //1일 변동율 %
			var marketcap_coin_trade = parseFloat(data[coinNum]['total_supply']); //1일 거래량

			var rate = 1183; //달러 환율, 변경해야됨
			
			var fluctateRate = numberWithCommas((marketcap_coin/100*rate*marketcap_coin_fluctate).toFixed(0));
			
			marketcap_coin = fixFloat(marketcap_coin); //가격에 맞게 소숫점 변환
			
			// 거래소 시세 정보 표에 값 세팅
	        $('#marketcap_KRW').html(USDtoKRW(marketcap_coin) + " KRW"); //원화로 변경하여 실시간 시세KRW
	        $('#marketcap_USD').html(numberWithCommas(marketcap_coin) + " USD"); //실시간시세 달러
	        $('#marketcap_volume').html(marketcap_coin_trade.toFixed(1) + " " + coin); //1일 거래량
	        $('#marketcap_premium').html(" - "); //해외 종합이므로 프리미엄 계산은 하지 않는다
	        
	        var temp = "";
	        if(marketcap_coin_fluctate > 0){ //변동률이 증가냐 감소에 따라 색변경
		    	document.getElementById('marketcap_fluctate').style.color = "red";
		    	temp += "▲  " + fluctateRate + "KRW　";
		    	temp += " +" + marketcap_coin_fluctate.toFixed(2) + "%";
		    	$('#marketcap_fluctate').html(temp);
		    }
		    else{
		    	document.getElementById('marketcap_fluctate').style.color = "blue";
		    	temp += "▼  " + fluctateRate + "KRW　";
		    	temp += " " + marketcap_coin_fluctate + "%";
		    	$('#marketcap_fluctate').html(temp);
		    }
		} catch(e) {
			errorThrow("Marketcap", coin);
			
			$('#marketcap_KRW').html(" - "); //실시간시세 원화
		 	$('#marketcap_USD').html(" - "); //실시간시세 달러
		    $('#marketcap_volume').html(" - "); //1일 거래량
		    document.getElementById('marketcap_fluctate').style.color = "black";
		    $('#marketcap_fluctate').html(" - ");
		    calculPremium(marketcap_coin, "marketcap", "null")
		}
		
		
    });
}