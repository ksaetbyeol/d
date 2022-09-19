package com.updev.board;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

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

/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	
	@Autowired
	SqlSession sqlsession;
	
	@RequestMapping(value = "/write")
	public String ko1()
	{
		return "boardwrite";
	}
	
	@RequestMapping(method = RequestMethod.POST,value = "/writesave")
	   public String ko2(MultipartHttpServletRequest mul)
	   {
	      String b_cate = mul.getParameter("b_cate");
	      String b_kind = mul.getParameter("b_kind");
	      String b_title = mul.getParameter("b_title");
	      String m_nick = mul.getParameter("m_nick");
	      String b_content = mul.getParameter("b_content");
	      MultipartFile f1 = mul.getFile("b_file1");
	      MultipartFile f2 = mul.getFile("b_file2");
	      String b_file1 = f1.getOriginalFilename();
	      String b_file2 = f2.getOriginalFilename();
	      String b_tag = mul.getParameter("b_tag");
	      System.out.println(b_file1+b_file2);
	      ServiceBoard ss = sqlsession.getMapper(ServiceBoard.class);
	      ss.save(b_cate,b_kind,b_title,m_nick,b_content,b_file1,b_file2,b_tag);
	      
	      return "redirect:myp";
	   }
	
}
