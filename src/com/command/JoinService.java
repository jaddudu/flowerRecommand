package com.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Command;
import com.model.MemberDAO;
import com.model.MemberDTO;

public class JoinService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		
		MemberDTO dto = new MemberDTO(id, pw, name, tel);
		MemberDAO dao = new MemberDAO();
		int cnt = dao.join(dto);
		
		if(cnt>0) {
			System.out.println("회원가입 완료!");
		} else {
			System.err.println("가입실패!");
		}
		response.sendRedirect("sam.html");
	}

}
