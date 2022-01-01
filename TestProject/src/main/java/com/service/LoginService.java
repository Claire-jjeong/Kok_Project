package com.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.smhrd.UserVO;


@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		//����ڰ� �Է��� �̸���, pw�޾ƿ���
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		memberDAO dao = new memberDAO();
		
		UserVO vo = dao.login(user_id,user_pw);
		
		System.out.println("�α��� �Լ��� ���� ���� id, pw, name, ... ��� : " +vo);
		
		if(vo != null) {
			HttpSession session = request.getSession();
			session.setAttribute("vo", vo);
			response.sendRedirect("VaccineRL2.jsp");
		}else {
			System.out.println("�α��ν���!");
			response.sendRedirect("VaccineRL2.jsp");
		}

	}

}
