package com.updev.board;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.updev.member.Signup;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	
	@Autowired
	SqlSession sqlsession;
	
	
	
	//회원 마이페이지로 이동
	   @RequestMapping(value = "/myp")
	   public String ko8(Model mo,HttpServletRequest request)
	   {
		   String m_nick = request.getParameter("m_nick");
		   ServiceBoard ss = sqlsession.getMapper(ServiceBoard.class);
		   ArrayList<Board> dto = ss.mewrite(m_nick);
		   Sign dt = ss.myinfo(m_nick);
		   mo.addAttribute("list",dto);
		   HttpSession session = request.getSession();
		   session.setAttribute("lista", dt);
		  return "mypage"; 
	   }
	   
	   
	
	
}
