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
			result="����";
		} else if(fbti.equals("infj")) {
			result="���̸���";
		}else if(fbti.equals("intj")) {
			result="����";
		} else if(fbti.equals("infp")) {
			result="��������";
		} else if(fbti.equals("entp")) {
			result="�۶��÷���";
		}else if(fbti.equals("entj")) {
			result="���ڼ�";
		}else if(fbti.equals("enfp")) {
			result="�Ͼ����";
		}else if(fbti.equals("enfj")) {
			result="�ķϽ�";
		} else if(fbti.equals("isfj")) {
			result="��׶�";
		}else if(fbti.equals("istj")) {
			result="�Ƴ׸��";
		} else if(fbti.equals("istp")) {
			result="�Ȱ���";
		}else if(fbti.equals("isfp")) {
			result="��δϾ�";
		}else if(fbti.equals("esfj")) {
			result="��ũƫ��";
		}else if(fbti.equals("estj")) {
			result="�عٶ��";
		}else if(fbti.equals("estp")) {
			result="����Ű";
		}else if(fbti.equals("esfp")) {
			result="��ȫ���";
		}
		
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO)session.getAttribute("dto");
		String id = dto.getId();
		MbtiDTO mbDto = new MbtiDTO(id, result);
		MbtiDAO dao = new MbtiDAO();
		int cnt = dao.insert(mbDto);
		if(cnt>0) {
			System.out.println("fbti ��� �Է� ����!");
			session.setAttribute("fbti", result);
			response.sendRedirect("FbtiResultCon.do");
		} else {
			System.out.println("�Է½���!");
			response.sendRedirect("home.jsp");
		}
	}

}
