function getDataFromCoinmarketcap(){
	$.get('https://api.coinmarketcap.com/v1/ticker/?limit=1', function(data) {
		console.log(data);
		//alert(data[0]['id']);
		
		var marketcap_btc = parseFloat(data[0]['price_usd']);
		var marketcap_btc_fluctate = parseFloat(data[0]['percent_change_24h']);
		var marketcap_btc_trade = parseFloat(data[0]['total_supply']);

		var rate = 1183; //달러 환율, 변경해야됨
		
		
		// 거래소 시세 정보 표에 값 세팅
		
        $('#marketcap_KRW').html(numberWithCommas(marketcap_btc) + " KRW");
        $('#marketcap_USD').html(numberWithCommas(marketcap_btc) + " USD");
        $('#marketcap_fluctate').html(marketcap_btc_fluctate + " KRW");
        $('#marketcap_trade').html(marketcap_btc_trade.toFixed(1) + " BTC");
    });
	
	
}