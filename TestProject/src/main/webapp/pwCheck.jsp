<%@page import="com.DAO.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<%
    String name = request.getParameter("name");
     String phone = request.getParameter("phone");
     String userId = request.getParameter("userId");
     
memberDAO dao = new memberDAO();
 String user_pw = dao.pws(name, phone, userId); //��й�ȣ�� ��񿡼� ������..���н� ��
 
%>

  <form name="pwsearch" method="post">
      <%
       if (user_pw != null) {
      %>
      
      <div class = "container">
      	<div class = "found-success">
	      <h4>  ȸ������ ��й�ȣ�� </h4>  
	      <div class ="found-id"><%=user_pw%></div>
	      <h4>  �Դϴ� </h4>
	     </div>
	     <div class = "found-login">
 		    <input type="button" id="btnLogin" value="�α���" onClick = 'login()'/>
       	</div>
       </div>
      <%
  } else {
 %>
        <div class = "container">
      	<div class = "found-fail">
	      <h4>  ��ϵ� ������ �����ϴ� </h4>  
	     </div>
	     <div class = "found-login">
 		    <input type="button" id="btnback" value="�ٽ� ã��" onClick="history.back()"/>
 		    <input type="button" id="btnjoin" value="ȸ������" onClick="joinin()"/>
       	</div>
       </div>
       
    <div class = "adcontainer">
	<a href="#" ><img src = "../images/casead.png" /></a>                
</div>   
       <%
  }
 %> 
      </form>
      
</body>
</html>