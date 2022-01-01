<%@page import="com.smhrd.UserVO"%>
<%@page import="com.smhrd.FamilyVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>


  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script>document.getElementsByTagName("html")[0].className += " js";</script>
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets_faq/css/style0.css">


<link rel="stylesheet" type="text/css" href="assets/css/faq.css">

<link rel="stylesheet" href="assets/css/maicons.css">

<link rel="stylesheet" href="assets/css/bootstrap.css">

<link rel="stylesheet" href="assets/vendor/owl-carousel/css/owl.carousel.css">

<link rel="stylesheet" href="assets/vendor/animate/animate.css">

<link rel="stylesheet" href="assets/css/theme.css">

<script type="text/javascript" src="assets/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript" src="assets/js/jquery-3.6.0.min.js"></script>


<% // famView에는 스크립트릿으로 입력한 fam값을 가져온다.
	memberDAO dao = new memberDAO();
//	ArrayList<UserVO> mine = (ArrayList<UserVO>) session.getAttribute("vo");
//	System.out.println(mine);
	ArrayList<UserVO> vo1 = (ArrayList<UserVO>) session.getAttribute("vo1"); //로그인 할 때 생성된 세션 vo받아옴
	System.out.println("session vo1 : "+vo1.size());
	System.out.println("id"+vo1.get(0).getUser_id());
	System.out.println("name"+vo1.get(0).getUser_name()); 
%>
<%
%>

</head>
<body>

<div class="back-to-top"></div>

	<header>  
		<div class="topbar">
	      <div class="container">
	        <div class="row">
	          <div class="col-sm-8 text-sm">
	            <div class="site-info">
	              <a href="#"><span class="mai-call text-primary"></span> +00 123 4455 6666</a>
	              <span class="divider">|</span>
	              <a href="#"><span class="mai-mail text-primary"></span> mail@example.com</a>
	            </div>
	          </div>
	          <div class="col-sm-4 text-right text-sm">
	            <div class="social-mini-button">
	              <a href="#"><span class="mai-logo-facebook-f"></span></a>
	              <a href="#"><span class="mai-logo-twitter"></span></a>
	              <a href="#"><span class="mai-logo-dribbble"></span></a>
	              <a href="#"><span class="mai-logo-instagram"></span></a>
	            </div>
	          </div>
	        </div> <!-- .row -->
	      </div> <!-- .container -->
	    </div> 
    <!-- .topbar -->
	    <nav class="navbar navbar-expand-lg navbar-light shadow-sm">
	      <div class="container">
	        <a class="navbar-brand" href="../VaccineRL2.jsp"><span class="text-primary">Yak</span>-Kok</a>
	
	        <form action="#">
	          <div class="input-group input-navbar">
	            <div class="input-group-prepend">
	              <span class="input-group-text" id="icon-addon1"><span class="mai-search"></span></span>
	            </div>
	            <input type="text" class="form-control" placeholder="Enter keyword.." aria-label="Username" aria-describedby="icon-addon1">
	          </div>
	        </form>
	
	        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupport" aria-controls="navbarSupport" aria-expanded="false" aria-label="Toggle navigation">
	          <span class="navbar-toggler-icon"></span>
	        </button>
	
	        <div class="collapse navbar-collapse" id="navbarSupport">
	          <ul class="navbar-nav ml-auto">
	            <li class="nav-item">
	              <a class="nav-link" href="html/about.html">약콕이란</a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="VaccineRl2.html">백신예약/조회</a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="VaccineInfo.html">백신정보</a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="Addform.jsp">광고/FAQ</a>
	            </li>
	            <li class="nav-item">
	              <a class="btn btn-primary ml-lg-3" href="html/about.html">로그아웃</a>
	            </li>
	          	
	          </ul>
	        </div> <!-- .navbar-collapse -->
	      </div> <!-- .container -->
	    </nav>
	  </header>

  <div class="page-banner overlay-dark bg-image" style="background-image: url(../assets/img/bg_image_1.jpg);">
    <div class="banner-section">
      <div class="container text-center wow fadeInUp">
        <nav aria-label="Breadcrumb">
          <ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-2">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">회원목록</li>
          </ol>
        </nav>
        <h1 class="font-weight-normal">id조회</h1>
      </div> <!-- .container -->
    </div> <!-- .banner-section -->
  </div> <!-- .page-banner -->
  
  <div class="page-section bg-light">
<section class="ftco-section">
		<div class="container">

			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<table class="table">
						  <thead class="thead-dark">
						    <tr>
						      <th> 가입된 ID</th>
						      <th> 이름 </th>
						      <th> 이메일 </th>
						      <th> 추가여부 </th>
						    </tr>
						  </thead>
						  <tbody>
						  
						  <tr>	
						  <% 
						
					//	  	out.print("<td>"+ vo.get(0).getUser_id()+ "</td>"); 
							out.print("<td>"+ vo1.get(0).getUser_id()+ "</td>");
							out.print("<td>"+ vo1.get(0).getUser_name()+ "</td>");
							out.print("<td>"+ vo1.get(0).getEmail()+ "</td>");
						  	out.print("<td><a href='AddFamilyService?family_name="+vo1.get(0).getUser_name()+"'> 가족추가 </a></td>");					  
						  	
							/* 쿼리스트링
							키?값...의 형식으로, 텍스트에 값을 담아서 해당 서블릿에 보낼 때 사용하는 방식이다.
							이거 전에도 이 사용법이 나오기도 한다.
							*/
						  %>
						  </tr>
						  
						   <% // 본인 이름 세션 생성을 여기서 해준다
						   
						   //session.setAttribute("famName", vo.get(0).getUser_name());		 	
						   %>
						   <!-- 세션추가를 위한 함수를 아래 스크립 태그 안에 생성 -->
						  <script>
						  
						  
						   </script>
						  </tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>



</body>
</html>