function getDataFromBithumb(){
	$.get('https://api.bithumb.com/public/ticker/ALL', function(data) {
		var bithumb_btc = parseFloat(data['data']['BTC']['closing_price']);
		var bithumb_btc_fluctate = parseFloat(data['data']['BTC']['24H_fluctate']);
		var bithumb_btc_trade = parseFloat(data['data']['BTC']['volume_1day']);

		var rate = 1183; //달러 환율, 변경해야됨
		// 거래소 시세 정보 표에 값 세팅
        $('#bithumb_KRW').html(numberWithCommas(bithumb_btc) + " KRW");
        $('#bithumb_USD').html(numberWithCommas(KRWtoUSD(bithumb_btc)) + " USD");
        $('#bithumb_trade').html(bithumb_btc_trade.toFixed(1) + " BTC");

        if(bithumb_btc_fluctate > 0){
        	document.getElementById('bithumb_fluctate').style.color = "red";
        	$('#bithumb_fluctate').html("▲  " + numberWithCommas(bithumb_btc_fluctate) + " KRW");
        }
        else{
        	document.getElementById('bithumb_fluctate').style.color = "blue";
        	$('#bithumb_fluctate').html("▼  " + numberWithCommas(bithumb_btc_fluctate) + " KRW");
        }
    });
}