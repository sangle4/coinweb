package controller;

import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	@RequestMapping(value="/id_check", method=RequestMethod.POST)
	public void id_check(HttpServletResponse response, @RequestParam("id") String id) throws IOException {
		//@RequestParam는 요청의 특정 파라미터 값을 찾아낼 때 사용하는 어노테이션
		//ms.id_check(id,response);	//서비스에 있는 idOverlap 호출.
	}
}
