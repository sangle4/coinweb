function writeTableUpbit(){
	$.get('https://crix-api-endpoint.upbit.com/v1/crix/candles/days/?code=CRIX.UPBIT.KRW-BTC', function(data) {
	    console.log(data);
	    
	    /*
	    var upbit_btc = parseFloat(data['btc']['last']);
	    var upbit_btc_fluctate = coinone_btc - yesterday_btc;
	    var upbit_btc_trade = parseFloat(data['btc']['volume']);
	    
	    var fluctateRate = ((upbit_btc_fluctate/upbit_btc)*100).toFixed(2); //일일 변화량 퍼센트
	    
	 	// 거래소 시세 정보 표에 값 세팅
	 	$('#upbit_KRW').html(numberWithCommas(upbit_btc) + " KRW");
	 	$('#upbit_USD').html(numberWithCommas(KRWtoUSD(upbit_btc)) + " USD");
	    $('#upbit_trade').html(upbit_btc_trade.toFixed(1) + " BTC");
	    
	    var temp = "";
	    if(upbit_btc_fluctate > 0){
	    	document.getElementById('upbit_fluctate').style.color = "red";
	    	temp += "▲  " + numberWithCommas(upbit_btc_fluctate) + " KRW";
	    	temp += "　" + fluctateRate + "%"
	    	$('#upbit_fluctate').html(temp);
	    }
	    else{
	    	document.getElementById('upbit_fluctate').style.color = "blue";
	    	temp += "▼  " + numberWithCommas(upbit_btc_fluctate) + " KRW";
	    	temp += "　" + fluctateRate + "%"
	    	$('#upbit_fluctate').html(temp);
	    }
	    */
	});
	
}