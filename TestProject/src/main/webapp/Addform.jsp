<%@page import="com.smhrd.UserVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Goods</title>

<link rel="stylesheet" href="assets/css/maicons.css">

<link rel="stylesheet" href="assets/css/bootstrap.css">

<link rel="stylesheet" href="assets/vendor/owl-carousel/css/owl.carousel.css">

<link rel="stylesheet" href="assets/vendor/animate/animate.css">

<link rel="stylesheet" href="assets/css/theme.css">

<%
		ArrayList<UserVO> vo1 = (ArrayList<UserVO>) session.getAttribute("vo1");
		UserVO vo = (UserVO)session.getAttribute("vo");
		System.out.println("vo형태 확인 : "+vo.getClass().getName());
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
	        <a class="navbar-brand" href="#"><span class="text-primary">Yak</span>-KKock</a>
	
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
	            <li class="nav-item"><a class="nav-link"
							href="html/about.html">약콕이란?</a></li>
						
						<li class="nav-item active"><a class="nav-link"
							href="VaccineRL2.jsp">백신예약/조회</a></li>
							
						<li class="nav-item"><a class="nav-link"
							href="html/VaccineInfo.html">백신정보</a></li>
						
						<li class="nav-item"><a class="nav-link"
							href="html/AD_FAQ.html">광고/FAQ</a></li>
						
	            <li class="nav-item">
	              <a class="btn btn-primary ml-lg-3" href="html/loginForm.html">로그인/회원가입</a>
	            </li>
	            </li>
	          </ul>
	        </div> <!-- .navbar-collapse -->
	      </div> <!-- .container -->
	    </nav>
	  </header>
	  <!-- 헤더 bar -->
	 
	<div class="page-banner overlay-dark bg-image" style="background-image: url(./img/bg_image_1.jpg);">
    <div class="banner-section">
      <div class="container text-center wow fadeInUp">
        <nav aria-label="Breadcrumb">
          <ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-2">
            <li class="breadcrumb-item"><a href="Addform.jsp" name="Goods">Goods</a></li>
            
            <li class="breadcrumb-item"><a href="faqForm.jsp" name="FAQ"> FAQ </a></li>
          </ol>
       
        </nav>
        <h1 class="font-weight-normal">Goods</h1>
      </div> <!-- .container -->
    </div> <!-- .banner-section -->
  </div> <!-- .page-banner -->
  
  <div class="page-section">
    <div class="container">
      <div class="row">
        <div class="col-lg-8">
          <div class="row">
            <div class="col-sm-6 py-3">
              <div class="card-blog">
                <div class="header">
                  <div class="post-category">
                    <a href="#">의료기기</a>
                  </div>
                  <a href="blog-details" class="post-thumb">
                    <img src="./assets/img/blog/blog_1.jpg" alt="">
                  </a>
                </div>
                <div class="body">
                  <h5 class="post-title"><a href="blog-details.html">치아건강</a></h5>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="./assets/img/person/person_1.jpg" alt="">
                        
                      </div>
                      <span>오스템</span>
                    </div>
                    <span class="mai-time"></span> 1 week ago
                  </div>
                </div>
              </div>
            </div>
	
			<div class="col-sm-6 py-3">
              <div class="card-blog">
                <div class="header">
                  <div class="post-category">
                    <a href="#">medicine</a>
                  </div>
                  <a href="blog-details" class="post-thumb">
                    <img src="./assets/img/blog/blog_3.jpg" alt="">
                  </a>
                </div>
                <div class="body">
                  <h5 class="post-title"><a href="blog-details.html">종합 비타민</a></h5>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="./assets/img/person/person_4.jpg" alt="">
                      </div>
                      <span>기업이름</span>
                    </div>
                    <span class="mai-time"></span> 2 weeks ago
                  </div>
                </div>
              </div>
            </div>


<div class="col-sm-6 py-3">
              <div class="card-blog">
                <div class="header">
                  <div class="post-category">
                    <a href="#">Covid19</a>
                  </div>
                  <a href="blog-details" class="post-thumb">
                    <img src="./assets/img/blog/blog_3.jpg" alt="">
                  </a>
                </div>
                <div class="body">
                  <h5 class="post-title"><a href="blog-details.html">Shifting goalposts: Research in the time of the coronavirus</a></h5>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="./assets/img/person/person_3.jpg" alt="">
                      </div>
                      <span>Adams Collier</span>
                    </div>
                    <span class="mai-time"></span> 4 weeks ago
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 py-3">
              <div class="card-blog">
                <div class="header">
                  <div class="post-category">
                    <a href="#">Neurology</a>
                  </div>
                  <a href="blog-details" class="post-thumb">
                    <img src="./assets/img/blog/blog_4.jpg" alt="">
                  </a>
                </div>
                <div class="body">
                  <h5 class="post-title"><a href="blog-details.html">What are the nonmedical factors most closely linked to death risk?</a></h5>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="./assets/img/person/person_1.jpg" alt="">
                      </div>
                      <span>Roger Adams</span>
                    </div>
                    <span class="mai-time"></span> 4 weeks ago
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 py-3">
              <div class="card-blog">
                <div class="header">
                  <div class="post-category">
                    <a href="#">Cardiology</a>
                  </div>
                  <a href="blog-details" class="post-thumb">
                    <img src="./assets/img/blog/blog_5.jpg" alt="">
                  </a>
                </div>
                <div class="body">
                  <h5 class="post-title"><a href="blog-details.html">Do gut bacteria contribute to ethnic health disparities</a></h5>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="./assets/img/person/person_1.jpg" alt="">
                      </div>
                      <span>Roger Adams</span>
                    </div>
                    <span class="mai-time"></span> 4 weeks ago
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 py-3">
              <div class="card-blog">
                <div class="header">
                  <div class="post-category">
                    <a href="#">Patient Services</a>
                  </div>
                  <a href="blog-details" class="post-thumb">
                    <img src="./assets/img/blog/blog_1.jpg" alt="">
                  </a>
                </div>
                <div class="body">
                  <h5 class="post-title"><a href="blog-details.html">The Recovery Room: News beyond the pandemic</a></h5>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="./assets/img/person/person_1.jpg" alt="">
                      </div>
                      <span>Roger Adams</span>
                    </div>
                    <span class="mai-time"></span> 1 month ago
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 py-3">
              <div class="card-blog">
                <div class="header">
                  <div class="post-category">
                    <a href="#">General Health</a>
                  </div>
                  <a href="blog-details" class="post-thumb">
                    <img src="./assets/img/blog/blog_2.jpg" alt="">
                  </a>
                </div>
                <div class="body">
                  <h5 class="post-title"><a href="blog-details.html">Racism in mental healthcare: An invisible barrier</a></h5>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="./assets/img/person/person_1.jpg" alt="">
                      </div>
                      <span>Roger Adams</span>
                    </div>
                    <span class="mai-time"></span> 2 months ago
                  </div>
                </div>
              </div>
            </div>
            
            <div class="col-sm-6 py-3">
              <div class="card-blog">
                <div class="header">
                  <div class="post-category">
                    <a href="#">Covid19</a>
                  </div>
                  <a href="blog-details" class="post-thumb">
                    <img src="./assets/img/blog/blog_2.jpg" alt="">
                  </a>
                </div>
                <div class="body">
                  <h5 class="post-title"><a href="blog-details.html">COVID-19 live updates: Total number of cases passes 11.6 million</a></h5>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="./assets/img/person/person_2.jpg" alt="">
                      </div>
                      <span>Diego Simmons</span>
                    </div>
                    <span class="mai-time"></span> 4 weeks ago
                  </div>
                </div>
              </div>
            </div>

            <div class="col-12 my-5">
              <nav aria-label="Page Navigation">
                <ul class="pagination justify-content-center">
                  <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                  </li>
                  <li class="page-item active" aria-current="page">
                    <a class="page-link" href="#">1 <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="page-item">
                    <a class="page-link" href="#">2</a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#">Next</a>
                  </li>
                </ul>
              </nav>
            </div>
          </div> <!-- .row -->
        </div>
        <div class="col-lg-4">
          <div class="sidebar">
            <div class="sidebar-block">
              <h3 class="sidebar-title">Search</h3>
              <form action="#" class="search-form">
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="Type a keyword and hit enter">
                  <button type="submit" class="btn"><span class="icon mai-search">검색</span></button>
                  <!-- 자신이 원하는 상품 키워드 검색하게 만들고 싶은데...이건 보류 -->
                </div>
              </form>
            </div>
		</div>



          </div>
        </div> 
      </div> <!-- .row -->
    </div> <!-- .container -->
  </div> <!-- .page-section -->

  <div class="page-section banner-home bg-image" style="background-image: url(./assets/img/banner-pattern.svg);">
  </div> <!-- .banner-home -->

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
    </div> <!-- .container -->
  </footer> <!-- .page-footer -->

<script src="./assets/js/jquery-3.5.1.min.js"></script>

<script src="./assets/js/bootstrap.bundle.min.js"></script>

<script src="./assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>

<script src="./assets/vendor/wow/wow.min.js"></script>

<script src="./assets/js/theme.js"></script>
  
</body>
</html>
       