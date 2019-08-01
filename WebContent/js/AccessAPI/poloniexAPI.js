function writeTablePoloniex(){
	$.get('https://poloniex.com/public?command=returnTicker', function(data) {
		
		var fluctateRate = (parseFloat(data['USDT_BTC']['percentChange'])*100).toFixed(2);
		//console.log(fluctateRate);
		
        var poloniex_btc = parseFloat(data['USDT_BTC']['last']);
        var poloniex_btc_fluctate = (parseFloat(data['USDT_BTC']['percentChange'])*100).toFixed(2);
        //console.log(numberDeleteChar(USDtoKRW(poloniex_btc))*parseFloat(fluctateRate));
        
        var poloniex_btc_trade = parseFloat(data['USDT_BTC']['quoteVolume']);
        
        // 거래소 시세 정보 표에 값 세팅
	 	$('#poloniex_KRW').html(USDtoKRW(poloniex_btc) + " KRW");
	 	$('#poloniex_USD').html(numberWithCommas(poloniex_btc.toFixed(0)) + " USD");
	    $('#poloniex_trade').html(poloniex_btc_trade.toFixed(1) + " BTC");
	    
	    var temp = "";
	    if(poloniex_btc_fluctate > 0){
	    	document.getElementById('poloniex_fluctate').style.color = "red";
	    	temp += "▲  " + numberWithCommas(poloniex_btc_fluctate) + " KRW";
	    	
	    	$('#poloniex_fluctate').html(temp);
	    }
	    else{
	    	document.getElementById('poloniex_fluctate').style.color = "blue";
	    	temp += "▼  " + numberWithCommas(poloniex_btc_fluctate) + " KRW";
	    	
	    	$('#poloniex_fluctate').html(temp);
	    }
         
    });
}