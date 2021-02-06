package com.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.SendResult;

import com.controller.Command;
import com.model.MbtiDAO;
import com.model.MbtiDTO;
import com.model.MemberDTO;

public class FbtiInsert implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fbti = request.getParameter("fbti");
		String result = null;
		if(fbti.equals("intp")) {
			result="수국";
		} else if(fbti.equals("infj")) {
			result="아이리스";
		}else if(fbti.equals("intj")) {
			result="팬지";
		} else if(fbti.equals("infp")) {
			result="빨간백합";
		} else if(fbti.equals("entp")) {
			result="글라디올러스";
		}else if(fbti.equals("entj")) {
			result="야자수";
		}else if(fbti.equals("enfp")) {
			result="하얀백합";
		}else if(fbti.equals("enfj")) {
			result="후록스";
		} else if(fbti.equals("isfj")) {
			result="라그라스";
		}else if(fbti.equals("istj")) {
			result="아네모네";
		} else if(fbti.equals("istp")) {
			result="안개꽃";
		}else if(fbti.equals("isfp")) {
			result="브로니아";
		}else if(fbti.equals("esfj")) {
			result="핑크튤립";
		}else if(fbti.equals("estj")) {
			result="해바라기";
		}else if(fbti.equals("estp")) {
			result="스투키";
		}else if(fbti.equals("esfp")) {
			result="분홍장미";
		}
		
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO)session.getAttribute("dto");
		String id = dto.getId();
		MbtiDTO mbDto = new MbtiDTO(id, result);
		MbtiDAO dao = new MbtiDAO();
		int cnt = dao.insert(mbDto);
		if(cnt>0) {
			System.out.println("fbti 결과 입력 성공!");
			session.setAttribute("fbti", result);
			response.sendRedirect("FbtiResultCon.do");
		} else {
			System.out.println("입력실패!");
			response.sendRedirect("home.jsp");
		}
	}

}
