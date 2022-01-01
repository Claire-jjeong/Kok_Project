<%@page import="com.smhrd.UserVO"%>
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
  <link rel="stylesheet" href="../assets/css/style.css">
  <link rel="stylesheet" href="../assets_faq/css/style0.css">

<link rel="stylesheet" type="text/css" href="../assets/css/faq.css">

<link rel="stylesheet" href="../assets/css/maicons.css">

<link rel="stylesheet" href="../assets/css/bootstrap.css">

<link rel="stylesheet" href="../assets/vendor/owl-carousel/css/owl.carousel.css">

<link rel="stylesheet" href="../assets/vendor/animate/animate.css">

<link rel="stylesheet" href="../assets/css/theme.css">

<script type="text/javascript" src="../assets/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript" src="../assets/js/jquery-3.6.0.min.js"></script>

</head>
<body>
<%
      UserVO vo = (UserVO)session.getAttribute("vo");
      %>
<div class="back-to-top"></div>

	<header>  
		
    <!-- .topbar -->
	    <nav class="navbar navbar-expand-lg navbar-light shadow-sm">
	      <div class="container">
	        <a class="navbar-brand" href="../VaccineRL2.jsp"><span class="text-primary">Yak</span>-Kok</a>
	
	        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupport" aria-controls="navbarSupport" aria-expanded="false" aria-label="Toggle navigation">
	          <span class="navbar-toggler-icon"></span>
	        </button>
	
	        <div class="collapse navbar-collapse" id="navbarSupport">
	          <ul class="navbar-nav ml-auto">
	            <li class="nav-item">
	              <a class="nav-link" href="about.jsp">약콕이란</a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="../VaccineRL2.jsp">백신예약/조회</a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="precaution.jsp">백신정보</a>
	            </li>
	            <li class="nav-item active">
	              <a class="nav-link" href="faqForm.jsp">광고/FAQ</a>
	            </li>
	            <%
                  if(vo == null){ //로그인 전
                     out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' href='html/loginForm.html'>로그인/회원가입</a></li>");
                  }else{
                     //관리자 계정으로 로그인 했을 경우 모든 회원정보 볼 수 있도록
                     //로그인한 회원의 이메일이 admin인 경우에는 회원전체목록이 보이게 
                     //로그인한 회원의 이메일이 일반 회원인 경우에는 회원정보 수정이 보이게
                     if(vo.getUser_id().equals("admin")){
                        out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' href = 'selectUser.jsp'>회원전체목록</a>");
                     }else{
                        out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' a href='../Mypage.jsp'>마이페이지</a>");
                     }
                     out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' a href='../LogoutService'>로그아웃</a>");
                  }
                  

                  %>
	          	
	          </ul>
	        </div> <!-- .navbar-collapse -->
	      </div> <!-- .container -->
	    </nav>
	  </header>
	  <!-- 헤더 bar -->
	 
	<div class="page-banner overlay-dark bg-image" style="background-image: url(../assets/img/bg_image_1.jpg);">
    <div class="banner-section">
      <div class="container text-center wow fadeInUp">
        <nav aria-label="Breadcrumb">
          <ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-2">
            <li class="breadcrumb-item"><a href="AD_FAQ.jsp" name="Goods">Goods</a></li>
            
            <li class="breadcrumb-item"><a href="faqForm.jsp" name="FAQ"> FAQ </a></li>
          </ol>
        </nav>
        <h1 class="font-weight-normal" style="color:white">FAQs</h1>
      </div> <!-- .container -->
    </div> <!-- .banner-section -->
  </div> <!-- .page-banner -->


  
  <section class="cd-faq js-cd-faq container max-width-lg margin-top-lg margin-bottom-lg">
	<ul class="cd-faq__categories">
		<li><a class="cd-faq__category cd-faq__category-selected truncate" href="#basics">회원가입</a></li>
		<li><a class="cd-faq__category truncate" href="#mobile">예약서비스</a></li>
		<li><a class="cd-faq__category truncate" href="#account">백신정보</a></li>

	</ul> <!-- cd-faq__categories -->

	<div class="cd-faq__items">
		<ul id="basics" class="cd-faq__group">
			<li class="cd-faq__title"><h2>회원가입</h2></li>
			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>아이디 혹은 비밀번호가 기억나지 않아요.</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
            <p>로그인 창 하단 "아이디/비밀번호찾기"에서 비밀번호를 재설정할 수 있습니다.</p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>

			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>회원가입은 어떻게 하나요?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
            <p>약콕 메인페이지 우측 [회원가입] 을 통해 가능합니다.  <br>
            	약콕의 회원가입은 무료이며, 가입과 동시에 모든 회원 서비스를 이용하실 수 있습니다.</p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>

			

		</ul> <!-- cd-faq__group -->

		<ul id="mobile" class="cd-faq__group">
			<li class="cd-faq__title"><h2>예약서비스</h2></li>
			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>예방접종을 예약하고 싶은데 어떻게 해야하나요?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
          <p>백신 예약은 메인페이지 내 [백신예약/조회] 에서 병원 조회 후 병원과의 통화로 예약이 가능합니다.</p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>

			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>주말이나 휴일에 백신접종이 가능한가요?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
            <p>병원마다 영업시간이 상이하니 예약 진행 시 병원 영업시간을 확인해주세요.</p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>

			
		</ul> <!-- cd-faq__group -->

		<ul id="account" class="cd-faq__group">
			<li class="cd-faq__title"><h2>백신정보</h2></li>
			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>예약한 백신에 대해 알고싶어요</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
          <p>메인페이지 [백신정보]에서 접종 전 주의사항과 백신별 정보를 확인하세요. </p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>

			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>어떤 백신을 맞아야하는지 궁금해요</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
            <p>회원가입시 입력한 나이와 성별에 따라 약콕에서 백신을 추천해드립니다! 로그인 후 메인페이지 [백신리스트]를 확인하세요 </p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>

			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>예방접종을 왜 해야 하나요?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
            <p>사회적 거리두기, 마스크 착용 등은 바이러스와 접촉을 줄여 감염을 예방하는 반면, 예방접종은 우리 몸이 바이러스에 대항하는 면역력을 길러 감염을 예방합니다. 예방접종을 통해 일차적으로 인플루엔자 감염증을 예방할 수 있습니다. 더 나아가 우리나라 인구 중 일정 수준 이상이 접종할 경우 집단면역을 형성하여 대규모 집단유행을 억제할 수 있습니다.</p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>

			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>인플루엔자 예방접종 후 나타날 수 있는 이상반응은 무엇이 있나요?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
            <p> - 인플루엔자 예방접종 후 가장 흔한 이상반응은 백신을 접종받은 사람의 15∼20%에서 나타나는 접종 부위 발적과 통증이 있으나, 대부분 1∼2일 이내에 사라집니다.</p>
            <p>- 전신반응으로 발열, 무력감, 근육통, 두통 등의 증상이 1% 미만에서 나타날 수 있으며 보통 백신 접종 후 6∼12시간 이내에 발생하여 1∼2일 간 지속됩니다. 드물게 두드러기, 혈관부종, 아나필락시스 등의 알레르기반응이 나타날 수도 있으니, 이상반응이 지속되거나 그 외 증상이 나타나면 의사의 진료를 받으시기 바랍니다.</p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>
			
			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>보건소 백신과 병의원 백신에 차이가 있나요?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
            <p> 아니오, 보건소와 병의원에서 사용하는 백신은 차이가 없습니다. <br><br>
▶ 각 백신별로 제조사에 따라 여러 종류의 백신이 생산되고 있습니다. 보건소와 병의원에서 사용하는 백신에 차이가 있는 것은 아니나 보건소나 병의원에서 모든 종류의 백신을 보유하고 있지는 않습니다. DTaP와 같이 동일제조사 백신으로 기초접종을 해야 하는 경우에는 다음 접종 시 방문할 접종기관에 이전에 접종한 백신과 동일제조사 백신이 보유되어 있는지를 확인한 후 방문하도록 합니다.</p>

          </div>
				</div> <!-- cd-faq__content -->
			</li>
			
			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>임신 기간 동안에 인플루엔자 예방접종을 해도 괜찮은가요?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
            <p>- 적극 권고합니다. 임신부는 임신 주수에 상관없이 불활성화 백신 접종을 권장하며 출산 후 모유 수유 중에도 접종 가능합니다.<br><br>
             - 임신부가 인플루엔자에 감염될 경우 일반인에 비해 합병증 위험이 크고, 임신 중 접종 시 항체가 태반을 통해 태아에게로 전달되어 예방접종을 맞을 수 없는 6개월 미만의 어린이에게도 보호효과가 있어 임신부 예방접종을 적극 권고합니다.<br><br>
             - 다만, 인플루엔자 국가예방접종지원 대상은 임신부로 출산 후에는 비용지원이 불가합니다.
             </p>

          </div>
				</div> <!-- cd-faq__content -->
			</li>
		</ul> <!-- cd-faq__group -->

		

		
		
	</div> <!-- cd-faq__items -->

	<a href="#0" class="cd-faq__close-panel text-replace">Close</a>
  
  <div class="cd-faq__overlay" aria-hidden="true"></div>
</section> <!-- cd-faq -->
  
  
  <!-- 여기까지 -->
  
  <div class="page-section">
    <div class="container"> 

        <!-- 1,2,3,4 ... 버튼 -->
             <div class="col-12 my-5">
              <nav aria-label="Page Navigation">
                <ul class="pagination justify-content-center">
                
                  <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                  </li>
                  <li class="page-item active" aria-current="page">
                  <a class="page-link" href="#">1 <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="page-item"> <a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#">Next</a>
                  </li>
                </ul>
              </nav>
            </div>
        <!-- 여기까지 -->
        
      </div> <!-- .row -->
    </div> <!-- .container -->
  </div> <!-- .page-section -->

  <div class="page-section banner-home bg-image" style="background-image: url(../assets/img/banner-pattern.svg)";>
  </div> <!-- .banner-home -->

<footer class="page-footer">
    <div class="container">
      <div class="row px-md-3">
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>Company</h5>
          <ul class="footer-menu">
            <li><a href="../VaccineRL2.jsp">약콕이란?</a></li>
            <li><a href="../VaccineRL2.jsp">Our Developers</a></li>

          </ul>
        </div>
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>Vaccine</h5>
          <ul class="footer-menu">
            <li><a href="../VaccineRL2.jsp">백신 예약/조회</a></li>
         	 <li><a href="Precaution.html">접종 전 주의사항</a></li>
            <li><a href="Precaution.html">백신 정보</a></li>
          </ul>
        </div>
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>My Page</h5>
          <ul class="footer-menu">
            <li><a href="../Mypage.jsp">내 정보</a></li>
            <li><a href="../Mypage.jsp">가족 관리</a></li>
            <li><a href="../Mypage.jsp">주소 관리</a></li>
          </ul>
        </div>
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>Contact</h5>
          <p class="footer-link mt-2">광주광역시 남구 송암로60 광주CGI센터 2층</p>
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

<script src="../assets_faq/js/util.js"></script> <!-- util functions included in the CodyHouse framework -->
<script src="../assets_faq/js/main.js"></script> 


</body>
</html>