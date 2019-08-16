function USDtoKRW(convert){
	var rate = 1215;
	
	return numberWithCommas((convert*rate).toFixed(0));
}

function KRWtoUSD(convert){
	var rate = 1215;
	var dt = convert/rate;
	if(dt >= 10000){ //1200만원 이상
		return dt.toFixed(0);
	}
	else if(dt >= 1000){ //120만원 이상
		return dt.toFixed(1);
	}
	else{ //120만원이하
		return dt.toFixed(2);
	}
}

function errorThrow(name, coin){ //해당 코인을 찾지 못했을 때 출력하는 에러 함수
	//console.log(coin + " is not in this " + name + " cyptocurrency market.");
}

function fixFloat(convert){ //해외거래소 내의 코인의 USD가격 소숫점 변화함수
	if(convert >= 10000){
		convert = convert.toFixed(0);
    }
    else if(convert >= 1000){
    	convert = convert.toFixed(1);
    }
    else{
    	convert = convert.toFixed(2);
    }
	return convert;
}

function calculPremium(kor, name, coin){ //한국 프리미엄 계산 함수 - kor은 원화가격, name은 해당 거래소 이름, coin은 코인명
	var rate = 1215;
	var url = 'https://crix-api-endpoint.upbit.com/v1/crix/candles/days/?code=CRIX.UPBIT.';
	url += "USDT-" + coin;
	if(coin != "null"){
		$.get(url, function(data) {
		    var usd = parseFloat(data[0]['tradePrice']) * rate; //실시간 시세
			var premium; //프리미엄 퍼센테이지 저장 변수
			
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
	else{
		var changeName = "#" + name + "_premium";
		$(changeName).html(" - ");
	}
}

function priceSimply(price) {
	price = USDtoKRW(price);
	var simplePrice = "";
	var count = 0;
	
	for(var i = 0; i<price.length; i++){
		if(price[i] == ',')
			count++;
	}
	if(count > 0){
		for(var i = 0; i<price.length; i++){
			if(price[i] == ','){
				if(count == 4)
					simplePrice += '조';
				else if(count == 3){
					simplePrice += '0억';
				}
				else if(count == 2)
					simplePrice += '만원';
				break;
			}
			simplePrice += price[i];
		}
	}
	
	return simplePrice;
}



