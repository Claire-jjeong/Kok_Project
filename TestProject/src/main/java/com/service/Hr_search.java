package com.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.smhrd.HospitalVO;

@WebServlet("/Hr_search")
public class Hr_search extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		{
			request.setCharacterEncoding("euc-kr");
			
			String HR = request.getParameter("hr_Search");
			
			memberDAO dao = new memberDAO();	
			ArrayList<HospitalVO> vo = dao.h_search(HR);
			
			if(vo != null)
			{
				HttpSession session = request.getSession();
				session.setAttribute("vo", vo); // 세션에 vo 저장
				response.sendRedirect("VaccineRL2.jsp");
			}
			else
			{
				System.out.println("검색한 아이디가 없습니다.");
				response.sendRedirect("VaccineRL2.jsp");
				
			}
			
		}
	
	}

}
