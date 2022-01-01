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



// 비밀번호(확인필요), 이메일, 주소, 핸드폰 번호 변경
@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 로그인한 이메일 값의 사용자가 입력한 pw,tel,address로 변경하시오.
		
		//1. 사용자가 입력한 값(getP)과 로그인한 사람의 이메일값(getS)을 가져오기 (서로 다른값)
		
		
		String user_pw = request.getParameter("user_pw");
		String email = request.getParameter("email");
		String addr = request.getParameter("addr");
		String phone = request.getParameter("phone");
		
		HttpSession session = request.getSession(); 
		UserVO vo = (UserVO)session.getAttribute("vo"); //세션에 
		String user_id = vo.getUser_id(); // 세션에 id값 저장했으므로 getParameter필요없음
		
		//2. jdbc코드를 활용해서 update SQL문 명령하기(JoinService)
		memberDAO dao = new memberDAO();
		int cnt = dao.update_0(user_pw, email, addr, phone, user_id);
	 
		
		if(cnt>0) {
			//수정하기 전의 데이터를 보여주기 때문에 세션 새롭게 생성
	
			UserVO vo2 = new UserVO(user_pw,phone,addr,email,user_id);
			session.setAttribute("vo", vo2);
			
			response.sendRedirect("VaccineRL2.jsp");
		}else {
			System.out.println("수정실패!");
			response.sendRedirect("VaccineRL2.jsp");
		}
	}

}
