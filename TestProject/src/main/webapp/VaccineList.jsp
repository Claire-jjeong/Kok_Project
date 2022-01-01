
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
      
      ArrayList<VaccineVO> vc = dao.VaccineList();
      
      ArrayList<String> list = new ArrayList<String>();
      
      //  System.out.print(sr.size());  ���� ����
      // System.out.print(sr.get(1).getLatitude()); �ι�° ������ ������
      %>
   
      <!-- '��Ÿ�'�� ������ �����ִ��� Ȯ��/(.equals)
         ������� ����Ʈ�� �߰�
         
       -->
       
       
       <!-- ���� = (vc.get(0).getVac_disease())) -->
       
       
       <%sr.get(0).getHos_info().contains(vc.get(0).getVac_disease()); // 0��° �ִº����� ������ �ִ�! %>
       
        
        <% 
        
         String hos_view = null;
          int num = 0;
          
        System.out.println("=======================================");
        
        for(int i=0;i<vc.size();i++){
          for(int j=0;j<sr.size();j++){
             /* System.out.println(sr.get(j).getHos_name()+":"+sr.get(j).getHos_info().contains(vc.get(i).getVac_disease())); */
         
             if(sr.get(j).getHos_info().indexOf(vc.get(i).getVac_disease())>-1){
               hos_view = sr.get(j).getHos_name();
               System.out.println(vc.get(i).getVac_disease()+": "+hos_view);
               num++; 
                   
              }
             
           }
          }
        
        
        
       /*  for(int j=0; j<vc.size(); j++){
        for(int i=0; i<sr.size(); i++){
         if(sr.get(i).getHos_name.contains(vc.get(j).getVac_disease())=true){
              System.out.print(sr.get(i).getHos_name(i));
              
        }}} */
            
        
        /* for (int i = 0; i<vc.size(); i++){//ȸ���� ����ŭ �ݺ�
               
               vc.get(i).getVac_disease()
               } */
                     %>
       
   <%-- <%for(int i =0; i<) %>
   
   
    <% for(int i=0;i<5;i++){  %> 
                         positions[<%=i%>] = {
                           title:  '<%=sr.get(i).getHos_name()%>',
                           latlng: new kakao.maps.LatLng(<%=sr.get(i).getLatitude()%>, <%=sr.get(i).getLongitude()%>)
                        };  
                     
                     <% } %>  --%>
   
   
      <!-- vc.get(j).getVac_disease -->
   
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
                     href="html/VaccineInfo.html">�������</a></li>
                  
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
         <div class="container text-center wow zoomIn">
            <span class="subhead">Let's make your life happier</span>
            <h1 class="display-4">
               Welcome to <span class="text-primary">Yak</span>-Kok
               <%
                        if(vo == null){
                           out.print("<h1>�α��� �� ���Ǿ��̵� ������ּ���</h1>");
                        }else{
                           out.print("<h1>"+vo.getUser_name()+"�� ȯ���մϴ�.</h1>");
                        }
                     
                     %>
            </h1>
            <a href="#" class="btn btn-primary">Let's Consult</a>
         </div>
      </div>
   </div>


   <div class="bg-light">
      <div class="page-section py-3 mt-md-n5 custom-index">
         <div class="container">
            <div class="row justify-content-center">
               <div class="col-md-4 py-3 py-md-0">
                  <div class="card-service wow fadeInUp">
                     <div class="circle-shape bg-primary text-white">
                        <span class="mai-shield-checkmark"></span>
                     </div><a class="nav-link"
                     href="VaccineRL.html"><p>��� ����</p></a>
                     
                  </div>
               </div>
               <div class="col-md-4 py-3 py-md-0">
                  <div class="card-service wow fadeInUp">
                     <div class="circle-shape bg-accent text-white">
                        <span class="mai-basket"></span>
                     </div>
                     <a class="nav-link"
                     href="FindPH.html"><p>�౹,����ã��</p></a>
                  </div>
               </div>
               <div class="col-md-4 py-3 py-md-0" >
                  <div class="card-service wow fadeInUp" >
                     <div class="circle-shape bg-secondary text-white" >
                        <span class="mai-chatbubbles-outline" ></span>
                     </div>
                     <a class="nav-link"
                     href="AD_FAQ.html"><p>FAQ</p></a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- .page-section -->

      <!-- �ι�° ���� -->

      <div class="page-section" ">
         <div class="container">
            <h1 class="text-center wow fadeInUp"></h1>

            <form class="contact-form mt-5">
               <div class="container">
                  <div class="row align-items-center">
                     
                        
                        <%if(vo != null){ %>
                        <div class="col-lg-6 py-3 wow fadeInUp" id="menu"  style="height: 500px; overflow: auto" >
                        <section>
                           <header>
                              <h2>��� ����Ʈ</h2><br>
                           </header>
                           <ul class="dates">
                              
                              <li><span class="date"><h4><strong>����</strong></h4></span>
                              <span> / 20~65���̻�</span>
                              <span> /�ų� 1ȸ</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onclick="test()">�����ϱ�</button>
                                 </h3>
                                 
                                                               
                              <li><span class="date"><h4><strong>�Ļ�ǳ</strong></h4></span>
                              <span> / 20~65���̻�</span>
                              <span> / 1ȸ ���� �� 10�⸶�� 1ȸ</span>
                             
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onclick="test()">�����ϱ�</button>
                                 </h3>
                                 
                                 
                              <li><span class="date"><h4><strong>A������</strong></h4></span>
                              <span> / 20��~40��</span>
                              <span> / 2ȸ</span>
                                 <h3>
                                     <button class="btn btn-primary ml-lg-3" type="button" onclick="test()">�����ϱ�</button>
                                 </h3>

                              
                              <li><span class="date"><h4><strong>B������</strong></h4></span>
                              <span> / 20��~65���̻�</span>
                              <span> / ��ü �˻� �� 3ȸ ����</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onclick="test()">�����ϱ�</button>
                                 </h3>
                                 
                              
                               
                              <li><span class="date"><h4><strong>��ű���</strong></h4></span>
                              <span> / 20��~65���̻�</span>
                              <span> / ���豺�� ���� 1ȸ �Ǵ� 2ȸ</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onclick="test()">�����ϱ�</button>
                                 </h3>
                                 
                                 
                              <li><span class="date"><h4><strong>����</strong></h4></span>
                              <span> / 20��~50��</span>
                              <span> / ��ü�˻� �� 2ȸ ����</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onclick="test()">�����ϱ�</button>
                                 </h3>
                                 
                                 
                              <li><span class="date"><h4><strong>ȫ��/���༺���ϼ���(���Ÿ�)/ǳ��</strong></h4></span>
                              <span> / 20��~50��</span>
                              <span> / ���豺�� ���� 1ȸ �Ǵ� 2ȸ</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onclick="test()">�����ϱ�</button>
                                 </h3>
                             
                             
                              <li><span class="date"><h4><strong>������������̷���������</strong></h4></span>
                              <span> / 25��~26�� ����, ������ ���� ����</span>
                              <span> / �� 3ȸ</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onclick="test()">�����ϱ�</button>
                                 </h3>
                             
                             
                             
                             <li><span class="date"><h4><strong>�������</strong></h4></span>
                              <span> / �� 60�� �̻�</span>
                              <span> / 1ȸ</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onclick="test()">�����ϱ�</button>
                                 </h3>
                                 
                                 
                             <li><span class="date"><h4><strong>��������</strong></h4></span>
                              <span> / 20��~65���̻�</span>
                              <span> / ���豺�� ���� 1ȸ~2ȸ</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onclick="test()">�����ϱ�</button>
                                 </h3>
                             
                             
                               <li><span class="date"><h4><strong>b��������÷翣��</strong></h4></span>
                              <span> / 20��~65���̻�</span>
                              <span> / ���豺�� ���� 1ȸ~3ȸ</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onclick="test()">�����ϱ�</button>
                                 </h3>
                           </ul>
                        </section>
                     </div>
                     <%}else{ %>
                           <div class="col-lg-6 py-3 wow fadeInUp" id="menu"  style="height: 500px; overflow: auto" >
                           <%} %>
                           
                           
                           <div class="col-lg-6 py-3 wow fadeInUp" id="menu"  style="height: 500px; overflow: auto" >
                        <section>
                           <header>
                              <h2>���� ���!</h2><br>
                           </header>
                           <ul class="links">
                           
                           <%for(int i=0;i<108;i++){ %>
                           
                              <li><span class="date"><h4><strong><%=sr.get(i).getHos_name() %></strong></h4></span>
                              <span><%=sr.get(i).getHos_name() %></span>
                                 <h3>
                                    <a href="#menu1">��ġȮ��</a>
                                 </h3>
                           <%} %>
                            
                              </ul> 
                        </section>
                     </div>



                    <section>       
    		        <!-- īī��api -->
	                   <div class="col-lg-6 wow fadeInRight" data-wow-delay="400ms">
                        <div id="map" style="width: 1200px; height: 500px;"></div>

            
                        <script
                           src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=e60e4953eacaad49c868ca0dcc884f1e"></script>
                        <script>
                        var mapContainer = document
                        .getElementById('map'), // ������ ǥ���� div 
                  mapOption = {
                     center : new kakao.maps.LatLng(
                           35.151980098317935, 126.88980055854985), // ������ �߽���ǥ (�� ����û)
                     level : 6, // ������ Ȯ�� ����
                     mapTypeId : kakao.maps.MapTypeId.ROADMAP
                  // ��������
                  };

                  // ������ �����Ѵ� 
                  var map = new kakao.maps.Map(mapContainer,
                        mapOption);
                  
                     /* { title: '�ٸ�����', latlng: new kakao.maps.LatLng(35.118446, 126.866408) }*/
                                 
                  // var positions[] = new var[sr.size()];
                  
                     
                     
                     
                    /*  var positions = [
                               {
                                   title: '������ �����ܰ�', latlng: new kakao.maps.LatLng(35.145855, 126.857507)
                               },
                               
                               {
                                   title: '���� �Ｚ����', 
                                   latlng: new kakao.maps.LatLng(35.171491, 126.866726)
                               },
                               
                               {
                                   title: '�ÿ�����', 
                                   latlng: new kakao.maps.LatLng(35.152658, 126.848934)
                               }
                           ]; */
                           
                      
                   var positions = new Array();
                      

                   <% System.out.println("������ : "+sr.size()); %>
                   
                     <% for(int i=0;i<5;i++){  %> 
                         positions[<%=i%>] = {
                           title:  '<%=sr.get(i).getHos_name()%>',
                           latlng: new kakao.maps.LatLng(<%=sr.get(i).getLatitude()%>, <%=sr.get(i).getLongitude()%>)
                        };  
                         
                           <% } %>
                     
                  // ��Ŀ �̹����� �̹��� �ּ��Դϴ�
                  var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
                     
                  console.log(positions.length);
                  for (var i = 0; i < positions.length; i ++) {
                      
                      // ��Ŀ �̹����� �̹��� ũ�� �Դϴ�
                      var imageSize = new kakao.maps.Size(24, 35); 
                      
                      // ��Ŀ �̹����� �����մϴ�    
                      var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
                     console.log("for������");
                      console.log(positions[i].latlng);
                      // ��Ŀ�� �����մϴ�
                      var marker = new kakao.maps.Marker({
                          map: map, // ��Ŀ�� ǥ���� ����
                          position: positions[i].latlng, // ��Ŀ�� ǥ���� ��ġ
                          title : positions[i].title, // ��Ŀ�� Ÿ��Ʋ, ��Ŀ�� ���콺�� �ø��� Ÿ��Ʋ�� ǥ�õ˴ϴ�
                          image : markerImage // ��Ŀ �̹��� 
                      
                     
                          
                      });
                      
                      marker.setMap(map);

                      var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">ū��������</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">��ã��</a></div>', // ���������쿡 ǥ��� �������� HTML ���ڿ��̳� document element�� �����մϴ�
                          iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //���������� ǥ�� ��ġ�Դϴ�
                    
                      // ���������츦 �����մϴ�
                      var infowindow = new kakao.maps.InfoWindow({
                          position : iwPosition, 
                          content : iwContent 
                      });
                        
                      // ��Ŀ ���� ���������츦 ǥ���մϴ�. �ι�° �Ķ������ marker�� �־����� ������ ���� ���� ǥ�õ˴ϴ�
                      infowindow.open(map, marker); 
                  }
                  
                        </script>
					</div>
                    </section>
                <div class="page-section">
       			  <div class="container">
        		    <h1 class="text-center wow fadeInUp"></h1>

        			    <form class="contact-form mt-5">
         			      <div class="container">
           				       <div class="row align-items-center">
                     
                        
                        
                        
                        <div class="col-lg-6 py-3 wow fadeInUp" id="menu"  style="height: 500px; overflow: auto" >
                        <section>
                           <header>
                              <h2>��� ����Ʈ</h2><br>
                           </header>
                           <ul class="dates">
                              
                              <li><span class="date"><h4><strong>����</strong></h4></span>
                              <span> / 20~65���̻�</span>
                              <span> /�ų� 1ȸ</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onclick="test()">�����ϱ�</button>
                                 </h3>
                                 
                                                               
                              <li><span class="date"><h4><strong>�Ļ�ǳ</strong></h4></span>
                              <span> / 20~65���̻�</span>
                              <span> / 1ȸ ���� �� 10�⸶�� 1ȸ</span>
                             
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onclick="test()">�����ϱ�</button>
                                 </h3>
                                 
                                 
                              <li><span class="date"><h4><strong>A������</strong></h4></span>
                              <span> / 20��~40��</span>
                              <span> / 2ȸ</span>
                                 <h3>
                                     <button class="btn btn-primary ml-lg-3" type="button" onclick="test()">�����ϱ�</button>
                                 </h3>

                              
                              <li><span class="date"><h4><strong>B������</strong></h4></span>
                              <span> / 20��~65���̻�</span>
                              <span> / ��ü �˻� �� 3ȸ ����</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onclick="test()">�����ϱ�</button>
                                 </h3>
                                 
                              
                               
                              <li><span class="date"><h4><strong>��ű���</strong></h4></span>
                              <span> / 20��~65���̻�</span>
                              <span> / ���豺�� ���� 1ȸ �Ǵ� 2ȸ</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onclick="test()">�����ϱ�</button>
                                 </h3>
                                 
                                 
                              <li><span class="date"><h4><strong>����</strong></h4></span>
                              <span> / 20��~50��</span>
                              <span> / ��ü�˻� �� 2ȸ ����</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onclick="test()">�����ϱ�</button>
                                 </h3>
                                 
                                 
                              <li><span class="date"><h4><strong>ȫ��/���༺���ϼ���(���Ÿ�)/ǳ��</strong></h4></span>
                              <span> / 20��~50��</span>
                              <span> / ���豺�� ���� 1ȸ �Ǵ� 2ȸ</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onclick="test()">�����ϱ�</button>
                                 </h3>
                             
                             
                              <li><span class="date"><h4><strong>������������̷���������</strong></h4></span>
                              <span> / 25��~26�� ����, ������ ���� ����</span>
                              <span> / �� 3ȸ</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onclick="test()">�����ϱ�</button>
                                 </h3>
                             
                             
                             
                             <li><span class="date"><h4><strong>�������</strong></h4></span>
                              <span> / �� 60�� �̻�</span>
                              <span> / 1ȸ</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onclick="test()">�����ϱ�</button>
                                 </h3>
                                 
                                 
                             <li><span class="date"><h4><strong>��������</strong></h4></span>
                              <span> / 20��~65���̻�</span>
                              <span> / ���豺�� ���� 1ȸ~2ȸ</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onclick="test()">�����ϱ�</button>
                                 </h3>
                             
                             
                               <li><span class="date"><h4><strong>b��������÷翣��</strong></h4></span>
                              <span> / 20��~65���̻�</span>
                              <span> / ���豺�� ���� 1ȸ~3ȸ</span>
                                 <h3>
                                    <button class="btn btn-primary ml-lg-3" type="button" onclick="test()">�����ϱ�</button>
                                 </h3>
                           </ul>
                        </section>
                     </div>
                     
                     
                     <div class="col-lg-6 py-3 wow fadeInUp" id="menu1" style="height: 500px; overflow: auto; display:none" >

                        <section>
                        <div>
                           <header>
                              <h2>���� ���!</h2><br>
                           </header>
                           <ul class="links">
                              <li><span class="date"><h4><strong>�������Ǽ�</strong></h4></span>
                              <span> / �ּ�~             ~</span>
                                 <h3>
                                    <a href="#menu1">�����ϱ�</a>
                                 </h3>
                                 
                              <li><span class="date"><h4><strong>���ֺ���</strong></h4></span>
                              <span> / �ּ��ּ��ּ��ּ��ּ��ּ�</span>
                              <span> / ����Ȱ�</span>
                              <span> / 15000��</span>
                                 <h3>
                                    <a href="#">�����ϱ�</a>
                                 </h3>
                                 <p>���� ��Ȳ: 0ȸ</p></li>
                                 
                              <li><span class="date"><h4><strong>B������</strong></h4></span>
                              <span> / 20��</span>
                              <span> / ���츮����</span>
                              <span> / 3000��</span>
                                 <h3>
                                    <a href="#">�����ϱ�</a>
                                 </h3>
                                 <p>���� ��Ȳ: 0ȸ</p></li>
                              </ul>
                              </div>                        
                        </section>
                        
                     </div>
                     <div class="col-lg-6 wow fadeInRight" data-wow-delay="400ms">
                        <div id="map" style="width: 1200px; height: 500px;"></div>

            <!-- īī��api -->
            
                        <script
                           src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=e60e4953eacaad49c868ca0dcc884f1e"></script>
                        <script>
                        var mapContainer = document
                        .getElementById('map'), // ������ ǥ���� div 
                  mapOption = {
                     center : new kakao.maps.LatLng(
                           35.151980098317935, 126.88980055854985), // ������ �߽���ǥ
                     level : 4, // ������ Ȯ�� ����
                     mapTypeId : kakao.maps.MapTypeId.ROADMAP
                  // ��������
                  };

                  // ������ �����Ѵ� 
                  var map = new kakao.maps.Map(mapContainer,
                        mapOption);
                  
                     /* { title: '�ٸ�����', latlng: new kakao.maps.LatLng(35.118446, 126.866408) }*/
                                 
                  // var positions[] = new var[sr.size()];
                  
                     
                     
                     
                    /*  var positions = [
                               {
                                   title: '������ �����ܰ�', latlng: new kakao.maps.LatLng(35.145855, 126.857507)
                               },
                               
                               {
                                   title: '���� �Ｚ����', 
                                   latlng: new kakao.maps.LatLng(35.171491, 126.866726)
                               },
                               
                               {
                                   title: '�ÿ�����', 
                                   latlng: new kakao.maps.LatLng(35.152658, 126.848934)
                               }
                           ]; */
                           
                      
                   var positions = new Array();
                      

                   <% System.out.println("������ : "+sr.size()); %>
                   
                     <% for(int i=0;i<5;i++){  %> 
                         positions[<%=i%>] = {
                           title:  '<%=sr.get(i).getHos_name()%>',
                           latlng: new kakao.maps.LatLng(<%=sr.get(i).getLatitude()%>, <%=sr.get(i).getLongitude()%>)
                        };  
                         
                           <% } %>
                     
                  // ��Ŀ �̹����� �̹��� �ּ��Դϴ�
                  var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
                     
                  console.log(positions.length);
                  for (var i = 0; i < positions.length; i ++) {
                      
                      // ��Ŀ �̹����� �̹��� ũ�� �Դϴ�
                      var imageSize = new kakao.maps.Size(24, 35); 
                      
                      // ��Ŀ �̹����� �����մϴ�    
                      var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
                     console.log("for������");
                      console.log(positions[i].latlng);
                      // ��Ŀ�� �����մϴ�
                      var marker = new kakao.maps.Marker({
                          map: map, // ��Ŀ�� ǥ���� ����
                          position: positions[i].latlng, // ��Ŀ�� ǥ���� ��ġ
                          title : positions[i].title, // ��Ŀ�� Ÿ��Ʋ, ��Ŀ�� ���콺�� �ø��� Ÿ��Ʋ�� ǥ�õ˴ϴ�
                          image : markerImage // ��Ŀ �̹��� 
                      
                     
                          
                      });
                      
                      marker.setMap(map);

                      var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">ū��������</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">��ã��</a></div>', // ���������쿡 ǥ��� �������� HTML ���ڿ��̳� document element�� �����մϴ�
                          iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //���������� ǥ�� ��ġ�Դϴ�
                    
                      // ���������츦 �����մϴ�
                      var infowindow = new kakao.maps.InfoWindow({
                          position : iwPosition, 
                          content : iwContent 
                      });
                        
                      // ��Ŀ ���� ���������츦 ǥ���մϴ�. �ι�° �Ķ������ marker�� �־����� ������ ���� ���� ǥ�õ˴ϴ�
                      infowindow.open(map, marker); 
                  }
                  
                        </script>
</div>
                     </div>
                  </div>
               </form>
               </div>
            
         </div>
      </div>


      <div class="page-section pb-0">
         <div class="container">
            <div class="row align-items-center">
               <div class="col-lg-6 py-3 wow fadeInUp">
                  <h1>
                     Welcome to Your Health <br> Center
                  </h1>
                  <p class="text-grey mb-4">Lorem ipsum dolor sit amet,
                     consetetur sadipscing elitr, sed diam nonumy eirmod tempor
                     invidunt ut labore et dolore magna aliquyam erat, sed diam
                     voluptua. At vero eos et accusam et justo duo dolores et ea
                     rebum. Accusantium aperiam earum ipsa eius, inventore nemo labore
                     eaque porro consequatur ex aspernatur. Explicabo, excepturi
                     accusantium! Placeat voluptates esse ut optio facilis!</p>
                  <a href="about.html" class="btn btn-primary">Learn More</a>
               </div>



            </div>

            <div class="page-section banner-home bg-image"
               style="background-image: url(../assets/img/banner-pattern.svg);">
               <div class="container py-5 py-lg-0">
                  <div class="row align-items-center">
                     <div class="col-lg-4 wow zoomIn"></div>
                  </div>
               </div>
            </div>
            <!-- .banner-home -->
         </div>
      </div>



   <!-- ���� �ڸ� ������. -->




   <div class="page-section bg-light">
      <div class="container">
         <h1 class="text-center wow fadeInUp">SHOP</h1>
         <div class="row mt-5">
            <div class="col-lg-4 py-2 wow zoomIn">
               <div class="card-blog">
                  <div class="header">
                     <div class="post-category">
                        <a href="#">������</a>
                     </div>
                     <a href="blog-details.html" class="post-thumb"> <img
                        src="../assets/img/blog/blog_1.jpg" alt="">
                     </a>
                  </div>
                  <div class="body">
                     <h5 class="post-title">
                        <a href="blog-details.html">List of Countries without
                           Coronavirus case</a>
                     </h5>
                     <div class="site-info">
                        <div class="avatar mr-2">
                           <div class="avatar-img">
                              <img src="../assets/img/person/person_1.jpg" alt="">
                           </div>
                           <span>Roger Adams</span>
                        </div>
                        <span class="mai-time"></span> 1 week ago
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-lg-4 py-2 wow zoomIn">
               <div class="card-blog">
                  <div class="header">
                     <div class="post-category">
                        <a href="#">�ｺ�������</a>
                     </div>
                     <a href="blog-details.html" class="post-thumb"> <img
                        src="../assets/img/blog/blog_2.jpg" alt="">
                     </a>
                  </div>
                  <div class="body">
                     <h5 class="post-title">
                        <a href="blog-details.html">Recovery Room: News beyond the
                           pandemic</a>
                     </h5>
                     <div class="site-info">
                        <div class="avatar mr-2">
                           <div class="avatar-img">
                              <img src="../assets/img/person/person_1.jpg" alt="">
                           </div>
                           <span>Roger Adams</span>
                        </div>
                        <span class="mai-time"></span> 4 weeks ago
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-lg-4 py-2 wow zoomIn">
               <div class="card-blog">
                  <div class="header">
                     <div class="post-category">
                        <a href="#">�ǰ�����</a>
                     </div>
                     <a href="blog-details.html" class="post-thumb"> <img
                        src="../assets/img/blog/blog_3.jpg" alt="">
                     </a>
                  </div>
                  <div class="body">
                     <h5 class="post-title">
                        <a href="blog-details.html">What is the impact of eating too
                           much sugar?</a>
                     </h5>
                     <div class="site-info">
                        <div class="avatar mr-2">
                           <div class="avatar-img">
                              <img src="../assets/img/person/person_2.jpg" alt="">
                           </div>
                           <span>Diego Simmons</span>
                        </div>
                        <span class="mai-time"></span> 2 months ago
                     </div>
                  </div>
               </div>
            </div>

            <div class="col-12 text-center mt-4 wow zoomIn">
               <a href="blog.html" class="btn btn-primary">Read More</a>
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
               <h1 class="font-weight-normal mb-3">����� ������ �ٿ��������!</h1>
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
     /*   var here = document.getElementById('here').value;
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
    } */
</script>



</body>
</html>