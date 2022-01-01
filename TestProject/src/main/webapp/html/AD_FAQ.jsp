<%@page import="com.smhrd.UserVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>AD/FAQ</title>

<link rel="stylesheet" href="../assets/css/maicons.css">

<link rel="stylesheet" href="../assets/css/bootstrap.css">

<link rel="stylesheet" href="../assets/vendor/owl-carousel/css/owl.carousel.css">

<link rel="stylesheet" href="../assets/vendor/animate/animate.css">

<link rel="stylesheet" href="../assets/css/theme.css">

</head>
<body>
<%
      UserVO vo = (UserVO)session.getAttribute("vo");
      %>
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
	            <li class="nav-item">
	               <a class="nav-link" href="about.jsp">�����̶�?</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../VaccineRL2.jsp">��ſ���/��ȸ</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="precaution.jsp">�������</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="faqForm.jsp">����/FAQ</a>
            </li>
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
                        out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' a href='../Mypage.jsp'>����������</a>");
                     }
                     out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' a href='../LogoutService'>�α׾ƿ�</a>");
                  }
                  

                  %>
	          </ul>
	        </div> <!-- .navbar-collapse -->
	      </div> <!-- .container -->
	    </nav>
	  </header>
	  <!-- ��� bar -->
	 
	<div class="page-banner overlay-dark bg-image" style="background-image: url(../assets/img/bg_image_1.jpg);">
    <div class="banner-section">
      <div class="container text-center wow fadeInUp">
        <nav aria-label="Breadcrumb">
          <ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-2">
            <li class="breadcrumb-item"><a href="AD_FAQ.jsp" name="Goods">Goods</a></li>
            
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
                    <a href="#" class= "category">������</a>
                  </div>
                  <a href="https://naturalize.co.kr/product/detail.html?product_no=655&cate_no=91&display_group=1" class="post-thumb">
                    <img src="../assets/img/blog/1.jpg" alt="">
                  </a>
                </div>
                <div class="body">
                  <h6 class="post-title"><a href="https://naturalize.co.kr/product/detail.html?product_no=655&cate_no=91&display_group=1">��� ��Ÿ�� ���տ�����</a></h6>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="../assets/img/blog/naturalize.png" alt="">
                        
                      </div>
                      <span>���߷�������</span>
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
                    <a href="#" class= "category">������</a>
                  </div>
                  <a href="https://naturalize.co.kr/product/detail.html?product_no=648&cate_no=91&display_group=1" class="post-thumb">
                    <img src="../assets/img/blog/2.jpg" alt="">
                  </a>
                </div>
                <div class="body">
                  <h5 class="post-title"><a href="https://naturalize.co.kr/product/detail.html?product_no=648&cate_no=91&display_group=1">����� ��ũ����</a></h5>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="../assets/img/blog/naturalize.png" alt="">
                      </div>
                      <span>���߷�������</span>
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
                    <a href="#" class= "category">������</a>
                  </div>
                  <a href="https://naturalize.co.kr/product/detail.html?product_no=647&cate_no=91&display_group=1" class="post-thumb">
                    <img src="../assets/img/blog/3.jpg" alt="">
                  </a>
                </div>
                <div class="body">
                  <h5 class="post-title"><a href="https://naturalize.co.kr/product/detail.html?product_no=647&cate_no=91&display_group=1">����� ����</a></h5>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="../assets/img/blog/naturalize.png" alt="">
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
                    <img src="../assets/img/blog/muscle.jpg" alt="">
                  </a>
                </div>
                <div class="body">
                  <h5 class="post-title"><a href="http://dr-4ten.com/product/%EB%8B%A5%ED%84%B0%ED%8F%AC%ED%85%90-%EB%A7%88%EC%82%AC%EC%A7%80%EA%B1%B4-%EB%A8%B8%EC%8A%AC-%EC%95%88%EB%A7%88%EA%B8%B0/25/category/24/display/1/">�������� �ӽ� �ȸ���</a></h5>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="../assets/img/blog/dr4ten.png" alt="">
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
                    <img src="../assets/img/blog/hand.jpg" alt="">
                  </a>
                </div>
                <div class="body">
                  <h6 class="post-title"><a href="http://dr-4ten.com/product/%EB%8B%A5%ED%84%B0%ED%8F%AC%ED%85%90-%EC%98%A8%EC%97%B4-%EC%86%90%EB%A7%88%EC%82%AC%EC%A7%80%EA%B8%B0-%EB%AC%B4%EC%84%A0-%ED%95%B8%EB%93%9C-%EC%95%88%EB%A7%88%EA%B8%B0/29/category/24/display/1/">�¿� �� �������� ���� �ڵ� �ȸ���</a></h6>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="../assets/img/blog/dr4ten.png" alt="">
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
                    <img src="../assets/img/blog/eyes.jpg" alt="">
                  </a>
                </div>
                <div class="body">
                  <h5 class="post-title"><a href="http://dr-4ten.com/product/%EB%8B%A5%ED%84%B0%ED%8F%AC%ED%85%90-%EB%88%88%EB%A7%88%EC%82%AC%EC%A7%80%EA%B8%B0-%EC%95%88%EB%A7%88%EA%B8%B0/26/category/24/display/1/">����������</a></h5>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="../assets/img/blog/dr4ten.png" alt="">
                      </div>
                      <span>��������</span>
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
                    <a href="#" class= "category">�ǰ�����</a>
                  </div>
                  <a href="https://www.samsungfire.com/product/P_P02_12_03_000.html" class="post-thumb">
                    <img src="../assets/img/blog/sam.png" alt="">
                  </a>
                </div>
                <div class="body">
                  <h5 class="post-title"><a href="https://www.samsungfire.com/product/P_P02_12_03_000.html">�Ǽ��Ƿ����</a></h5>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="../assets/img/blog/h1_logo_samsungfire.gif" alt="">
                      </div>
                      <span>�Ｚȭ��</span>
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
                    <a href="#" class= "category">�ǰ�����</a>
                  </div>
                  <a href="https://online.heungkuklife.co.kr/pcw/main/main.do" class="post-thumb">
                    <img src="../assets/img/blog/hg.png" alt="">
                  </a>
                </div>
                <div class="body">
                  <h5 class="post-title"><a href="https://online.heungkuklife.co.kr/pcw/main/main.do">�¶������⺸��</a></h5>
                  <div class="site-info">
                    <div class="avatar mr-2">
                      <div class="avatar-img">
                        <img src="../assets/img/blog/heungguk.gif" alt="">
                      </div>
                      <span>�ﱹ����</span>
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
                  <input type="text" onkeyup="filter()" id = "search" class="form-control" placeholder="ã����� ��ǰ �˻�">
                  <button type="submit" class="btn" ><span class="icon mai-search">�˻�</span></button>
                  <!-- �ڽ��� ���ϴ� ��ǰ Ű���� �˻��ϰ� ����� ������...�̰� ���� -->
                </div>
                <div class="container">

			        <div class="item">
			          <span class="name">������</span>
			        </div>
			        

			        <div class="item">
			          <span class="name">�Ƿ���</span>
			        </div>
			        
			        
			        <div class="item">
			          <span class="name">�ǰ�����</span>
			        </div>
			        </div>
              </form>
            </div>
		</div>
<script type="text/javascript">
function filter() {
	
	var search, item, city, i;
	
    search = document.getElementById("search").value.toUpperCase();
    item = document.getElementsByClassName("body");

    for (let i = 0; i < listInner.length; i++) {
      city = listInner[i].getElementsByClassName("col-sm-6 py-3");
      if (city[0].innerHTML.toUpperCase().indexOf(search) > -1 ) {
        item[i].style.display = "flex"
      } else {
        item[i].style.display = "none"
      }
    }
  }
</script>


          </div>
        </div> 
      </div> <!-- .row -->
    </div> <!-- .container -->
  </div> <!-- .page-section -->

  <div class="page-section banner-home bg-image" style="background-image: url(../assets/img/banner-pattern.svg);">
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