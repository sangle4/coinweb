function loginBT() {
	if(document.getElementById("idField").value == "") {
		alert("아이디를 입력해주세요.");
		document.getElementById("idField").focus();
	}
	else if(document.getElementById("pwField").value == ""){
		alert("비밀번호를 입력해주세요.");
		document.getElementById("pwField").focus();
	}
		
}

function findIDBT() {
	if(document.getElementById("username").value == ""){
		alert("가입한 사용자 이름을 입력하세요.");
	}
	else{
		checkNAMEinDB(document.getElementById("username").value);
	}
}

function findPWB() {
	if(document.getElementById("userid").value == ""){
		alert("가입한 사용자 아이디를 입력하세요.");
	}
	else{
		checkIDinDB(document.getElementById("userid").value);
	}
}

///////

function checkNAMEinDB(userName) {
	
}

function checkIDinDB(userID) {
	
}