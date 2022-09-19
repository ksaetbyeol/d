package com.updev.member;

import java.text.DateFormat;
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
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.updev.board.ServiceBoard;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MemberController {
	
	@Autowired
	SqlSession sqlsession;
	
	@RequestMapping(value = "/")
	public String ko1(HttpServletRequest request)
	{
		HttpSession ss = request.getSession();
		ss.setAttribute("loginState", false);
		return "main";
	}
	
	@RequestMapping(value = "/index")
	public String index()
	{
		return "main";
	}
	
	// 회원가입폼으로 이동
	@RequestMapping(value = "/signup")
	public String member()
	{
		return "signup";
	}
	
	// 로그인폼으로 이동
		@RequestMapping(value = "/login")
		public String lo()
		{
			return "login";
		}
	
	@RequestMapping(value = "/insert")
	   public String insert(HttpServletRequest request)//회원가입 저장
	   {
	      String m_profile = request.getParameter("m_profile");
	      String m_id = request.getParameter("m_id");
	      String m_pw = request.getParameter("m_pw");
	      String m_nick = request.getParameter("m_nick");
	      String m_name = request.getParameter("m_name");
	      String m_mail = request.getParameter("m_mail");
	      String m_tel = request.getParameter("m_tel");
	      String m_field = request.getParameter("m_field");
	      String m_grade = request.getParameter("m_grade");
	      ServiceMember ss = sqlsession.getMapper(ServiceMember.class);
	      ss.insert(m_profile,m_id,m_pw,m_nick,m_name,m_mail,m_tel,m_field,m_grade);
	      return "redirect:index";
	   }
	   
	   @RequestMapping(value="/loginact", method = RequestMethod.POST)
	   public ModelAndView ko6(HttpServletRequest request , RedirectAttributes rattr) 
	   {//db에 회원가입한 아이디 비밀번호가 맞는지 확인하는곳(로그인중)
	      //정보가 맞지 않다면 로그인창으로 보냄
	      ModelAndView mav=new ModelAndView();   
	      String m_id = request.getParameter("m_id");
	      String m_pw = request.getParameter("m_pw");
	      ServiceMember ss = sqlsession.getMapper(ServiceMember.class);
	      Signup d = ss.loginselect(m_id, m_pw);
	      if(d!=null) {
	         HttpSession session = request.getSession();
	         session.setAttribute("member", d);
	         session.setAttribute("loginState", true);
	         session.setMaxInactiveInterval(300);
	         mav.setViewName("redirect:index");
	      }
	      else {
	         rattr.addAttribute("check", "nodata");
	         mav.setViewName("redirect:signup");
	      }
	      return mav;
	   }
	   
	   @RequestMapping(value="/logout")
	   public String ko7(HttpServletRequest request) {
	         HttpSession session=request.getSession();
	         session.removeAttribute("member");
	         session.removeAttribute("loginState");
	         session.setAttribute("loginState",false);
	      return "redirect:index";
	   }
	   
	   //회원 마이페이지로 이동
	   @RequestMapping(value = "/myp")
	   public String ko8()
	   {
		  return "mypage"; 
	   }
}
