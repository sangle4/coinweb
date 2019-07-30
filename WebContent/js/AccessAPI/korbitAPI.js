function getDataFromKorbit(){
	$.get('https://api.korbit.co.kr/v1/ticker?currency_pair=btc_krw', function(data) {
        data = JSON.parse(data); //json데이터로 전달 안되어 변환
        var korbit_btc = parseFloat(data['last']);
        
        $('#korbit_KRW').html(numberWithCommas(korbit_btc) + " KRW");
        $('#korbit_USD').html(numberWithCommas(korbit_btc) + " USD");
        $('#korbit_fluctate').html(korbit_btc_fluctate + " KRW");
        $('#korbit_trade').html(korbit_btc_trade.toFixed(1) + " BTC");
    });
	
	//console.log(data);
	/*
    $.get('https://api.korbit.co.kr/v1/ticker?currency_pair=eth_krw', function(data) {
        data = JSON.parse(data); //json데이터로 전달 안되어 변환
        var korbit_eth = parseFloat(data['last']);
        
        korbit_eth2 = korbit_eth1;
        korbit_eth1 = korbit_eth0;
        korbit_eth0 = numberWithCommas(korbit_eth);
        $('#korbit_ETH').html(korbit_eth0 + ' (N)<BR>'+korbit_eth1+'<br>'+korbit_eth2);
    });
    */
}