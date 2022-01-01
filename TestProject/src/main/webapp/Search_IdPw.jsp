<%@page import="com.DAO.memberDAO"%>
<%@page import="com.smhrd.UserVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Update</title>

  <link rel="stylesheet" href="assets/css/maicons.css">

  <link rel="stylesheet" href="assets/css/bootstrap.css">

  <link rel="stylesheet" href="assets/vendor/owl-carousel/css/owl.carousel.css">

  <link rel="stylesheet" href="assets/vendor/animate/animate.css">

  <link rel="stylesheet" href="assets/css/theme.css">
  <link rel="stylesheet" href="assets/css/login.css">



</head>
<body>
	<%
	UserVO vo = (UserVO)session.getAttribute("vo");
	%>
  <!-- Back to top button -->
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
             
              <!--  <a href="Mypage.jsp"> 
              -->
              <a href="#"><span class="mai-logo-facebook-f"></span></a>
              <a href="#"><span class="mai-logo-twitter"></span></a>
              <a href="#"><span class="mai-logo-dribbble"></span></a>
              <a href="#"><span class="mai-logo-instagram"></span></a>
            </div>
          </div>
        </div> <!-- .row -->
      </div> <!-- .container -->
    </div> <!-- .topbar -->

    <nav class="navbar navbar-expand-lg navbar-light shadow-sm">
      <div class="container">
        <a class="navbar-brand" href="VaccineRL2.jsp"><span class="text-primary">YAK</span>-KoK</a>

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
              <a class="nav-link" href="html/about.html">약콕이란?</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="VaccineRL2.jsp">백신예약/조회</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="html/VaccineInfo.html">백신정보</a>
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

<div class="container">
<div class="card bg-light">
<article class="card-body mx-auto" style="max-width: 400px;">
	<h4 class="card-title mt-3 text-center">아이디찾기</h4>
	
		<p class="divider-text">
        <span class="bg-light">OR</span>
    </p>
	<form name = "idfindscreen" method = "post">
    
     <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input name="name" class="form-control" placeholder="이름" type="text">
    </div> <!-- form-group// -->
    
    <script type="text/javascript">
    </script>
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="phone" class="form-control" placeholder="핸드폰번호" type="text" >
    </div> <!-- form-group// -->
    <div class="form-group">
        <button type="submit" class="btn btn-primary btn-block" onclick="id_search()"> 아이디 찾기  </button>
    </div> <!-- form-group// -->  
                                                               
</form>
</article>
<article class="card-body mx-auto" style="max-width: 400px;">
	<h4 class="card-title mt-3 text-center">비밀번호찾기</h4>
	
		<p class="divider-text">
        <span class="bg-light">OR</span>
    </p>
	<form name = "pwfindscreen" method = "post">
    
     <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input name="userId" class="form-control" placeholder="아이디" type="text">
    </div> <!-- form-group// -->
    
    <script type="text/javascript">
    </script>

    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="name" class="form-control" placeholder="이름" type="text" >
    </div> <!-- form-group// -->
    
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"><i class="fa fa-phone"></i> </span>
		</div>
    	<input name="phone" class="form-control" placeholder="핸드폰번호" type="text">
    </div> <!-- form-group// -->
<div class="form-group">
        <button type="submit" class="btn btn-primary btn-block" onclick="pw_search()"> 비밀번호 찾기  </button>
    </div> <!-- form-group// --> 
</form>
</article>
</div> <!-- card.// -->

</div> 
<!--container end.//-->

  <footer class="page-footer">
    <div class="container">
      <div class="row px-md-3">
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>Company</h5>
          <ul class="footer-menu">
            <li><a href="#">About Us</a></li>
            <li><a href="#">Career</a></li>
            <li><a href="#">Editorial Team</a></li>
            <li><a href="#">Protection</a></li>
          </ul>
        </div>
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>More</h5>
          <ul class="footer-menu">
            <li><a href="#">Terms & Condition</a></li>
            <li><a href="#">Privacy</a></li>
            <li><a href="#">Advertise</a></li>
            <li><a href="#">Join as Doctors</a></li>
          </ul>
        </div>
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>Our partner</h5>
          <ul class="footer-menu">
            <li><a href="#">One-Fitness</a></li>
            <li><a href="#">One-Drugs</a></li>
            <li><a href="#">One-Live</a></li>
          </ul>
        </div>
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>Contact</h5>
          <p class="footer-link mt-2">351 Willow Street Franklin, MA 02038</p>
          <a href="#" class="footer-link">701-573-7582</a>
          <a href="#" class="footer-link">healthcare@temporary.net</a>

          <h5 class="mt-3">Social Media</h5>
          <div class="footer-sosmed mt-3">
            <a href="#" target="_blank"><span class="mai-logo-facebook-f"></span></a>
            <a href="#" target="_blank"><span class="mai-logo-twitter"></span></a>
            <a href="#" target="_blank"><span class="mai-logo-google-plus-g"></span></a>
            <a href="#" target="_blank"><span class="mai-logo-instagram"></span></a>
            <a href="#" target="_blank"><span class="mai-logo-linkedin"></span></a>
          </div>
        </div>
      </div>

      <hr>

      <p id="copyright">Copyright &copy; 2020 <a href="https://macodeid.com/" target="_blank">MACode ID</a>. All right reserved</p>
    </div>
  </footer>

<script src="assets/js/jquery-3.5.1.min.js"></script>

<script src="assets/js/bootstrap.bundle.min.js"></script>

<script src="assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>

<script src="assets/vendor/wow/wow.min.js"></script>

<script src="assets/js/google-maps.js"></script>

<script src="assets/js/theme.js"></script>

<script>
function id_search() { 
 	var frm = document.idfindscreen;

 	if (frm.name.value.length < 1) {
	  alert("이름을 입력해주세요");
	  return;
	 }

 	if (frm.phone.value.length != 11) {
		  alert("핸드폰번호를 정확하게 입력해주세요");
		  return;
	 }

 frm.method = "post";
 frm.action = "idCheck.jsp"; //넘어간화면
 frm.submit();  
 }

function pw_search() { 
 	var frm = document.pwfindscreen;

 	if (frm.name.value.length < 1) {
	  alert("이름을 입력해주세요");
	  return;
	 }

 	if (frm.phone.value.length != 11) {
		  alert("핸드폰번호를 정확하게 입력해주세요");
		  return;
	 }
 	
 	if (frm.userId.value.length < 1) {
		  alert("아이디를 입력해 주세요");
		  return;
	 }

 frm.method = "post";
 frm.action = "pwCheck.jsp"; //넘어간화면
 frm.submit();  
 }
</script>

</body>
</html>