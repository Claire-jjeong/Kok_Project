<%@page import="java.util.Arrays"%>
<%@page import="com.smhrd.FamilyVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.memberDAO"%>
<%@page import="com.smhrd.UserVO"%>
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

<link rel="stylesheet" href="assets/css/styles_mp.css">

<link rel="stylesheet" href="assets/css/mypage.css">


</head>
<body>


	<%
		ArrayList<UserVO> vo1 = (ArrayList<UserVO>) session.getAttribute("vo1");
		UserVO vo = (UserVO)session.getAttribute("vo");
		System.out.println("vo���� Ȯ�� : "+vo.getClass().getName());
	%>
	<%
		memberDAO dao = new memberDAO();
		//select��� ȣ��
		ArrayList<UserVO> al = dao.select();
		System.out.print(al.size());
		System.out.println("al���� Ȯ�� : "+al.getClass().getName());
	%>
	<% // ������ ���̱� ���� javascript
		String userID = vo.getUser_id(); // �Ʒ� select_famView()�Լ����� ����ϱ� ���� userID����
		ArrayList<FamilyVO> fva = dao.select_famView(userID); // �α����� ������ id���������̹Ƿ� �α��� ���ǿ� ����Ǿ� �ִ� id�� �����ͼ� �����ؾ��Ѵ�
//		FamilyVO fva= dao.select_famView(userID);
		System.out.println(fva.size());
		System.out.println("select_famView(userID) �Լ��� �� ����ǰ�, fva ������ �� ������ Ȯ�� : "+fva);
		System.out.println("select_famView(userID) �Լ��� �� ����ǰ�, fva Ÿ�� Ȯ�� : "+fva.getClass().getName());
	%>
	<div class="back-to-top"></div>

	<header>  
		
    <!-- .topbar -->
	    <nav class="navbar navbar-expand-lg navbar-light shadow-sm">
	      <div class="container">
	        <a class="navbar-brand" href="VaccineRL2.jsp"><span class="text-primary">Yak</span>-Kok</a>
	
	       
	
	        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupport" aria-controls="navbarSupport" aria-expanded="false" aria-label="Toggle navigation">
	          <span class="navbar-toggler-icon"></span>
	        </button>
	
	        <div class="collapse navbar-collapse" id="navbarSupport">
	          <ul class="navbar-nav ml-auto">
	            <li class="nav-item">
	              <a class="nav-link" href="html/about.jsp">�����̶�</a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="VaccineRL2.jsp">��ſ���/��ȸ</a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="html/precaution.jsp">�������</a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="html/faqForm.jsp">����/FAQ</a>
	            </li>
	            <li class="nav-item">
	              <a class="btn btn-primary ml-lg-3" href="LogoutService">�α׾ƿ�</a>
	            </li>
	          </ul>
	        </div> <!-- .navbar-collapse -->
	      </div> <!-- .container -->
	    </nav>
	  </header>
	  <!-- ��� bar -->
	 
	<div class="page-banner overlay-dark bg-image" style="background-image: url(assets/img/bg_image_1.jpg);">
    <div class="banner-section">
      <div class="container text-center wow fadeInUp">
        <nav aria-label="Breadcrumb">
          <ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-2">
            <li class="breadcrumb-item"><a href="Update_0.jsp" name="Goods">ȸ���������� (Ŭ��)</a></li>

          </ol>
       
        </nav>
        <h1 class="font-weight-normal">My Page </h1>
      </div> <!-- .container -->
    </div> <!-- .banner-section -->
  </div> <!-- .page-banner -->
  
  <div class="page-section">
    <div class="container">

<!-- mypage -->




<div id="profilebox">
	<div id="box01" class="ProfileItem">
		<a class="profileTitle" href="" title="">MY PROFILE</a>
		
		
<%
if(vo != null){ 
	
	out.print("<div class='profileInfo'>�̸� :"+vo.getUser_name()+"</div>");
	out.print("<div class='profileInfo'>���� :"+vo.getBirth_date()+"�� </div>");
	out.print("<div class='profileInfo'>���̵� :"+vo.getUser_id()+"</div>");
}
%>

	</div>
	
	<div id="box02" class="ProfileItem">
		<a class="profileTitle" href="" title="">����ó �� �˸�</a>
		<%if(vo != null){ %> 
		<%out.print("<div class='profileInfo'>�̸��� :"+vo.getEmail()+"</div>"); %>
		<%out.print("<div class='profileInfo'>�޴���ȭ :"+vo.getPhone()+"</div>");
		} %>
	
	</div>
	
	<div id="box03" class="ProfileItem">
		<a class="profileTitle" title="">Family</a>
		<a href="searchFamily.jsp">�߰��ϱ�</a>
		<div class="profileInfo"></div>
		<tr>
			<td> �� �̸� : <% out.print(vo.getUser_name()); %></td> <br>
			<td> ����1 �̸� : <%if( !fva.isEmpty() ) {%><% out.print(fva.get(0).getFam1()); %><% }%></td> <br>
		</tr>
	</div>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<div id="box04" class="ProfileItem">
		<a class="profileTitle" href="" title="">��������</a><br>
			<input type="text" id="sample4_postcode" placeholder="�����ȣ">
			<input type="button" onclick="sample4_execDaumPostcode()" value="�����ȣ ã��"><br>
			<input type="text" id="sample4_roadAddress" placeholder="���θ��ּ�">
			<input type="text" id="sample4_jibunAddress" placeholder="�����ּ�">
			<span id="guide" style="color:#999;display:none"></span>
			<input type="text" id="sample4_detailAddress" placeholder="���ּ�">
			<input type="text" id="sample4_extraAddress" placeholder="�����׸�">
	</div>
</div>


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //�� ���������� ���θ� �ּ� ǥ�� ��Ŀ� ���� ���ɿ� ����, �������� �����͸� �����Ͽ� �ùٸ� �ּҸ� �����ϴ� ����� �����մϴ�.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

                // ���θ� �ּ��� ���� ��Ģ�� ���� �ּҸ� ǥ���Ѵ�.
                // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                var roadAddr = data.roadAddress; // ���θ� �ּ� ����
                var extraRoadAddr = ''; // ���� �׸� ����

                // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
                // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
                if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // �����׸� ���ڿ��� ���� ��� �ش� �ʵ忡 �ִ´�.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // ����ڰ� '���� ����'�� Ŭ���� ���, ���� �ּҶ�� ǥ�ø� ���ش�.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(���� ���θ� �ּ� : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(���� ���� �ּ� : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>

<!-- ������� -->

<!-- mypage ���ø� -->
<!-- 
<div id="doc" class="yui-t7">
 
  <div id="bd">
    <div id="yui-main">
      <div class="yui-b">
        <div class="yui-g">
            
            <div class="yui-u first">
              <div class="content">����
              <br> 
              <br> 
              <br> 
              <br> 
              <br> 
              <br> 
              <li> �̸� �Է� </li>
              </div>
            </div>
            <div class="yui-u">
              <div class="content">��ȭ��ȣ</div>
            </div> <br>
          </div>
          <div class="yui-g">
            <div class="yui-u first">
              <div class="content">�Է��Ͻ� ������ȯ</div>
            </div>
            <div class="yui-u">
              <div class="content">�̸���</div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
  </div>

</div>
-->
<!-- ������� -->


      </div> <!-- .row -->
    </div> <!-- .container -->
  </div> <!-- .page-section -->

  <div class="page-section banner-home bg-image" style="background-image: url(assets/img/banner-pattern.svg);">
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

<script src="assets/js/jquery-3.5.1.min.js"></script>

<script src="assets/js/bootstrap.bundle.min.js"></script>

<script src="assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>

<script src="assets/vendor/wow/wow.min.js"></script>

<script src="assets/js/theme.js"></script>
  
</body>
</html>
       