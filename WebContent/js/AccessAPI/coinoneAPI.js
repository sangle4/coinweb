function writeTableCoinone(){
	$.get('https://api.coinone.co.kr/ticker?currency=all', function(data) {
		//console.log(data);
	    yesterday_btc = parseFloat(data['btc']['yesterday_last']); 

	    var coinone_btc = parseFloat(data['btc']['last']);
	    var coinone_btc_fluctate = coinone_btc - yesterday_btc;
	    var coinone_btc_trade = parseFloat(data['btc']['volume']);
	    
	    var fluctateRate = ((coinone_btc_fluctate/coinone_btc)*100).toFixed(2); //일일 변화량 퍼센트
	    
	 	// 거래소 시세 정보 표에 값 세팅
	 	$('#coinone_KRW').html(numberWithCommas(coinone_btc) + " KRW");
	 	$('#coinone_USD').html(numberWithCommas(KRWtoUSD(coinone_btc)) + " USD");
	    $('#coinone_trade').html(coinone_btc_trade.toFixed(1) + " BTC");
	    
	    var temp = "";
	    if(coinone_btc_fluctate > 0){
	    	document.getElementById('coinone_fluctate').style.color = "red";
	    	temp += "▲  " + numberWithCommas(coinone_btc_fluctate) + " KRW";
	    	temp += "　+" + fluctateRate + "%"
	    	$('#coinone_fluctate').html(temp);
	    }
	    else{
	    	document.getElementById('coinone_fluctate').style.color = "blue";
	    	temp += "▼  " + numberWithCommas(coinone_btc_fluctate) + " KRW";
	    	temp += "　-" + fluctateRate + "%"
	    	$('#coinone_fluctate').html(temp);
	    }
	});
}