/*
function writeTableBinance(){
	console.log("binance forum");
	
	//var ticker24h = "/api/v1/ticker/24hr";
	var params = {'symbol' : 'BTCUSDT'};
	
	
	$.ajax({
		url:'https://api.binance.com/api/v1/ticker/24hr',
		type:'GET',
		data: params,
		dataType:'json',
		success: function(json){
			console.log(json);
		},
		error: function(){
			alert("Total cap refreshing error!");
		}
	});
}
*/

/*
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


$.get('api.binance.com/api/v1/ticker/allPrices', function(data) {
		console.log(data);
		
	});
*/