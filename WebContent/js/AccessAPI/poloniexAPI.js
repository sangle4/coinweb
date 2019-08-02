function writeTablePoloniex(){
	$.get('https://poloniex.com/public?command=returnTicker', function(data) {
		
		var fluctateRate = (parseFloat(data['USDT_BTC']['percentChange'])*100).toFixed(2);
		//console.log(fluctateRate);
		
        var poloniex_btc = parseFloat(data['USDT_BTC']['last']);
        var poloniex_btc_fluctate = (parseFloat(data['USDT_BTC']['percentChange'])*100).toFixed(2);
        //console.log(numberDeleteChar(USDtoKRW(poloniex_btc))*parseFloat(fluctateRate));
        
        var poloniex_btc_trade = parseFloat(data['USDT_BTC']['quoteVolume']);
        
        var rate = 1183;
        
        var changeSize = numberWithCommas((poloniex_btc/100*rate*poloniex_btc_fluctate).toFixed(0));
        
        // 거래소 시세 정보 표에 값 세팅
	 	$('#poloniex_KRW').html(USDtoKRW(poloniex_btc) + " KRW");
	 	$('#poloniex_USD').html(numberWithCommas(poloniex_btc.toFixed(0)) + " USD");
	    $('#poloniex_trade').html(poloniex_btc_trade.toFixed(1) + " BTC");
	    
	    var temp = "";
	    if(poloniex_btc_fluctate > 0){
	    	document.getElementById('poloniex_fluctate').style.color = "red";
	    	temp += "▲  " + changeSize + "KRW　";
	    	temp += poloniex_btc_fluctate + "%";
	    	
	    	$('#poloniex_fluctate').html(temp);
	    }
	    else{
	    	document.getElementById('poloniex_fluctate').style.color = "blue";
	    	temp += "▼  " + changeSize + "KRW　";
	    	temp += poloniex_btc_fluctate + "%";
	    	
	    	$('#poloniex_fluctate').html(temp);
	    }
         
    });
}