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
      ArrayList<HospitalVO> sr1 = dao.search1();/* ������ȭ��ȣ ������ö� ��� */
      ArrayList<VaccineVO> vc = dao.VaccineList();
      ArrayList<String> list = new ArrayList<String>();
      ArrayList<String> Hos  = new ArrayList<>();
   %>
   
   <% 
   	 for(int j=0;j<113;j++){ 
     	if(sr.get(j).getHos_info().indexOf("����")>-1){
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
            
               <div class="col-sm-8 text-sm">    <!-- �̰� ������ ������������ ���������� �и� -->
               
            <!-- .row -->
         </div>
         <!-- .container -->
      
      <!-- .topbar �ڸ� -->

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
                     href="html/about.html">�����̶�?</a></li>
                  
                  <li class="nav-item active"><a class="nav-link"
                     href="VaccineRL2.jsp">��ſ���/��ȸ</a></li>
                     
                  <li class="nav-item"><a class="nav-link"
                     href="html/precaution.jsp">�������</a></li>
                  
                  <li class="nav-item"><a class="nav-link"
                     href="html/AD_FAQ.html">����/FAQ</a></li>
                    
                  <%
                  if(vo == null){ //�α��� ��
                     out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' href='html/loginForm.html'>�α���/ȸ������</a></li>");
                  }else{
                     //������ �������� �α��� ���� ��� ��� ȸ������ �� �� �ֵ���
                     //�α����� ȸ���� �̸����� admin�� ��쿡�� ȸ����ü����� ���̰� 
                     //�α����� ȸ���� �̸����� �Ϲ� ȸ���� ��쿡�� ȸ������ ������ ���̰�
                     if(vo.getUser_id().equals("admin")){
                        out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' href = 'selectUser.jsp'>ȸ����ü���</a>");
                     }else{
                        out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' a href='Mypage.jsp'>����������</a>");
                     }
                     out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' a href='LogoutService'>�α׾ƿ�</a>");
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
                           out.print("<h1>�α��� ���ּ���.</h1>");
                        }else{
                           out.print("<h1>"+vo.getUser_name()+"�� ȯ���մϴ�.</h1>");
                        }
                     
                     %>
            </h1>
          </div>
      </div>
   </div>
	   <div class="page-section bg-light">
		<section class="ftco-section">
		<div class="container">
		
		<!-- �߰� by �赿�� -->
		<form action="Reserve_hos" name="Reserve" method="post">
		<!-- /�߰� -->
		
		<!-- ���⼭���� ���~īī�� �� ���� -->
			<div class="row justify-content-center">
				<div class="col-lg-6 py-3" id="menu"  style="height: 500px; overflow: auto" > <!-- ��� ����Ʈ -->
                        <section>
                           <header>
                              <h2>��� ����Ʈ</h2><br>
                           </header>
                           <ul class="dates">
                           
                           <!-- �߰� by �赿�� -->
                        
                       <% if(vo != null){
                    	  int age = vo.getBirth_date();
                           
                    	 	 if(age>=20){ %><!-- 20�� �̻� -->
                           
                           
                            <li><h4><span class="date">
                            <strong>�������</strong></span></h4>
                              <span> / 20���̻�</span>
                              <span> /�ų� 1ȸ</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onclick="location.href='VaccineRL2.jsp'">��ó����Ȯ��</button>
                                 </h3></li>
                                 
                                <li><h4><span class="date">
                              <strong>������������̷���������</strong></span></h4>
                              <span> / ����,���� ����</span>
                              <span> / �� 3ȸ</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onClick="location.href='HPV.jsp'">��ó����Ȯ��</button>
                                 </h3>
                                 
                                 <%if(age>=60){ %>
                      			<li><h4><span class="date">
                             <strong>�������</strong></span></h4>
                              <span> / �� 60�� �̻�</span>
                              <span> / 1ȸ</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onClick="location.href='HZV.jsp'">��ó����Ȯ��</button>
                                 </h3>
                      		
                      			<%}%>
                                 
                                 <%if(age<=60){ %>
                                 <li><h4><span class="date">
                               <strong>�Ļ�ǳ</strong></span></h4>
                               <span> / 20~65��</span>
                               <span> /�ų� 1ȸ</span>
                                  <h3>
                                     <button class="btn btn-primary ml-lg-3" type="button" onClick="location.href='TDap_Td.jsp'">��ó����Ȯ��</button>
                                  </h3></li> 
                                  
                                  
                                <li><h4><span class="date">
                              <strong>B������</strong></span></h4>
                              <span> / 20��~65��</span>
                              <span> / ��ü �˻� �� 3ȸ ����</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onClick="location.href='HepB.jsp'">��ó����Ȯ��</button>
                                 </h3>
                                 
                               
                              <li><h4><span class="date">
                              <strong>��ű���</strong></span></h4>
                              <span> / 20��~65��</span>
                              <span> / ���豺�� ���� 1ȸ �Ǵ� 2ȸ</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onClick="location.href='PPSV23_PCV13.jsp'">��ó����Ȯ��</button>
                                 </h3>
                                 
                              <li><h4><span class="date">
                             <strong>��������</strong></span></h4>
                              <span> / 20��~65��</span>
                              <span> / ���豺�� ���� 1ȸ~2ȸ</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onClick="location.href='MCV4.jsp'">��ó����Ȯ��</button>
                                 </h3>
                             
                             
                               <li><h4><span class="date">
                               <strong>b��������÷翣��</strong></span></h4>
                              <span> / 20��~65��</span>
                              <span> / ���豺�� ���� 1ȸ~3ȸ</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onClick="location.href='HIB.jsp'">��ó����Ȯ��</button>
                                 </h3>
                                  
                                  
                               <!-- 50����  20���̻�  -->
                              <%if(age<=50 ){ %>
                                 <li><h4><span class="date">
                           	     <strong>����</strong></span></h4>
                              	 <span> / 20��~50��</span>
                             	 <span> / ��ü�˻� �� 2ȸ ����</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onClick="location.href='Var.jsp'">��ó����Ȯ��</button>
                                 </h3>
                                
                                 
                              <li><h4><span class="date">
                              <strong>ȫ��/���༺���ϼ���(���Ÿ�)/ǳ��</strong></span></h4>
                              <span> / 20��~50��</span>
                              <span> / ���豺�� ���� 1ȸ �Ǵ� 2ȸ</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onClick="location.href='MMR.jsp'">��ó����Ȯ��</button>
                                 </h3>
                                 
                                 <%} %>
                                 
                                 <%if(age<=40 ){ %>
                                  <li><h4><span class="date">
                              <strong>A������</strong></span></h4>
                              <span> / 20��~40��</span>
                              <span> / 2ȸ</span>
                                 <h3>
                                     <button class="btn btn-primary ml-lg-3" type="button" onClick="location.href='HepA.jsp'">��ó����Ȯ��</button>
                                 </h3>
                                 
                                 <%} %>
                              <%} %>
                            <%} %>
       		 
                           <%}%> <!-- �α����� ���� �� -->

                       <%-- <%} %> --%>
                            
                             
                              
                           
                                 
                           </ul>
                        </section>
                     </div><!-- ��Ÿ���Ʈ -->
                     
                     
                     
                     <!-- īī�� map api -->
                     <div class="col-lg-6" data-wow-delay="400ms">
                        <div id="map" style="width: 800px; height: 500px;"></div>

            
                        <script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=e60e4953eacaad49c868ca0dcc884f1e"></script>
                        <script>
                        var mapContainer = document
                        .getElementById('map'), // ������ ǥ���� div 
                  mapOption = {
                     center : new kakao.maps.LatLng(
                    		 35.15152670450213, 126.86968481346322), // ������ �߽���ǥ
                     level : 3, // ������ Ȯ�� ����
                    // 35.15152670450213, 126.86968481346322  ���̿�
                     mapTypeId : kakao.maps.MapTypeId.ROADMAP
                  // ��������
                  	
                  
                  };

                  // ������ �����Ѵ� 
                  var map = new kakao.maps.Map(mapContainer,
                        mapOption);
                  
                 
                  
              	  // �Ϲ� ������ ��ī�̺�� ���� Ÿ���� ��ȯ�� �� �ִ� ����Ÿ�� ��Ʈ���� �����մϴ�
                  var mapTypeControl = new kakao.maps.MapTypeControl();

                  // ������ ��Ʈ���� �߰��ؾ� �������� ǥ�õ˴ϴ�
                  // kakao.maps.ControlPosition�� ��Ʈ���� ǥ�õ� ��ġ�� �����ϴµ� TOPRIGHT�� ������ ���� �ǹ��մϴ�
                  map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

                  // ���� Ȯ�� ��Ҹ� ������ �� �ִ�  �� ��Ʈ���� �����մϴ�
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
                  // ��Ŀ �̹����� �̹��� �ּ��Դϴ�
                  var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
                     
                  console.log(positions.length);
                  for (var i = 0; i < positions.length; i ++) {
                      
                      // ��Ŀ �̹����� �̹��� ũ�� �Դϴ�
                      var imageSize = new kakao.maps.Size(24, 35); 
                      
                      // ��Ŀ �̹����� �����մϴ�    
                      var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
                     console.log(positions[i].latlng); //��Ŀ�� ��ġ
                      // ��Ŀ�� �����մϴ�
                      var marker = new kakao.maps.Marker({
                          map: map, // ��Ŀ�� ǥ���� ����
                          position: positions[i].latlng, // ��Ŀ�� ǥ���� ��ġ
                          title : positions[i].title, // ��Ŀ�� Ÿ��Ʋ, ��Ŀ�� ���콺�� �ø��� Ÿ��Ʋ�� ǥ�õ˴ϴ�
                          image : markerImage // ��Ŀ �̹���
                          
                      }
                      );
                   
                     <% } %>
                     <%  System.out.println("�ش������� �� �������� :"+Hos.size());%>
                     <%  System.out.println("������ ù��° �̸� :"+Hos.get(0));%>
                     <%  System.out.println("ù��° �����̸� :"+sr.get(0).getHos_name());%>
                     <%  System.out.println(Hos.get(0)+" �� ��ȣ : "+sr1.get(0).getHos_phone());%>
                                                     
                     <% for(int i=0;i<Hos.size();i++){  %> 
                        H_phone[<%=i%>] = "<%=sr1.get(i).getHos_phone()%>"  
                     <% } %>
                   
                      H_title[i]=positions[i].title
                      
                      
                      marker.setMap(map);

                      <%for(int i=0;i<Hos.size();i++){%>
                 
                     // var iwContent = '<div style="padding:5px;">'+H_title[i]+'<br><a style="color:black" target="_blank">TEL: '+H_phone[i]+' </a> </div><a href="#" style="color:blue" target="_blank">�����ϱ�</a>'
                      var iwContent = '<div style="padding:5px;" id="RH_0">'+H_title[i]+'<br><a style="color:black" target="_blank">TEL: '+H_phone[i]+' </a>  <br><input type="radio" name="RH" value="document.getElementByID("RH_0").innerText">�ش纴������ </div>' 
                     
                      
                      // ���������쿡 ǥ��� �������� HTML ���ڿ��̳� document element�� �����մϴ�
                          iwPosition = new kakao.maps.LatLng(<%=sr1.get(i).getLatitude()%>,<%=sr1.get(i).getLongitude()%>); //���������� ǥ�� ��ġ�Դϴ�
                         
                          
                      <%}%>
                      
                      // ���������츦 �����մϴ�
                      var infowindow = new kakao.maps.InfoWindow({
                          position : iwPosition, 
                          content : iwContent
                      });
                        
                      // ��Ŀ ���� ���������츦 ǥ���մϴ�. �ι�° �Ķ������ marker�� �־����� ������ ���� ���� ǥ�õ˴ϴ�
                      infowindow.open(map, marker); 
                  }
                 
                /*  document.write(H_phone.length) */
                  
                    </script>
                  </div> <!-- / īī����api -->
			   </div> <!-- ��������� ���~īī�� �� -->
			
			<!-- �߰� by �赿�� -->
			<br>
			<br>
			<!-- <div align ="center"><input type="submit" class="btn btn-primary ml-lg-3" value="�ش纴�� �����ϱ�"></div> -->
			</form> <!-- ���+�� ������ ���� -->
			
			<!-- /�߰� -->
		</div>
	</section>
</div>

   <div class="bg-light">
      <div class="page-section py-3 mt-md-n5 custom-index">
         <div class="container">
            <div class="row justify-content-center">
               <div style="color: orange"><h4>�������� ��ſ��� �� ������ ������ �� �����Ƿ� ��ȭ �� �����Ͻñ� �ٶ��ϴ�.</h4></div>
            </div>
         </div>
      </div>
    </div>



   <!-- ���� �ڸ� ������. -->




   <div class="page-section bg-light">
      <div class="container">
         <h1 class="text-center wow fadeInUp">STORE</h1>
         <div class="row mt-5">
		<div class="col-sm-6 py-3">
              <div class="card-blog">
                <div class="header">
                  <div class="post-category">
                    <a href="#" class= "category">������</a>
                  </div>
                  <a href="https://naturalize.co.kr/product/detail.html?product_no=647&cate_no=91&display_group=1" class="post-thumb">
                    <img src="./assets/img/blog/3.jpg" alt="">
                  </a>
                </div>
                <div class="body">
                  <h5 class="post-title"><a href="https://naturalize.co.kr/product/detail.html?product_no=647&cate_no=91&display_group=1">����� ����</a></h5>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="./assets/img/blog/naturalize.png" alt="">
                      </div>
                      <span>���߷�������</span>
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
                    <a href="#" class= "category">�Ƿ���</a>
                  </div>
                  <a href="http://dr-4ten.com/product/%EB%8B%A5%ED%84%B0%ED%8F%AC%ED%85%90-%EB%A7%88%EC%82%AC%EC%A7%80%EA%B1%B4-%EB%A8%B8%EC%8A%AC-%EC%95%88%EB%A7%88%EA%B8%B0/25/category/24/display/1/" class="post-thumb">
                    <img src="./assets/img/blog/muscle.jpg" alt="">
                  </a>
                </div>
                <div class="body">
                  <h5 class="post-title"><a href="http://dr-4ten.com/product/%EB%8B%A5%ED%84%B0%ED%8F%AC%ED%85%90-%EB%A7%88%EC%82%AC%EC%A7%80%EA%B1%B4-%EB%A8%B8%EC%8A%AC-%EC%95%88%EB%A7%88%EA%B8%B0/25/category/24/display/1/">�������� �ӽ� �ȸ���</a></h5>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="./assets/img/blog/dr4ten.png" alt="">
                      </div>
                      <span>��������</span>
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
                    <a href="#" class= "category">�Ƿ���</a>
                  </div>
                  <a href="http://dr-4ten.com/product/%EB%8B%A5%ED%84%B0%ED%8F%AC%ED%85%90-%EC%98%A8%EC%97%B4-%EC%86%90%EB%A7%88%EC%82%AC%EC%A7%80%EA%B8%B0-%EB%AC%B4%EC%84%A0-%ED%95%B8%EB%93%9C-%EC%95%88%EB%A7%88%EA%B8%B0/29/category/24/display/1/" class="post-thumb">
                    <img src="./assets/img/blog/hand.jpg" alt="">
                  </a>
                </div>
                <div class="body">
                  <h6 class="post-title"><a href="http://dr-4ten.com/product/%EB%8B%A5%ED%84%B0%ED%8F%AC%ED%85%90-%EC%98%A8%EC%97%B4-%EC%86%90%EB%A7%88%EC%82%AC%EC%A7%80%EA%B8%B0-%EB%AC%B4%EC%84%A0-%ED%95%B8%EB%93%9C-%EC%95%88%EB%A7%88%EA%B8%B0/29/category/24/display/1/">�¿� �� �������� ���� �ڵ� �ȸ���</a></h6>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="./assets/img/blog/dr4ten.png" alt="">
                      </div>
                      <span>��������</span>
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
                    <a href="#" class= "category">�Ƿ���</a>
                  </div>
                  <a href="http://dr-4ten.com/product/%EB%8B%A5%ED%84%B0%ED%8F%AC%ED%85%90-%EB%88%88%EB%A7%88%EC%82%AC%EC%A7%80%EA%B8%B0-%EC%95%88%EB%A7%88%EA%B8%B0/26/category/24/display/1/" class="post-thumb">
                    <img src="./assets/img/blog/eyes.jpg" alt="">
                  </a>
                </div>
                <div class="body">
                  <h5 class="post-title"><a href="http://dr-4ten.com/product/%EB%8B%A5%ED%84%B0%ED%8F%AC%ED%85%90-%EB%88%88%EB%A7%88%EC%82%AC%EC%A7%80%EA%B8%B0-%EC%95%88%EB%A7%88%EA%B8%B0/26/category/24/display/1/">����������</a></h5>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="./assets/img/blog/dr4ten.png" alt="">
                      </div>
                      <span>��������</span>
                    </div>
                    <span class="mai-time"></span> 1 month ago
                  </div>
                </div>
              </div>
            </div>

            <div class="col-12 text-center mt-4 wow zoomIn">
               <a href="html/AD_FAQ.html" class="btn btn-primary">Store ������</a>
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
               <h1 class="font-weight-normal mb-3">����Ͽ����� ������ ����������.</h1>
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
            $('#(���̵��)').css('display', 'block');
        }
        
        $.ajax({
           type : 'get',
           url : 'Hr_search',
           data : here,
           dataType : 'text',
           success : function(data){
              alert("������ ����");
           },
           error : function(){
              alert("������ ����");
           }
        })
    }  */
</script>



</body>
</html>