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
 String user_pw = dao.pws(name, phone, userId); //비밀번호를 디비에서 가져옴..실패시 널
 
%>

  <form name="pwsearch" method="post">
      <%
       if (user_pw != null) {
      %>
      
      <div class = "container">
      	<div class = "found-success">
	      <h4>  회원님의 비밀번호는 </h4>  
	      <div class ="found-id"><%=user_pw%></div>
	      <h4>  입니다 </h4>
	     </div>
	     <div class = "found-login">
 		    <input type="button" id="btnLogin" value="로그인" onClick = 'login()'/>
       	</div>
       </div>
      <%
  } else {
 %>
        <div class = "container">
      	<div class = "found-fail">
	      <h4>  등록된 정보가 없습니다 </h4>  
	     </div>
	     <div class = "found-login">
 		    <input type="button" id="btnback" value="다시 찾기" onClick="history.back()"/>
 		    <input type="button" id="btnjoin" value="회원가입" onClick="joinin()"/>
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