package com.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Command;
import com.model.MemberDTO;
import com.model.SentenceDAO;
import com.model.SentenceDTO;

public class SentenceInsert implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO)session.getAttribute("dto");
		String sentence = (String)session.getAttribute("sentence");
		String id = dto.getId();
		SentenceDTO senDto = new SentenceDTO(id, sentence);
		SentenceDAO dao = new SentenceDAO();
		
//		int cnt = dao.insert(senDto);
//		if(cnt>0) {
//			System.out.println("문구저장 성공");
//			session.setAttribute("sentence", sentence);
//			System.out.println(sentence.getBytes("EUC-KR"));
//			
//			String url = "http://localhost:9000/test?review="+sentence;
////			url.getBytes("EUC-KR");
//			response.sendRedirect(url);
//		} else {
//			System.out.println("문구저장 실패");
//			response.sendRedirect("index.jsp");
//		}
	}

}
