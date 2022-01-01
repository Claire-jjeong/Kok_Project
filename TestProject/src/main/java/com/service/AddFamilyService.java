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

/* ������ insert�Ǵ� �Լ�(�̰� ȸ�������� �� �ڵ����� �ǰ� ��), 
�÷��� �߰��Ǵ� �Լ�, 
������ update�Ǵ� �Լ� ���� �����?
update�� family ���̺��� ��������(select)�Լ��� ���� �����...?(�̷��� �Ǹ� �̰�, Mypage.jsp�ȿ�..)
*/
@WebServlet("/AddFamilyService")
public class AddFamilyService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// ����ڰ� �Է��� ��, ������ �Էµ� �� �ҷ�����
		String family_name = request.getParameter("family_name"); // ������Ʈ������ �Ѿ�°��� getParameter
//		String user_id = request.getParameter("user_id");
		
		// ���ǿ� ����� ���� id��
		memberDAO dao = new memberDAO();
		HttpSession session = request.getSession(); 
		
		UserVO vo_mine = (UserVO)session.getAttribute("vo"); 
		String user_name = vo_mine.getUser_name(); // ���ǿ� id�� ���������Ƿ� getParameter�ʿ����
		String user_id=vo_mine.getUser_id();
		System.out.println("familyService�� �Էµ� ���� : "+vo_mine);
		System.out.println("familyService�� �Էµ� ���� : "+vo_mine.toString());
		System.out.println("familyService�� �Էµ� ���� id : "+user_id);
		System.out.println("familyService�� �Էµ� ���� �̸� : "+user_name);
		
//		int cnt = dao.addfam(family_name, user_mine); // �ƹ����� addfam�Լ����� 2�� �̻��� ������ ���� �־� ����� �۵��� �ȵǴ� �� ����
		int cnt = dao.Upfam(family_name, user_id); // family_name�� ������Ʈ������ �޾ƿ� ��, user_mine�� ���ǿ��� �޾ƿ� ��?
		
		System.out.println(cnt);
		
		if (cnt>0)
		{
			UserVO vof = new UserVO(user_name, family_name);
			session.setAttribute("vof", vof);
			response.sendRedirect("Mypage.jsp");
		}
		else
		{
			System.out.println("���� �߰� ����");
		}
				
		
	}

}
