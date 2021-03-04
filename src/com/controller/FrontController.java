package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.command.FbtiInsert;
import com.command.FbtiResult;
import com.command.FbtiSelect;
import com.command.JoinService;
import com.command.LoginService;
import com.command.LogoutService;
import com.command.SentenceInsert;
import com.model.MemberDTO;


@WebServlet("*.do")
public class FrontController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String reqURI = request.getRequestURI();
		String path = request.getContextPath();
		String resultURI = reqURI.substring(path.length()+1);
		
		HttpSession session = request.getSession();
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
	
		String sentence = request.getParameter("letter");
		System.out.println("front sentence : " + sentence);
		
		String fbti = request.getParameter("fbti");
		System.out.println("mbti 결과물 : "+ fbti);
		
		Command command = null;
		
		if(resultURI.equals("JoinServiceCon.do")) {
			command = new JoinService();
		} else if(resultURI.equals("LoginServiceCon.do")) {
			System.out.println("로그인 들어옴");
			command = new LoginService();
		} else if (resultURI.equals("LogoutServiceCon.do")) {
			command = new LogoutService();
		} else if (resultURI.equals("SentenceInsert.do")){
			session.setAttribute("sentence", sentence);
			command = new SentenceInsert();
		} else if(resultURI.equals("FbtiInsertCon.do")) {
			session.setAttribute("fbti", fbti);
			command = new FbtiInsert();
		} else if(resultURI.equals("FbtiSelectCon.do")) {
			command = new FbtiSelect();
		} else if(resultURI.equals("FbtiResultCon.do")) {
			command = new FbtiResult();
		}
		command.execute(request, response);
	
	}

}
