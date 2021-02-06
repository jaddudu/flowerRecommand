package com.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Command;
import com.model.MbtiDAO;
import com.model.MbtiDTO;
import com.model.MemberDTO;

public class FbtiResult implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		String fbti = (String)session.getAttribute("fbti");
		MbtiDAO dao = new MbtiDAO();
		String[] mbtiResult = dao.fbtiREsult(fbti);
		String worstImg = dao.fbtiWorst(mbtiResult);
		String bestImg = dao.fbtiBest(mbtiResult);
		if(mbtiResult!=null) {
			session.setAttribute("fbtiResult",mbtiResult);
			session.setAttribute("bestImg", bestImg);
			session.setAttribute("worstImg", worstImg);
			response.sendRedirect("fbtiRes.jsp");
		} else {
			response.sendRedirect("home.jsp");
			System.out.println("입력실패!");
		}

	}

}
