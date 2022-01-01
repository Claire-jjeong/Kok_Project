<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta http-equiv="X-UA-Compatible" content="ie=edge">

<meta name="copyright" content="MACode ID, https://macodeid.com/">

<title> 약콕 회원가입 </title>


<link rel="stylesheet" href="assets/css/maicons.css">

<link rel="stylesheet" href="assets/css/bootstrap.css">

<link rel="stylesheet" href="assets/vendor/owl-carousel/css/owl.carousel.css">

<link rel="stylesheet" href="assets/vendor/animate/animate.css">

<link rel="stylesheet" href="assets/css/theme.css">
<link rel="stylesheet" href="assets/css/login.css">
  
</head>
<body>

  <!-- Back to top button -->
  <div class="back-to-top"></div>

  <header>


    <nav class="navbar navbar-expand-lg navbar-light shadow-sm">
      <div class="container">
        <a class="navbar-brand" href="../VaccineRL2.jsp"><span class="text-primary">YAK</span>-KoK</a>

        <form action="#">
 
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
              <a class="nav-link" href="../VaccineRL2.jsp">백신예약/조회</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="html/VaccineInfo.html">백신정보</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Addform.jsp">광고/FAQ</a>
            </li>
            <li class="nav-item">
              <a class="btn btn-primary ml-lg-3" href="html/loginForm.html">로그인 / 회원가입</a>
            </li>
          </ul>
        </div> <!-- .navbar-collapse -->
      </div> <!-- .container -->
    </nav>
  </header>

<div class="container">
<div class="card bg-light">
<article class="card-body mx-auto" style="max-width: 400px;">
	<h4 class="card-title mt-3 text-center">회원가입</h4>
	
		<p class="divider-text">
        <span class="bg-light"></span>
    </p>

	<form action = "JoinService" method = "post" id="join_form">
	<!-- form 태그안에 id="join_form"을 붙여주고, 아래 <script></script>안에서 함수로 만들어서 중복확인 되면 안 넘어가게 만든다. -->
	
    <div class="form-group input-group">
    	<div class="input-group-prepend" name="id">
		    <span class="input-group-text">아이디<i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="user_id" class="form-control" type="text" id="input_id" required>
        
        <input type="button" value="ID중복체크" onclick="idCheck()">
        <!-- input type="submit"을 써주면 이벤트(중복확인)에 따르는 조건을 부여해도 소용없기 때문에  -->
        <br></br>
        <span id="sp"></span>
    </div> <!-- id-group// -->
    
     <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text">비밀번호<i class="fa fa-lock"></i> </span>
		</div>
        <input name="user_pw" class="form-control"  type="password" id="password1" required>
    </div> <!-- form-group// -->
    
     <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text">비밀번호 확인<i class="fa fa-lock"></i> </span>
		</div>
        <input name="user_pw" class="form-control"  type="password" id="password2" required>
    </div> <!-- form-group// -->
    
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text">E-Mail <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="email" class="form-control"  type="email" required>
    </div> <!-- form-group// -->
    
    <div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text">이름 <i class="fa fa-user"></i> </span>
		 </div>
        <input name="user_name" class="form-control" type="text" required>
    </div> <!-- form-group// -->
    
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span name = "birth_date" class="input-group-text">나이<i class="fa fa-phone"></i> </span>
		</div>
		
    	<input name="birth_date" class="form-control"  type="text" placeholder = "만 나이로 작성해주세요" required>
    	
    </div> <!-- form-group// -->
    
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span name = "gender" class="input-group-text">성별<i class="fa fa-lock"></i> </span>
		</div>
		<select name = "gender" style = "width:84.7%" required>
			
			<option value = "M">남자</option>
			<option value = "F">영자</option>
			
		
		</select>
	
    </div> <!-- form-group// -->
    
    
    
<!--     <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text">주소<i class="fa fa-lock"></i> </span>
		</div>
        <input name= "addr" class="form-control" type="text">
    </div> form-group// -->
    
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text">핸드폰번호<i class="fa fa-lock"></i> </span>
		</div>
        <input class="form-control" name="phone" type="text">
        </div>
        
        
   <!--  form-group//   
    <div class="form-group input-group">
    <span class="input-group-text">기저질환 <i class="fa fa-lock"></i> </span>
    	<table>
    	<tr>
    	<td>당뇨병</td><td><input type = "checkbox" name ="hobby" value = "Diabetes"></td>
    	</tr>
    	<tr>
    	<td>만성 심혈관 질환</td><td><input type = "checkbox" name ="hobby" value = "chronic"></td>
    	</tr>
    	<tr>
    	<td>만성 폐질환</td><td><input type = "checkbox" name ="hobby" value = "lungs"></td>
    	</tr>
    	<tr>
    	<td>만성 간질환</td><td><input type = "checkbox" name ="hobby" value = "liver"></td>
    	</tr>
    	<tr>
    	<td>항암 치료중인 고형암</td><td><input type = "checkbox" name ="hobby" value = "cancer"></td>
    	</tr>
    	<tr>
    	<td>이식 이외 면역억제제 사용</td><td><input type = "checkbox" name ="hobby" value = "immunosuppressant"></td>
    	</tr>
    	<tr>
    	<td>장기이식</td><td><input type = "checkbox" name ="hobby" value = "organ"></td>
    	</tr>
    	<tr>
    	<td>조혈모세포 이식</td><td><input type = "checkbox" name ="hobby" value = "cells"></td>
    	</tr>
    	<tr>
    	<td>무비증</td><td><input type = "checkbox" name ="hobby" value = "mythomania"></td>
    	</tr>
    	<tr>
    	<td>CD4<200/ul</td><td><input type = "checkbox" name ="hobby" value = "aids1"></td>
    	</tr>
    	<tr>
    	<td>CD4>200/ul</td><td><input type = "checkbox" name ="hobby" value = "aids2"></td>
    	</tr>
    	<tr>
    	<td>임산부</td><td><input type = "checkbox" name ="hobby" value = "pregnant"></td>
    	</tr>
    	</table>
    </div>
            -->                            
                                       
    <div class="form-group">
        <button type="button" class="btn btn-primary btn-block" onclick="onclick0()"> 회원가입  </button>
        <!-- submit 타입은 이벤트를 붙여줘도 이벤트 기능을 무시하고 form태그에서 보내달라는 곳(여기선 JoinService)으로 보내버린다. 
        -> button type="submit"으로 지정하면, 중복확인이 되어도 onclick0()이벤트가 발생하지 않으므로 button 타입을 사용한다.
        -->
    </div> <!-- form-group// -->  
        
    <p class="text-center">계정을 가지고 있나요? <a href="html/loginForm.html">로그인</a> </p>  
                                                               
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
  
  
<!-- Scripts -->
<!-- script와 스크립트릿의 다른점...
스크립트릿안의 함수는 jsp의 html이 만들어지기 전 연산되는 것이기 때문에 idcheck와 같은,,,html이 만들어진 뒤의 이벤트는 함수로 쓸 수가 없다. -->
    <script>
    var id0 = false; // 변수 id0를 false를 기본값으로 하여 선언
    
    </script>
	<script>
		function idCheck()
		{
			var input = document.getElementById("input_id");
			$.ajax({
				type : "post",   //데이터 전송 방식
				data : {id : input.value}, //서버에 보낼 데이터(JSON(키-값))
				url : "idCheckCon",  //데이터를 보낼 서버페이지
				dataType : "text",  //응답받을 데이터 타입
				success : function(data)
				{
					var sp = document.getElementById("sp"); // 중복확인이 되면 <sqan id="span"></span>안에 if문 안의 텍스트가 입력
					if(data=="true")
					{
						sp.innerHTML = "사용할수 없는 ID입니다";
						id0=false;
					}
					else
					{
						sp.innerHTML = "사용할 수 있는 ID입니다";
						id0=true;
					}
				},
				error : function()
				{
					alert("통신실패!");
				}
			})
		}
		
		function onclick0() // 중복 확인할 시 회원가입이 불가능하게 만드는 이벤트,,form태그안에 join_form을 먼저 쓰고 onclick0() 버튼을 부여해줬다.
		{
			if(id0==true)
			{
				document.getElementById("join_form").submit();
			}
			else
			{
				alert("아이디 중복");
			}
		}
	</script>

<script src="assets/js/jquery-3.5.1.min.js"></script>

<script src="assets/js/bootstrap.bundle.min.js"></script>

<script src="assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>

<script src="assets/vendor/wow/wow.min.js"></script>

<script src="assets/js/google-maps.js"></script>

<script src="assets/js/theme.js"></script>


</body>
</html>