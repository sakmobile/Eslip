<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	

<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>/assets/login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>/assets/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>/assets/login/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>/assets/login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>/assets/login/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>/assets/login/css/util.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>/assets/login/css/main.css?v=24">
	<link rel="stylesheet" href="<?php echo base_url()?>assets/plugins/toastr/toastr.min.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
	
		<div class="container-login100">
		
			<div class="wrap-login100">
			<span class="logintt-form-title">
			<img src="<?php echo base_url() ?>/assets/images/logo.png" alt="" class="rounded mx-auto d-block w-25 p-3">
			ระบบพิมพ์สลิปเงินเดือนโรงพยาบาลภูสิงห์
					</span>
				<div class="login100-pic js-tilt" data-tilt>
					<img src="<?php echo base_url()?>/assets/login/images/img-01.png" alt="IMG">
				</div>
				
				<form  class="login100-form validate-form" action="<?php echo base_url() ?>Login/check_login" method="post">
				 
					<span class="login100-form-title">
						เข้าสู่ระบบ
					</span>

					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="user" id="user" placeholder="เลขประจำตัวประชาชน"  required tabIndex="1" autofocus >
						<span class="focus-input100"></span>
						<span class="symbol-input100">
                        <i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="pass" id="pass" placeholder="รหัสผ่าน" required tabIndex="2" autofocus>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button type="submit" class="login100-form-btn btn-login" required tabIndex="3" >
							Login
						</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">
							Forgot
						</span>
						<a class="txt2" href="#">
							Username / Password?
						</a>
					</div>

					<div class="text-center p-t-50">
						<a class="txt2" href="#">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<script src="<?php echo base_url()?>assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript">
$(document).on('keypress', 'input', function (e) {
    if (e.which == 13) {
        e.preventDefault();
        var $next = $('[tabIndex=' + (+this.tabIndex + 1) + ']');
        console.log($next.length);
        if (!$next.length) {
       $next = $('[tabIndex=1]');        }
        $next.focus() .click();
    }
});
// $(document).ready(function () {

// $('.btn-login').click(function(){
// 	var user = $('#user').val();
// 	var pass = $('#pass').val();
// 	console.log(user);
// 	console.log(pass);
// 	var url = '<?php echo base_url()?>';
// 	if(!check(user)){
// 		toastr["warning"]("รหัสประชาชนไม่ถูกต้อง");
// 	}
//    else {
// 	   if(pass != ""){
		
// 	}else{
// 		toastr["warning"]("กรุณากรอกรหัสผ่าน");
// 	}
//    }

	
// })
// function check(user){
// 	if(user.length != 13) return false;
// 	for(i=0, sum=0; i < 12; i++)
//     sum += parseFloat(user.charAt(i))*(13-i); if((11-sum%11)%10!=parseFloat(user.charAt(12))) return false; return true;
// }


//});



</script>
<script src="<?php echo base_url()?>assets/plugins/toastr/toastr.min.js"></script>
<!--===============================================================================================-->	
	<script src="<?php echo base_url()?>/assets/login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="<?php echo base_url()?>/assets/login/vendor/bootstrap/js/popper.js"></script>
	<script src="<?php echo base_url()?>/assets/login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="<?php echo base_url()?>/assets/login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="<?php echo base_url()?>/assets/login/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="<?php echo base_url()?>/assets/login/js/main.js"></script>
	<?php
                                    if(isset($error)){
                                        echo $error;
                                    }
                                    
                                    ?>

</body>
</html>