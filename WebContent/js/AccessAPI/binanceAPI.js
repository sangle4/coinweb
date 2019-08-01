/*
function getDataFromBinance(){
	
	$.get('https://api.binance.com/api/v1/ticker/24hr', function(data) {
		console.log(data);
		
    });
    
	
	$.ajax({
		url:'https://api.binance.com/api/v1/ticker/24hr',
		type:'GET',
		dataType:'json',
		success: function(json){
			console.log(json);
		},
		error: function(){
			alert("error!");
		}
	});
	
}
*/
$.get('https://api.binance.com/api/v1/ticker/24hr', function(data) {
	alert("hello, world!");	
	console.log(data);
	alert(data);
});

function getDataFromBinance(){
	console.log("This is getDataFromBinance function.");
}

//https://api.binance.com/api/v1/ticker/allPrices

const Binance = require('node-binance-api');
const binance = new Binance().options({
	APIKEY: '33W8KPa4ETgCtXG4H2JwaqqShYdWHKqey9L45q5FNsKXUGeM4I00OXnADy6ahitz',
	useServerTime: true,
	test: true
});

binance.prices('BNBBTC', (error, ticker) => { //특정 코인 출력
	console.log("Price of BNB: ", ticker.BNBBTC);
});

console.log("test");

binance.prices((error, ticker) => { //전체 코인 출력
	console.log("prices()", ticker);
	console.log("Price of BTC: ", ticker.BTCUSDT);
});

