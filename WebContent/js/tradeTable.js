//alert("hello, iri!"); //페이지의 로딩이 되기 전에 먼저 실행하는 스크립트 문장

$(document).ready(function(){ //페이지의 로딩이 완료된 후에 실행하는 스크립트 문장	
	function numberWithCommas(x) {
       	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
   	}
	
	/////
	//bithumb
	$.get('https://api.bithumb.com/public/ticker/ALL', function(data) {
		var bithumb_btc = parseFloat(data['data']['BTC']['closing_price']);
		var bithumb_btc_fluctate = parseFloat(data['data']['BTC']['24H_fluctate']);
		var bithumb_btc_trade = parseFloat(data['data']['BTC']['volume_1day']);

		var rate = 1183; //달러 환율, 변경해야됨
		// 거래소 시세 정보 표에 값 세팅
        $('#bithumb_KRW').html(numberWithCommas(bithumb_btc) + " KRW");
        $('#bithumb_USD').html(numberWithCommas(bithumb_btc) + " USD");
        $('#bithumb_fluctate').html(bithumb_btc_fluctate + " KRW");
        $('#bithumb_trade').html(bithumb_btc_trade.toFixed(1) + " BTC");
        
        
        //$('#bithumb_BTC').html(bithumb_btc0 + ' (N)<BR>'+bithumb_btc1+'<br>'+bithumb_btc2);  // 거래소 시세 정보 표에 값 세팅 
        //$('#bithumb_ETH').html(bithumb_eth0 + ' (N)<BR>'+bithumb_eth1+'<br>'+bithumb_eth2); 
        //$('#bithumb_XRP').html(bithumb_xrp0 + ' (N)<BR>'+bithumb_xrp1+'<br>'+bithumb_xrp2);                 
        //$('#bithumb_LTC').html(bithumb_ltc0 + ' (N)<BR>'+bithumb_ltc1+'<br>'+bithumb_ltc2);                 
    });	                    

	//coinone
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
    });
	/////
	
	
	$("#start_ajax").click(function(){ //새로고침 버튼시 실행되는 함수
					
		//bithumb
		$.get('https://api.bithumb.com/public/ticker/ALL', function(data) {
			var bithumb_btc = parseFloat(data['data']['BTC']['closing_price']);
			var bithumb_btc_fluctate = parseFloat(data['data']['BTC']['24H_fluctate']);
			var bithumb_btc_trade = parseFloat(data['data']['BTC']['volume_1day']);

			var rate = 1183; //달러 환율, 변경해야됨
			// 거래소 시세 정보 표에 값 세팅
            $('#bithumb_KRW').html(numberWithCommas(bithumb_btc) + " KRW");
            $('#bithumb_USD').html(numberWithCommas(bithumb_btc) + " USD");
            $('#bithumb_fluctate').html(bithumb_btc_fluctate + " KRW");
            $('#bithumb_trade').html(bithumb_btc_trade.toFixed(1) + " BTC");
            
            
            //$('#bithumb_BTC').html(bithumb_btc0 + ' (N)<BR>'+bithumb_btc1+'<br>'+bithumb_btc2);  // 거래소 시세 정보 표에 값 세팅 
            //$('#bithumb_ETH').html(bithumb_eth0 + ' (N)<BR>'+bithumb_eth1+'<br>'+bithumb_eth2); 
            //$('#bithumb_XRP').html(bithumb_xrp0 + ' (N)<BR>'+bithumb_xrp1+'<br>'+bithumb_xrp2);                 
            //$('#bithumb_LTC').html(bithumb_ltc0 + ' (N)<BR>'+bithumb_ltc1+'<br>'+bithumb_ltc2);                 
        });	                    

		//coinone
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
        });
		
		
	//end start ajax
	});
//end document ready
});
			
			
