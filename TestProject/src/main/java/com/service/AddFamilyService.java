package com.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.smhrd.FamilyVO;
import com.smhrd.UserVO;

/* 본인이 insert되는 함수(이건 회원가입할 때 자동으로 되게 함), 
컬럼이 추가되는 함수, 
가족이 update되는 함수 따로 만든다?
update된 family 테이블을 가져오는(select)함수를 따로 만든다...?(이렇게 되면 이건, Mypage.jsp안에..)
*/
@WebServlet("/AddFamilyService")
public class AddFamilyService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// 사용자가 입력한 값, 쿼리로 입력된 값 불러오기
		String family_name = request.getParameter("family_name"); // 쿼리스트링으로 넘어온것은 getParameter
//		String user_id = request.getParameter("user_id");
		
		// 세션에 저장된 본인 id값
		memberDAO dao = new memberDAO();
		HttpSession session = request.getSession(); 
		
		UserVO vo_mine = (UserVO)session.getAttribute("vo"); 
		String user_name = vo_mine.getUser_name(); // 세션에 id값 저장했으므로 getParameter필요없음
		String user_id=vo_mine.getUser_id();
		System.out.println("familyService에 입력된 본인 : "+vo_mine);
		System.out.println("familyService에 입력된 본인 : "+vo_mine.toString());
		System.out.println("familyService에 입력된 본인 id : "+user_id);
		System.out.println("familyService에 입력된 본인 이름 : "+user_name);
		
//		int cnt = dao.addfam(family_name, user_mine); // 아무래도 addfam함수에는 2개 이상의 쿼리가 적혀 있어 제대로 작동이 안되는 거 같다
		int cnt = dao.Upfam(family_name, user_id); // family_name은 쿼리스트링에서 받아온 것, user_mine은 세션에서 받아온 것?
		
		System.out.println(cnt);
		
		if (cnt>0)
		{
			UserVO vof = new UserVO(user_name, family_name);
			session.setAttribute("vof", vof);
			response.sendRedirect("Mypage.jsp");
		}
		else
		{
			System.out.println("가족 추가 실패");
		}
				
		
	}

}
