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

function writeTableMarketCap(){
	$.get('https://api.coinmarketcap.com/v1/ticker/?limit=100', function(data) {
		//console.log(data);
		
		var marketcap_btc = parseFloat(data[0]['price_usd']); //실시간 시세(달러)
		var marketcap_btc_fluctate = parseFloat(data[0]['percent_change_24h']); //1일 변동율 %
		var marketcap_btc_trade = parseFloat(data[0]['total_supply']); //1일 거래량

		var rate = 1183; //달러 환율, 변경해야됨
		
		var fluctateRate = numberWithCommas((marketcap_btc/100*rate*marketcap_btc_fluctate).toFixed(0));
		
		// 거래소 시세 정보 표에 값 세팅
        $('#marketcap_KRW').html(USDtoKRW(marketcap_btc) + " KRW"); //원화로 변경하여 실시간 시세KRW
        $('#marketcap_USD').html(numberWithCommas(marketcap_btc.toFixed(0)) + " USD"); //실시간시세 달러
        $('#marketcap_volume').html(marketcap_btc_trade.toFixed(1) + " BTC"); //1일 거래량
        $('#marketcap_premium').html(" - "); //해외 종합이므로 프리미엄 계산은 하지 않는다
        
        var temp = "";
        if(marketcap_btc_fluctate > 0){ //변동률이 증가냐 감소에 따라 색변경
	    	document.getElementById('marketcap_fluctate').style.color = "red";
	    	temp += "▲  " + fluctateRate + "KRW　";
	    	temp += " +" + marketcap_btc_fluctate.toFixed(2) + "%";
	    	$('#marketcap_fluctate').html(temp);
	    }
	    else{
	    	document.getElementById('marketcap_fluctate').style.color = "blue";
	    	temp += "▼  " + fluctateRate + "KRW　";
	    	temp += " " + marketcap_btc_fluctate + "%";
	    	$('#marketcap_fluctate').html(temp);
	    }
    });
}