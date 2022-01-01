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
		//사용자가 입력한 이메일, pw받아오기
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		memberDAO dao = new memberDAO();
		
		UserVO vo = dao.login(user_id,user_pw);
		
		System.out.println("로그인 함수를 통해 들어온 id, pw, name, ... 등등 : " +vo);
		
		if(vo != null) {
			HttpSession session = request.getSession();
			session.setAttribute("vo", vo);
			response.sendRedirect("VaccineRL2.jsp");
		}else {
			System.out.println("로그인실패!");
			response.sendRedirect("VaccineRL2.jsp");
		}

	}

}
