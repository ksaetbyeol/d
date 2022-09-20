package com.updev.board;

import java.util.ArrayList;



public interface ServiceBoard {

	public void save(String b_cate, String b_kind, String b_title, String m_nick, String b_content, String b_file1,
			String b_file2, String b_tag);

	public ArrayList<Board> mewrite(String a);

	public Sign myinfo(String m_nick);

	public void boardupdate(int b_num, String b_cate, String b_kind, String b_title, String m_nick, String b_content,  String b_tag, String b_file1, String b_file2);

	public Board updatecheck(int b_num);

	

}
