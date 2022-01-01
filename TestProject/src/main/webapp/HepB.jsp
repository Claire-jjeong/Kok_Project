<%@page import="com.DAO.memberDAO"%>
<%@page import="com.smhrd.HospitalVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.UserVO"%>
<%@page import="com.smhrd.VaccineVO"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta http-equiv="X-UA-Compatible" content="ie=edge">

<meta name="copyright" content="MACode ID, https://macodeid.com/">

<title>One Health - Medical Center HTML5 Template</title>

<link rel="stylesheet" href="./assets/css/maicons.css">

<link rel="stylesheet" href="./assets/css/bootstrap.css">

<link rel="stylesheet" href="./assets/vendor/owl-carousel/css/owl.carousel.css">

<link rel="stylesheet" href="./assets/vendor/animate/animate.css">

<link rel="stylesheet" href="./assets/css/theme.css">
</head>
<body>
   
   <%
      memberDAO dao = new memberDAO();
      UserVO vo = (UserVO)session.getAttribute("vo");
      
      ArrayList<HospitalVO> sr = dao.search();
      ArrayList<HospitalVO> sr1 = dao.search1();/* 병원전화번호 가지고올때 사용 */
      ArrayList<VaccineVO> vc = dao.VaccineList();
      ArrayList<String> list = new ArrayList<String>();
      ArrayList<String> Hos  = new ArrayList<>();
   %>
   
   <% 
   	 for(int j=0;j<113;j++){ 
     	if(sr.get(j).getHos_info().indexOf("B형 간염")>-1){
   	 	Hos.add(sr.get(j).getHos_name());
     	}  
     } 
   %>
   
   <%
     System.out.println("=======================================");
   %> 
   
   <!-- Back to top button -->
   <div class="back-to-top"></div>
   

   <header>
            
               <div class="col-sm-8 text-sm">    <!-- 이게 있으면 마이페이지가 오른쪽으로 밀림 -->
               
            <!-- .row -->
         </div>
         <!-- .container -->
      
      <!-- .topbar 자리 -->

      <nav class="navbar navbar-expand-lg navbar-light shadow-sm">
         <div class="container">
            <a class="navbar-brand" href="VaccineRL2.jsp"><span class="text-primary">Yak</span>-Kok</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse"
               data-target="#navbarSupport" aria-controls="navbarSupport"
               aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupport">
               <ul class="navbar-nav ml-auto">
               
                  <li class="nav-item"><a class="nav-link"
                     href="html/about.html">약콕이란?</a></li>
                  
                  <li class="nav-item active"><a class="nav-link"
                     href="VaccineRL2.jsp">백신예약/조회</a></li>
                     
                  <li class="nav-item"><a class="nav-link"
                     href="html/precaution.jsp">백신정보</a></li>
                  
                  <li class="nav-item"><a class="nav-link"
                     href="html/AD_FAQ.html">광고/FAQ</a></li>
                    
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
                        out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' a href='Mypage.jsp'>마이페이지</a>");
                     }
                     out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' a href='LogoutService'>로그아웃</a>");
                  }
                  

                  %>
                  
                  
               </ul>
            </div>
            <!-- .navbar-collapse -->
         </div>
         <!-- .container -->
      </nav>
   </header>

   <div class="page-hero bg-image overlay-dark"
      style="background-image: url(./assets/img/bg_image_1.jpg);">
      <div class="hero-section">
         <div class="container text-center">
            <span class="subhead">Let's make your life happier</span>
            <h1 class="display-4">
               Welcome to <span class="text-primary">Yak</span>-Kok
               <%
                        if(vo == null){
                           out.print("<h1>로그인 해주세요.</h1>");
                        }else{
                           out.print("<h1>"+vo.getUser_name()+"님 환영합니다.</h1>");
                        }
                     
                     %>
            </h1>
          </div>
      </div>
   </div>
	   <div class="page-section bg-light">
		<section class="ftco-section">
		<div class="container">
		
		<!-- 추가 by 김동휘 -->
		<form action="Reserve_hos" name="Reserve" method="post">
		<!-- /추가 -->
		
		<!-- 여기서부터 백신~카카오 맵 포함 -->
			<div class="row justify-content-center">
				<div class="col-lg-6 py-3" id="menu"  style="height: 500px; overflow: auto" > <!-- 백신 리스트 -->
                        <section>
                           <header>
                              <h2>백신 리스트</h2><br>
                           </header>
                           <ul class="dates">
                           
                           <!-- 추가 by 김동휘 -->
                        
                       <% if(vo != null){
                    	  int age = vo.getBirth_date();
                           
                    	 	 if(age>=20){ %><!-- 20세 이상 -->
                           
                           
                            <li><h4><span class="date">
                            <strong>독감백신</strong></span></h4>
                              <span> / 20세이상</span>
                              <span> /매년 1회</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onclick="location.href='VaccineRL2.jsp'">근처병원확인</button>
                                 </h3></li>
                                 
                                <li><h4><span class="date">
                              <strong>사람유두종바이러스감염증</strong></span></h4>
                              <span> / 성별,연령 무관</span>
                              <span> / 총 3회</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onClick="location.href='HPV.jsp'">근처병원확인</button>
                                 </h3>
                                 
                                 <%if(age>=60){ %>
                      			<li><h4><span class="date">
                             <strong>대상포진</strong></span></h4>
                              <span> / 만 60세 이상</span>
                              <span> / 1회</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onClick="location.href='HZV.jsp'">근처병원확인</button>
                                 </h3>
                      		
                      			<%}%>
                                 
                                 <%if(age<=60){ %>
                                 <li><h4><span class="date">
                               <strong>파상풍</strong></span></h4>
                               <span> / 20~65세</span>
                               <span> /매년 1회</span>
                                  <h3>
                                     <button class="btn btn-primary ml-lg-3" type="button" onClick="location.href='TDap_Td.jsp'">근처병원확인</button>
                                  </h3></li> 
                                  
                                  
                                <li><h4><span class="date">
                              <strong>B형간염</strong></span></h4>
                              <span> / 20세~65세</span>
                              <span> / 항체 검사 후 3회 접종</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onClick="location.href='HepB.jsp'">근처병원확인</button>
                                 </h3>
                                 
                               
                              <li><h4><span class="date">
                              <strong>폐렴구균</strong></span></h4>
                              <span> / 20세~65세</span>
                              <span> / 위험군에 대해 1회 또는 2회</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onClick="location.href='PPSV23_PCV13.jsp'">근처병원확인</button>
                                 </h3>
                                 
                              <li><h4><span class="date">
                             <strong>수막구균</strong></span></h4>
                              <span> / 20세~65세</span>
                              <span> / 위험군에 대해 1회~2회</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onClick="location.href='MCV4.jsp'">근처병원확인</button>
                                 </h3>
                             
                             
                               <li><h4><span class="date">
                               <strong>b형헤모스인플루엔자</strong></span></h4>
                              <span> / 20세~65세</span>
                              <span> / 위험군에 대해 1회~3회</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onClick="location.href='HIB.jsp'">근처병원확인</button>
                                 </h3>
                                  
                                  
                               <!-- 50이하  20세이상  -->
                              <%if(age<=50 ){ %>
                                 <li><h4><span class="date">
                           	     <strong>수두</strong></span></h4>
                              	 <span> / 20세~50세</span>
                             	 <span> / 항체검사 후 2회 접종</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onClick="location.href='Var.jsp'">근처병원확인</button>
                                 </h3>
                                
                                 
                              <li><h4><span class="date">
                              <strong>홍역/유행성이하선염(볼거리)/풍진</strong></span></h4>
                              <span> / 20세~50세</span>
                              <span> / 위험군에 대해 1회 또는 2회</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onClick="location.href='MMR.jsp'">근처병원확인</button>
                                 </h3>
                                 
                                 <%} %>
                                 
                                 <%if(age<=40 ){ %>
                                  <li><h4><span class="date">
                              <strong>A형간염</strong></span></h4>
                              <span> / 20세~40세</span>
                              <span> / 2회</span>
                                 <h3>
                                     <button class="btn btn-primary ml-lg-3" type="button" onClick="location.href='HepA.jsp'">근처병원확인</button>
                                 </h3>
                                 
                                 <%} %>
                              <%} %>
                            <%} %>
       		 
                           <%}%> <!-- 로그인이 됐을 때 -->

                       <%-- <%} %> --%>
                            
                             
                              
                           
                                 
                           </ul>
                        </section>
                     </div><!-- 백신리스트 -->
                     
                     
                     
                     <!-- 카카오 map api -->
                     <div class="col-lg-6" data-wow-delay="400ms">
                        <div id="map" style="width: 800px; height: 500px;"></div>

            
                        <script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=e60e4953eacaad49c868ca0dcc884f1e"></script>
                        <script>
                        var mapContainer = document
                        .getElementById('map'), // 지도를 표시할 div 
                  mapOption = {
                     center : new kakao.maps.LatLng(
                    		 35.15152670450213, 126.86968481346322), // 지도의 중심좌표
                     level : 3, // 지도의 확대 레벨
                    // 35.15152670450213, 126.86968481346322  쌍촌역
                     mapTypeId : kakao.maps.MapTypeId.ROADMAP
                  // 지도종류
                  	
                  
                  };

                  // 지도를 생성한다 
                  var map = new kakao.maps.Map(mapContainer,
                        mapOption);
                  
                 
                  
              	  // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
                  var mapTypeControl = new kakao.maps.MapTypeControl();

                  // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
                  // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
                  map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

                  // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
                  var zoomControl = new kakao.maps.ZoomControl();
                  map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
                    
                  
                   var positions = new Array();
                   var H_title = new Array();
                   var H_phone = new Array();
                   var disease = new Array();
                   
                   
                  
                  
                  <% for(int j=0;j<Hos.size();j++){ %>
                    disease[<%=j%>] = '<%=Hos.get(j)%>'
                  <% } %> 
                     
                   
                   <% for(int i=0;i<Hos.size();i++){  %> 
                       positions[<%=i%>] = {
                         title:  disease[<%=i%>],
                         latlng: new kakao.maps.LatLng(<%=sr.get(i).getLatitude()%>, <%=sr.get(i).getLongitude()%>)
                      };  
                   <% } %>
                   
                  <%if(vo !=null){%>            
                  // 마커 이미지의 이미지 주소입니다
                  var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
                     
                  console.log(positions.length);
                  for (var i = 0; i < positions.length; i ++) {
                      
                      // 마커 이미지의 이미지 크기 입니다
                      var imageSize = new kakao.maps.Size(24, 35); 
                      
                      // 마커 이미지를 생성합니다    
                      var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
                     console.log(positions[i].latlng); //마커의 위치
                      // 마커를 생성합니다
                      var marker = new kakao.maps.Marker({
                          map: map, // 마커를 표시할 지도
                          position: positions[i].latlng, // 마커를 표시할 위치
                          title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
                          image : markerImage // 마커 이미지
                          
                      }
                      );
                   
                     <% } %>
                     <%  System.out.println("해당질병이 들어간 병원개수 :"+Hos.size());%>
                     <%  System.out.println("병원의 첫번째 이름 :"+Hos.get(0));%>
                     <%  System.out.println("첫번째 병원이름 :"+sr.get(0).getHos_name());%>
                     <%  System.out.println(Hos.get(0)+" 의 번호 : "+sr1.get(0).getHos_phone());%>
                                                     
                     <% for(int i=0;i<Hos.size();i++){  %> 
                        H_phone[<%=i%>] = "<%=sr1.get(i).getHos_phone()%>"  
                     <% } %>
                   
                      H_title[i]=positions[i].title
                      
                      
                      marker.setMap(map);

                      <%for(int i=0;i<Hos.size();i++){%>
                 
                     // var iwContent = '<div style="padding:5px;">'+H_title[i]+'<br><a style="color:black" target="_blank">TEL: '+H_phone[i]+' </a> </div><a href="#" style="color:blue" target="_blank">예약하기</a>'
                      var iwContent = '<div style="padding:5px;" id="RH_0">'+H_title[i]+'<br><a style="color:black" target="_blank">TEL: '+H_phone[i]+' </a>  <br><input type="radio" name="RH" value="document.getElementByID("RH_0").innerText">해당병원선택 </div>' 
                     
                      
                      // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
                          iwPosition = new kakao.maps.LatLng(<%=sr1.get(i).getLatitude()%>,<%=sr1.get(i).getLongitude()%>); //인포윈도우 표시 위치입니다
                         
                          
                      <%}%>
                      
                      // 인포윈도우를 생성합니다
                      var infowindow = new kakao.maps.InfoWindow({
                          position : iwPosition, 
                          content : iwContent
                      });
                        
                      // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
                      infowindow.open(map, marker); 
                  }
                 
                /*  document.write(H_phone.length) */
                  
                    </script>
                  </div> <!-- / 카카오맵api -->
			   </div> <!-- 여기까지가 백신~카카오 맵 -->
			
			<!-- 추가 by 김동휘 -->
			<br>
			<br>
			<!-- <div align ="center"><input type="submit" class="btn btn-primary ml-lg-3" value="해당병원 예약하기"></div> -->
			</form> <!-- 백신+맵 데이터 전송 -->
			
			<!-- /추가 -->
		</div>
	</section>
</div>

   <div class="bg-light">
      <div class="page-section py-3 mt-md-n5 custom-index">
         <div class="container">
            <div class="row justify-content-center">
               <div style="color: orange"><h4>병원마다 백신여부 및 가격이 상이할 수 있으므로 통화 후 예약하시기 바랍니다.</h4></div>
            </div>
         </div>
      </div>
    </div>



   <!-- 예약 자리 넣을곳. -->




   <div class="page-section bg-light">
      <div class="container">
         <h1 class="text-center wow fadeInUp">STORE</h1>
         <div class="row mt-5">
		<div class="col-sm-6 py-3">
              <div class="card-blog">
                <div class="header">
                  <div class="post-category">
                    <a href="#" class= "category">영양제</a>
                  </div>
                  <a href="https://naturalize.co.kr/product/detail.html?product_no=647&cate_no=91&display_group=1" class="post-thumb">
                    <img src="./assets/img/blog/3.jpg" alt="">
                  </a>
                </div>
                <div class="body">
                  <h5 class="post-title"><a href="https://naturalize.co.kr/product/detail.html?product_no=647&cate_no=91&display_group=1">유기농 엽산</a></h5>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="./assets/img/blog/naturalize.png" alt="">
                      </div>
                      <span>네추럴라이즈</span>
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
                    <a href="#" class= "category">의료기기</a>
                  </div>
                  <a href="http://dr-4ten.com/product/%EB%8B%A5%ED%84%B0%ED%8F%AC%ED%85%90-%EB%A7%88%EC%82%AC%EC%A7%80%EA%B1%B4-%EB%A8%B8%EC%8A%AC-%EC%95%88%EB%A7%88%EA%B8%B0/25/category/24/display/1/" class="post-thumb">
                    <img src="./assets/img/blog/muscle.jpg" alt="">
                  </a>
                </div>
                <div class="body">
                  <h5 class="post-title"><a href="http://dr-4ten.com/product/%EB%8B%A5%ED%84%B0%ED%8F%AC%ED%85%90-%EB%A7%88%EC%82%AC%EC%A7%80%EA%B1%B4-%EB%A8%B8%EC%8A%AC-%EC%95%88%EB%A7%88%EA%B8%B0/25/category/24/display/1/">마사지건 머슬 안마기</a></h5>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="./assets/img/blog/dr4ten.png" alt="">
                      </div>
                      <span>닥터포텐</span>
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
                    <a href="#" class= "category">의료기기</a>
                  </div>
                  <a href="http://dr-4ten.com/product/%EB%8B%A5%ED%84%B0%ED%8F%AC%ED%85%90-%EC%98%A8%EC%97%B4-%EC%86%90%EB%A7%88%EC%82%AC%EC%A7%80%EA%B8%B0-%EB%AC%B4%EC%84%A0-%ED%95%B8%EB%93%9C-%EC%95%88%EB%A7%88%EA%B8%B0/29/category/24/display/1/" class="post-thumb">
                    <img src="./assets/img/blog/hand.jpg" alt="">
                  </a>
                </div>
                <div class="body">
                  <h6 class="post-title"><a href="http://dr-4ten.com/product/%EB%8B%A5%ED%84%B0%ED%8F%AC%ED%85%90-%EC%98%A8%EC%97%B4-%EC%86%90%EB%A7%88%EC%82%AC%EC%A7%80%EA%B8%B0-%EB%AC%B4%EC%84%A0-%ED%95%B8%EB%93%9C-%EC%95%88%EB%A7%88%EA%B8%B0/29/category/24/display/1/">온열 손 마사지기 무선 핸드 안마기</a></h6>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="./assets/img/blog/dr4ten.png" alt="">
                      </div>
                      <span>닥터포텐</span>
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
                    <a href="#" class= "category">의료기기</a>
                  </div>
                  <a href="http://dr-4ten.com/product/%EB%8B%A5%ED%84%B0%ED%8F%AC%ED%85%90-%EB%88%88%EB%A7%88%EC%82%AC%EC%A7%80%EA%B8%B0-%EC%95%88%EB%A7%88%EA%B8%B0/26/category/24/display/1/" class="post-thumb">
                    <img src="./assets/img/blog/eyes.jpg" alt="">
                  </a>
                </div>
                <div class="body">
                  <h5 class="post-title"><a href="http://dr-4ten.com/product/%EB%8B%A5%ED%84%B0%ED%8F%AC%ED%85%90-%EB%88%88%EB%A7%88%EC%82%AC%EC%A7%80%EA%B8%B0-%EC%95%88%EB%A7%88%EA%B8%B0/26/category/24/display/1/">눈마사지기</a></h5>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="./assets/img/blog/dr4ten.png" alt="">
                      </div>
                      <span>닥터포텐</span>
                    </div>
                    <span class="mai-time"></span> 1 month ago
                  </div>
                </div>
              </div>
            </div>

            <div class="col-12 text-center mt-4 wow zoomIn">
               <a href="html/AD_FAQ.html" class="btn btn-primary">Store 더보기</a>
            </div>

         </div>
      </div>
   </div>
   <!-- .page-section -->

   
   <!-- .page-section -->

   <div class="page-section banner-home bg-image"
      style="background-image: url(./assets/img/banner-pattern.svg);">
      <div class="container py-5 py-lg-0">
         <div class="row align-items-center">
            <div class="col-lg-4 wow zoomIn">
               <div class="img-banner d-none d-lg-block">
                  <img src="./assets/img/mobile_app.png" alt="">
               </div>
            </div>
            <div class="col-lg-8 wow fadeInRight">
               <h1 class="font-weight-normal mb-3">모바일에서도 약콕을 만나보세요.</h1>
               <a href="#"><img src="./assets/img/google_play.svg" alt=""></a>
               <a href="#" class="ml-2"><img src="./assets/img/app_store.svg"
                  alt=""></a>
            </div>
         </div>
      </div>
   </div>
   <!-- .banner-home -->

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
                  <li><a href="#">Terms / Condition</a></li>
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
               <p class="footer-link mt-2">351 Willow Street Franklin, MA
                  02038</p>
               <a href="#" class="footer-link">701-573-7582</a> <a href="#"
                  class="footer-link">healthcare@temporary.net</a>

               <h5 class="mt-3">Social Media</h5>
               <div class="footer-sosmed mt-3">
                  <a href="#" target="_blank"><span class="mai-logo-facebook-f"></span></a>
                  <a href="#" target="_blank"><span class="mai-logo-twitter"></span></a>
                  <a href="#" target="_blank"><span
                     class="mai-logo-google-plus-g"></span></a> <a href="#"
                     target="_blank"><span class="mai-logo-instagram"></span></a> <a
                     href="#" target="_blank"><span class="mai-logo-linkedin"></span></a>
               </div>
            </div>
         </div>

         <hr>

         <p id="copyright">
            Copyright &copy; 2020 <a href="https://macodeid.com/"
               target="_blank">MACode ID</a>. All right reserved
         </p>
      </div>
   </footer>

   <script src="assets/js/jquery-3.5.1.min.js"></script>

   <script src="assets/js/bootstrap.bundle.min.js"></script>

   <script src="assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>

   <script src="assets/vendor/wow/wow.min.js"></script>

   <script src="assets/js/theme.js"></script>

   <script>
  
   		
 /*        var here = document.getElementById('here').value;
       console.log("here ", here);
       
    function test() {
       
        if ($('#menu').css('display') == 'block') {
           $('#menu').css('display' , 'none')
            $('#menu1').css('display', 'block');
        } else {
            $('#(아이디명)').css('display', 'block');
        }
        
        $.ajax({
           type : 'get',
           url : 'Hr_search',
           data : here,
           dataType : 'text',
           success : function(data){
              alert("보내기 성공");
           },
           error : function(){
              alert("보내기 실패");
           }
        })
    }  */
</script>



</body>
</html>