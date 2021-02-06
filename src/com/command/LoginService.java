package com.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Command;
import com.model.MemberDAO;
import com.model.MemberDTO;

public class LoginService implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = null;
		String tel = null;
		
		MemberDTO dto = new MemberDTO(id, pw);
		MemberDAO dao = new MemberDAO();
		
		MemberDTO list = new MemberDTO(id, pw, name, tel); 
		
		list= dao.login(dto);
		
		if(list!=null) {
			session.setAttribute("dto", list);
			System.out.println("로그인 완료!");
		} else {
			session.removeAttribute("dto");
			System.out.println("로그인 실패!");
		}
		response.sendRedirect("home.jsp");
	}

}
