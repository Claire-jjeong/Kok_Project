<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta http-equiv="X-UA-Compatible" content="ie=edge">

<meta name="copyright" content="MACode ID, https://macodeid.com/">

<title> ���� ȸ������ </title>


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
              <a class="nav-link" href="html/about.html">�����̶�?</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../VaccineRL2.jsp">��ſ���/��ȸ</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="html/VaccineInfo.html">�������</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Addform.jsp">����/FAQ</a>
            </li>
            <li class="nav-item">
              <a class="btn btn-primary ml-lg-3" href="html/loginForm.html">�α��� / ȸ������</a>
            </li>
          </ul>
        </div> <!-- .navbar-collapse -->
      </div> <!-- .container -->
    </nav>
  </header>

<div class="container">
<div class="card bg-light">
<article class="card-body mx-auto" style="max-width: 400px;">
	<h4 class="card-title mt-3 text-center">ȸ������</h4>
	
		<p class="divider-text">
        <span class="bg-light"></span>
    </p>

	<form action = "JoinService" method = "post" id="join_form">
	<!-- form �±׾ȿ� id="join_form"�� �ٿ��ְ�, �Ʒ� <script></script>�ȿ��� �Լ��� ���� �ߺ�Ȯ�� �Ǹ� �� �Ѿ�� �����. -->
	
    <div class="form-group input-group">
    	<div class="input-group-prepend" name="id">
		    <span class="input-group-text">���̵�<i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="user_id" class="form-control" type="text" id="input_id" required>
        
        <input type="button" value="ID�ߺ�üũ" onclick="idCheck()">
        <!-- input type="submit"�� ���ָ� �̺�Ʈ(�ߺ�Ȯ��)�� ������ ������ �ο��ص� �ҿ���� ������  -->
        <br></br>
        <span id="sp"></span>
    </div> <!-- id-group// -->
    
     <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text">��й�ȣ<i class="fa fa-lock"></i> </span>
		</div>
        <input name="user_pw" class="form-control"  type="password" id="password1" required>
    </div> <!-- form-group// -->
    
     <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text">��й�ȣ Ȯ��<i class="fa fa-lock"></i> </span>
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
		    <span class="input-group-text">�̸� <i class="fa fa-user"></i> </span>
		 </div>
        <input name="user_name" class="form-control" type="text" required>
    </div> <!-- form-group// -->
    
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span name = "birth_date" class="input-group-text">����<i class="fa fa-phone"></i> </span>
		</div>
		
    	<input name="birth_date" class="form-control"  type="text" placeholder = "�� ���̷� �ۼ����ּ���" required>
    	
    </div> <!-- form-group// -->
    
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span name = "gender" class="input-group-text">����<i class="fa fa-lock"></i> </span>
		</div>
		<select name = "gender" style = "width:84.7%" required>
			
			<option value = "M">����</option>
			<option value = "F">����</option>
			
		
		</select>
	
    </div> <!-- form-group// -->
    
    
    
<!--     <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text">�ּ�<i class="fa fa-lock"></i> </span>
		</div>
        <input name= "addr" class="form-control" type="text">
    </div> form-group// -->
    
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text">�ڵ�����ȣ<i class="fa fa-lock"></i> </span>
		</div>
        <input class="form-control" name="phone" type="text">
        </div>
        
        
   <!--  form-group//   
    <div class="form-group input-group">
    <span class="input-group-text">������ȯ <i class="fa fa-lock"></i> </span>
    	<table>
    	<tr>
    	<td>�索��</td><td><input type = "checkbox" name ="hobby" value = "Diabetes"></td>
    	</tr>
    	<tr>
    	<td>���� ������ ��ȯ</td><td><input type = "checkbox" name ="hobby" value = "chronic"></td>
    	</tr>
    	<tr>
    	<td>���� ����ȯ</td><td><input type = "checkbox" name ="hobby" value = "lungs"></td>
    	</tr>
    	<tr>
    	<td>���� ����ȯ</td><td><input type = "checkbox" name ="hobby" value = "liver"></td>
    	</tr>
    	<tr>
    	<td>�׾� ġ������ ������</td><td><input type = "checkbox" name ="hobby" value = "cancer"></td>
    	</tr>
    	<tr>
    	<td>�̽� �̿� �鿪������ ���</td><td><input type = "checkbox" name ="hobby" value = "immunosuppressant"></td>
    	</tr>
    	<tr>
    	<td>����̽�</td><td><input type = "checkbox" name ="hobby" value = "organ"></td>
    	</tr>
    	<tr>
    	<td>�������� �̽�</td><td><input type = "checkbox" name ="hobby" value = "cells"></td>
    	</tr>
    	<tr>
    	<td>������</td><td><input type = "checkbox" name ="hobby" value = "mythomania"></td>
    	</tr>
    	<tr>
    	<td>CD4<200/ul</td><td><input type = "checkbox" name ="hobby" value = "aids1"></td>
    	</tr>
    	<tr>
    	<td>CD4>200/ul</td><td><input type = "checkbox" name ="hobby" value = "aids2"></td>
    	</tr>
    	<tr>
    	<td>�ӻ��</td><td><input type = "checkbox" name ="hobby" value = "pregnant"></td>
    	</tr>
    	</table>
    </div>
            -->                            
                                       
    <div class="form-group">
        <button type="button" class="btn btn-primary btn-block" onclick="onclick0()"> ȸ������  </button>
        <!-- submit Ÿ���� �̺�Ʈ�� �ٿ��൵ �̺�Ʈ ����� �����ϰ� form�±׿��� �����޶�� ��(���⼱ JoinService)���� ����������. 
        -> button type="submit"���� �����ϸ�, �ߺ�Ȯ���� �Ǿ onclick0()�̺�Ʈ�� �߻����� �����Ƿ� button Ÿ���� ����Ѵ�.
        -->
    </div> <!-- form-group// -->  
        
    <p class="text-center">������ ������ �ֳ���? <a href="html/loginForm.html">�α���</a> </p>  
                                                               
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
<!-- script�� ��ũ��Ʈ���� �ٸ���...
��ũ��Ʈ������ �Լ��� jsp�� html�� ��������� �� ����Ǵ� ���̱� ������ idcheck�� ����,,,html�� ������� ���� �̺�Ʈ�� �Լ��� �� ���� ����. -->
    <script>
    var id0 = false; // ���� id0�� false�� �⺻������ �Ͽ� ����
    
    </script>
	<script>
		function idCheck()
		{
			var input = document.getElementById("input_id");
			$.ajax({
				type : "post",   //������ ���� ���
				data : {id : input.value}, //������ ���� ������(JSON(Ű-��))
				url : "idCheckCon",  //�����͸� ���� ����������
				dataType : "text",  //������� ������ Ÿ��
				success : function(data)
				{
					var sp = document.getElementById("sp"); // �ߺ�Ȯ���� �Ǹ� <sqan id="span"></span>�ȿ� if�� ���� �ؽ�Ʈ�� �Է�
					if(data=="true")
					{
						sp.innerHTML = "����Ҽ� ���� ID�Դϴ�";
						id0=false;
					}
					else
					{
						sp.innerHTML = "����� �� �ִ� ID�Դϴ�";
						id0=true;
					}
				},
				error : function()
				{
					alert("��Ž���!");
				}
			})
		}
		
		function onclick0() // �ߺ� Ȯ���� �� ȸ�������� �Ұ����ϰ� ����� �̺�Ʈ,,form�±׾ȿ� join_form�� ���� ���� onclick0() ��ư�� �ο������.
		{
			if(id0==true)
			{
				document.getElementById("join_form").submit();
			}
			else
			{
				alert("���̵� �ߺ�");
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