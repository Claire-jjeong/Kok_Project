package com.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.memberDAO;
import com.smhrd.UserVO;

@WebServlet("/IdSearchService")
public class IdSearchService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String user_name = request.getParameter("name");
		String phone = request.getParameter("phone");
		
		memberDAO dao = new memberDAO();
		String user_id = dao.ids(user_name, phone);
		
		if(user_id != null) {
			
		}
		
		
	
	}

}
