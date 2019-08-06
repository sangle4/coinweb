function USDtoKRW(convert){
	var rate = 1215;
	
	return numberWithCommas((convert*rate).toFixed(0));
}

function KRWtoUSD(convert){
	var rate = 1215;
	
	return (convert/rate).toFixed(0);
}

function calculPremium(kor, name){ //한국 프리미엄 계산 함수 - kor은 원화가격, name은 해당 거래소 이름
	var rate = 1215;
	$.get('https://crix-api-endpoint.upbit.com/v1/crix/candles/days/?code=CRIX.UPBIT.USDT-BTC', function(data) {
	    //console.log(data);
	    var usd = parseFloat(data[0]['tradePrice']) * rate; //실시간 시세
		var premium;
		
		if(kor > usd){
			premium = "+";
			premium += ((kor / usd*100) - 100).toFixed(2);
		} 
		else{
			premium = "-";
			premium += ((usd / kor*100) - 100).toFixed(2);
		}
		var changeName = "#" + name + "_premium";
		$(changeName).html(premium + "%"); //프리미엄
	});
}