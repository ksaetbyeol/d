package com.updev.admin;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	@Autowired
	SqlSession sqlsession;
	
	@RequestMapping(value = "/admin")
	public String admin(){
		return "admin";
	}
	@RequestMapping(value = "/infoupdate")
	public String infoupdate(){
		/*JSONArray array =
		*/
		return "infoupdate";
	}
}
