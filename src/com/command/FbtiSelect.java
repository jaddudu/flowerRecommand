package com.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Command;
import com.model.MbtiDAO;
import com.model.MbtiDTO;
import com.model.MemberDTO;

public class FbtiSelect implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO)session.getAttribute("dto");
		String id = dto.getId();
		
		MbtiDAO dao = new MbtiDAO();
		ArrayList<MbtiDTO> Mdto = dao.check(id);
		
		if(Mdto != null) {
			session.setAttribute("Mdto", Mdto);
			response.sendRedirect("fbtiCheck.jsp");
		}else {
			response.sendRedirect("home.jsp");
		}
		
	}

}
