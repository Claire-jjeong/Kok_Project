<%@page import="com.smhrd.UserVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <meta name="copyright" content="MACode ID, https://macodeid.com/">

  <title>about</title>

  <link rel="stylesheet" href="../assets/css/maicons.css">

  <link rel="stylesheet" href="../assets/css/bootstrap.css">

  <link rel="stylesheet" href="../assets/vendor/owl-carousel/css/owl.carousel.css">

  <link rel="stylesheet" href="../assets/vendor/animate/animate.css">

  <link rel="stylesheet" href="../assets/css/theme.css">

<title>Insert title here</title>
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
        <a class="navbar-brand" href="../VaccineRL2.jsp"><span class="text-primary">Yak</span>-Kok</a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupport" aria-controls="navbarSupport" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupport">
          <ul class="navbar-nav ml-auto">
          
           				<li class="nav-item active"><a class="nav-link"
							href="about.jsp">�����̶�?</a></li>
							
						<li class="nav-item"><a class="nav-link"
							href="../VaccineRL2.jsp">��ſ���/��ȸ</a></li>
							
						<li class="nav-item"><a class="nav-link"
							href="precaution.jsp">�������</a></li>
							
						<li class="nav-item"><a class="nav-link"
							href="faqForm.jsp">����/FAQ</a></li>
						
							
						<%
                  if(vo == null){ //�α��� ��
                     out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' href='loginForm.html'>�α���/ȸ������</a></li>");
                  }else{
                     //������ �������� �α��� ���� ��� ��� ȸ������ �� �� �ֵ���
                     //�α����� ȸ���� �̸����� admin�� ��쿡�� ȸ����ü����� ���̰� 
                     //�α����� ȸ���� �̸����� �Ϲ� ȸ���� ��쿡�� ȸ������ ������ ���̰�
                     if(vo.getUser_id().equals("admin")){
                        out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' href = 'selectUser.jsp'>ȸ����ü���</a>");
                     }else{
                        out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' a href='../Mypage.jsp'>����������</a>");
                     }
                     out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' a href='../LogoutService'>�α׾ƿ�</a>");
                  }
                  

                  %>
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
            <li class="breadcrumb-item active" aria-current="page">About</li>
          </ol>
        </nav>
        <h1 class="font-weight-normal">�����̶�?</h1>
      </div> <!-- .container -->
    </div> <!-- .banner-section -->
  </div> <!-- .page-banner -->


   <div class="page-section pb-0">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 py-3 wow fadeInUp">
            <h1>�����̶�?</h1><br>
            <p class="text-grey mb-4">������ �� ���� ���κ� ���� �ǰ� ���� �ý��� �������� ������ ���� �� ������ ������ ��ǥ�� ���������� ���� ������ �����մϴ�.<br> 
            �ս��� ���ΰ� �������� �������� ��Ȳ�� Ȯ���ϼ���!
</p>
            <a href="../VaccineRL2.jsp" class="btn btn-primary">�����Ϸ� ����!</a>
          </div>
          <div class="col-lg-6 wow fadeInRight" data-wow-delay="400ms">
            <div class="img-place custom-img-1">
              <img src="../assets/img/vaccine.png" alt="">
            </div>
          </div>
        </div>
      </div>
    </div> <!-- .bg-light -->
    
    
        
        <div class="col-lg-10 mt-5">
          <h1 class="text-center mb-5 wow fadeInUp">Our Developers</h1>
          <div class="row justify-content-center">
            <div class="col-md-6 col-lg-3 wow zoomIn">
              <div class="card-doctor">
                <div class="header">
                  <img src="../assets/img/doctors/HanGuel.png" alt="">
                 
                </div>
                <div class="body">
                  <p class="text-xl mb-0">Dev.Hangeul</p>
                  <span class="text-sm text-grey">�� �� ��</span>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-3 wow zoomIn">
              <div class="card-doctor">
                <div class="header">
                  <img src="../assets/img/doctors/JungMi.png" alt="">
                
                </div>
                <div class="body">
                  <p class="text-xl mb-0">Dev. Claire J</p>
                  <span class="text-sm text-grey">�� �� ��</span>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-3 wow zoomIn">
              <div class="card-doctor">
                <div class="header">
                  <img src="../assets/img/doctors/dong2.png" alt="">
                  
                </div>
                <div class="body">
                  <p class="text-xl mb-0">Dev.Donghui</p>
                  <span class="text-sm text-grey">�� �� ��</span>
                </div>
              </div>
             </div>
              <div class="col-md-6 col-lg-3 wow zoomIn">
              <div class="card-doctor">
                <div class="header">
                  <img src="../assets/img/doctors/KangHwy.png" alt="">
                  
                </div>
                <div class="body">
                  <p class="text-xl mb-0">Dev.GodHui</p>
                  <span class="text-sm text-grey">�� �� ��</span>
                </div>
              </div>
            </div>
            
          </div>
        </div>
      </div>
    </div>
  </div>    

  <div class="page-section banner-home bg-image" style="background-image: url(../assets/img/banner-pattern.svg);">
    <div class="container py-5 py-lg-0">
      <div class="row align-items-center">
        <div class="col-lg-4 wow zoomIn">
          <div class="img-banner d-none d-lg-block">
            <img src="../assets/img/mobile_app.png" alt="">
          </div>
        </div>
        <div class="col-lg-8 wow fadeInRight">
          <h1 class="font-weight-normal mb-3">����� ������ �ٿ��������!</h1>
          <a href="#"><img src="../assets/img/google_play.svg" alt=""></a>
          <a href="#" class="ml-2"><img src="../assets/img/app_store.svg" alt=""></a>
        </div>
      </div>
    </div>
  </div> <!-- .banner-home -->

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

<script src="../assets/js/jquery-3.5.1.min.js"></script>

<script src="../assets/js/bootstrap.bundle.min.js"></script>

<script src="../assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>

<script src="../assets/vendor/wow/wow.min.js"></script>

<script src="../assets/js/theme.js"></script>
  
</body>
</html>