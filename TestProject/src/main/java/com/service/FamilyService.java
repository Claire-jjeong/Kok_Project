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
import com.smhrd.UserVO;
// searchFamily.jsp에서 입력한 값을 UserVO 타입 변수 vo에 담고, 세션에 저장
@WebServlet("/FamilyService")
public class FamilyService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		request.setCharacterEncoding("euc-kr");
		
		String fam = request.getParameter("fam");
		
		memberDAO dao = new memberDAO();	
		ArrayList<UserVO> vo1 = dao.search_f(fam); // search_f는 입력한 가족의 id, 이름, 이메일 가져옴
		
		if(vo1 != null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("vo1", vo1); // 세션에 vo 저장
			System.out.println("FamilyService에서 search_f를 통해 가져온 세션 값 :"+vo1);
			response.sendRedirect("famView.jsp");
		}
		else
		{
			System.out.println("검색한 아이디가 없습니다.");
			response.sendRedirect("VaccineRL2.jsp");
			
		}
		
	}

}
