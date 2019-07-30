function getDataFromCoinone(){
	$.get('https://api.coinone.co.kr/ticker?currency=all', function(data) {
        yesterday_btc = parseFloat(data['btc']['yesterday_last']); 

        var coinone_btc = parseFloat(data['btc']['last']);
        var coinone_btc_fluctate = coinone_btc - yesterday_btc;
        var coinone_btc_trade = parseFloat(data['btc']['volume']);
        
     	// 거래소 시세 정보 표에 값 세팅
     	$('#coinone_KRW').html(numberWithCommas(coinone_btc) + " KRW");
     	$('#coinone_USD').html(numberWithCommas(coinone_btc) + " USD");
        $('#coinone_fluctate').html(coinone_btc_fluctate + " KRW");
        $('#coinone_trade').html(coinone_btc_trade.toFixed(1) + " BTC");
        
        console.log(data);
    });
}