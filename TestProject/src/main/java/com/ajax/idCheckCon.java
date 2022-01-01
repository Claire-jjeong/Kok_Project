package com.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.memberDAO;


@WebServlet("/idCheckCon")
public class idCheckCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String data = request.getParameter("id");
		System.out.println("id");
		memberDAO dao = new memberDAO();
		boolean check = dao.idCheck(data);
		//�Է��� ���� �����ϸ� check -> true
		//�Է��� ���� �������� ������ check - > false
		
		//����
		PrintWriter out = response.getWriter();  //��½�Ʈ��
		
		out.print(check);
	}

}
