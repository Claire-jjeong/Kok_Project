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
  

    <nav class="navbar navbar-expand-lg navbar-light shadow-sm">
      <div class="container">
        <a class="navbar-brand" href="VaccineRL2.jsp"><span class="text-primary">YAK</span>-KoK</a>

        

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupport" aria-controls="navbarSupport" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

               <div class="collapse navbar-collapse" id="navbarSupport">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="html/about.html">�����̶�?</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="VaccineRL2.jsp">��ſ���/��ȸ</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="html/VaccineInfo.html">�������</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Addform.jsp">����/FAQ</a>
            </li>
            <li class="nav-item">
              <a class="btn btn-primary ml-lg-3" href="html/about.html">�α׾ƿ�</a>
            </li>
          </ul>
        </div> <!-- .navbar-collapse -->
      </div> <!-- .container -->
    </nav>
  </header>

<div class="container">
<div class="card bg-light">
<article class="card-body mx-auto" style="max-width: 400px;">
	<h4 class="card-title mt-3 text-center">ȸ����������</h4>
	
		<p class="divider-text">
        <span class="bg-light">OR</span>
    </p>
	<form action = "UpdateService" method = "post">
    
     <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input name="user_pw" class="form-control" placeholder="������ ��й�ȣ" type="password">
    </div> <!-- form-group// -->
    
    <script type="text/javascript">
    </script>
<!--       <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input name="user_pw" class="form-control" placeholder="��й�ȣ Ȯ��" type="password" >
    </div> 
   --> 
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="email" class="form-control" placeholder="�̸���" type="email" >
    </div> <!-- form-group// -->
    
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span name = "addr" class="input-group-text"><i class="fa fa-phone"></i> </span>
		</div>
    	<input name="addr" class="form-control" placeholder="�ּ�" type="text">
    </div> <!-- form-group// -->

    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span name = "phone" class="input-group-text"><i class="fa fa-phone"></i> </span>
		</div>
    	<input name="phone" class="form-control" placeholder="�ڵ��� ��ȣ" type="text">
    </div> <!-- form-group// -->
                                                                  
    <div class="form-group">
        <button type="submit" class="btn btn-primary btn-block"> ���� ����  </button>
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
            <li><a href="../VaccineRL2.jsp">�����̶�?</a></li>
            <li><a href="../VaccineRL2.jsp">Our Developers</a></li>

          </ul>
        </div>
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>Vaccine</h5>
          <ul class="footer-menu">
            <li><a href="../VaccineRL2.jsp">��� ����/��ȸ</a></li>
         	 <li><a href="Precaution.html">���� �� ���ǻ���</a></li>
            <li><a href="Precaution.html">��� ����</a></li>
          </ul>
        </div>
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>My Page</h5>
          <ul class="footer-menu">
            <li><a href="../Mypage.jsp">�� ����</a></li>
            <li><a href="../Mypage.jsp">���� ����</a></li>
            <li><a href="../Mypage.jsp">�ּ� ����</a></li>
          </ul>
        </div>
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>Contact</h5>
          <p class="footer-link mt-2">���ֱ����� ���� �۾Ϸ�60 ����CGI���� 2��</p>
          <a href="#" class="footer-link">062-655-3509</a>
          <a href="#" class="footer-link">Yak-kok@gmail.net</a>

          
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


</body>
</html>