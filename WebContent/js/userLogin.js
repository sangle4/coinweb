import { dao.user_dao }
import "dao.user_dto";
import "java.util.ArrayList";

function loginBT() {
	if(document.getElementById("idField").value == "" || document.getElementById("pwField").value == "")
		alert("아이디 또는 비밀번호를 입력해주세요.");
	
	var userdao = new user_dao();
    var dtos = userdao.User_Select();
 
    for(var i=0; i < dtos.size(); i++){
       var dto = dtos.get(i);
       console.log(dto.getID());
       console.log(dto.getName());
       console.log(dto.getPassword());
       console.log(dto.getEmail());
    }
}