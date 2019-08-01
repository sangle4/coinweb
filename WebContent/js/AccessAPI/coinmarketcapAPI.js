function writeTotalCap(){
	$.ajax({
		url:'https://api.coinmarketcap.com/v1/ticker/?start=5&limit=100',
		type:'GET',
		dataType:'json',
		success: function(json){
			var btcCap = parseFloat(json[0]['market_cap_usd']);
			$('#marketcap').html("총 시가총액 : " + numberWithCommas(btcCap) + " USD");
			//alert(json[1]['symbol']);
		},
		error: function(){
			alert("Total cap refreshing error!");
		}
	});
}

function writeTableMarketCap(){
	$.get('https://api.coinmarketcap.com/v1/ticker/?limit=100', function(data) {
		//console.log(data);
		
		var marketcap_btc = parseFloat(data[0]['price_usd']);
		var marketcap_btc_fluctate = parseFloat(data[0]['percent_change_24h']);
		var marketcap_btc_trade = parseFloat(data[0]['total_supply']);

		var rate = 1183; //달러 환율, 변경해야됨
		
		// 거래소 시세 정보 표에 값 세팅
		
        $('#marketcap_KRW').html(USDtoKRW(marketcap_btc) + " KRW");
        $('#marketcap_USD').html(numberWithCommas(marketcap_btc.toFixed(0)) + " USD");
        $('#marketcap_fluctate').html(marketcap_btc_fluctate + " KRW");
        $('#marketcap_trade').html(marketcap_btc_trade.toFixed(1) + " BTC");
        
        
		var totalcap = 0;
		var btccap = parseFloat(data[0]['market_cap_usd']);
		
		for(var i = 0; i<100; i++){
			totalcap += parseFloat(data[i]['market_cap_usd']);
		}
		//console.log(totalcap);
		//console.log(btccap);
    });
}