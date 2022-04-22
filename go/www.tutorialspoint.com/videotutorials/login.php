<!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7" lang="en-US" prefix="og: http://ogp.me/ns#">
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8" lang="en-US" prefix="og: http://ogp.me/ns#">
<![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html lang="en-US" prefix="og: http://ogp.me/ns#">
<head>
<meta charset="utf-8">
<title>Tutorialspoint - Premium Online Video Courses</title>      
<meta name="Description" content="Premium Online Video Courses"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<script src="https://www.tutorialspoint.com/videotutorials/js/fontawesome.js?v=1.792"></script>
<link rel="stylesheet" href="https://www.tutorialspoint.com/videotutorials/css/login-register.min.css" />
<link rel="stylesheet" href="https://www.tutorialspoint.com/videotutorials/css/vd.css" />
<link rel="stylesheet" href="https://www.tutorialspoint.com/videotutorials/css/custom.css" />
<script src="https://www.google.com/recaptcha/api.js?render=6LfxXKUUAAAAAMqQTDGX62mrrHGZ7HasGVdhvf9h"></script>
<script>
   var emailPattern =  /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
   var phonePattern = /^[0-9]{10}$/;
   var numberPattern = /^\d*$/;
   var baseurl = 'https://www.tutorialspoint.com/videotutorials';
   var videobaseurl = 'https://www.tutorialspoint.com/videotutorials';
   var profile_baseurl = 'https://www.tutorialspoint.com/videotutorials';
   var videoapiurl = 'https://www.tutorialspoint.com/videotutorials';
   var videos_image_url = 'https://www.tutorialspoint.com/videotutorials/assets/videos/courses';
   var var_auth = '';
</script>
<script src="https://www.tutorialspoint.com/videotutorials/js/jquery.js"></script> 
<script src="https://www.tutorialspoint.com/videotutorials/js/videos_login.js?v=2.19"></script>
<script>    
    $(document).ready(function () {
        $('#divSignup').hide();
        $('#divSignup-2').hide();
        $('#divSignup-3').hide();
        $('#divForgot').hide();
        $('#forgotOTPForm').hide();
        $('#forgotOTPSubmit').hide();
        $('#spanSignUp').click(function () {
            $("#divLogin input,textarea,select").each(function () {
                $(this).css('border-color', '#ccc');
                //$(this).next().html('');
            });
            $("#divSignup input,textarea,select").each(function () {
                $(this).css('border-color', '#ccc');
                //$(this).next().html('');
            });
            $(this).addClass('signup_active');
            $('#spanSignIn, #spanForgot').removeClass('signup_active');
            $('#divSignup').show();
            $('#divLogin').hide();
            $('#divForgot').hide();
            $('#forgotOTPForm').hide();
            $('#forgotOTPSubmit').hide();
            $('#forgotOTPAlertPwd').val('');
            $('#errDivLogin').val('');
            $('#errDivRegister').val('');
            $('#errDivForgot').val('');
            $('#forgotOTP').val('');
            $('#forgotOTPAlert').val('');
				
        });
        $('#spanSignIn').click(function () {
            $("#divLogin input,textarea,select").each(function () {
                $(this).css('border-color', '#ccc');
                //$(this).next().html('');
            });
            $("#divSignup input,textarea,select").each(function () {
                $(this).css('border-color', '#ccc');
                //$(this).next().html('');
            });
            $(this).addClass('signup_active');
            $('#spanSignUp, #spanForgot').removeClass('signup_active');
            $('#divLogin').show();
            $('#divSignup').hide();
            $('#divForgot').hide();
            $('#forgotOTPForm').hide();
            $('#forgotOTPSubmit').hide();
				$('#forgotOTPAlertPwd').val('');
				$('#errDivLogin').val('');
				$('#errDivRegister').val('');
				$('#errDivForgot').val('');
            $('#forgotOTP').val('');
            $('#forgotOTPAlert').val('');
        });
        $('#spanForgot').click(function () {
            $("#divLogin input,textarea,select").each(function () {
                $(this).css('border-color', '#ccc');
               // $(this).next().html('');
            });
            $("#divSignup input,textarea,select").each(function () {
                $(this).css('border-color', '#ccc');
               // $(this).next().html('');
            });
            $(this).addClass('signup_active');
            $('#spanSignIn, #spanSignUp').removeClass('signup_active');
            $('#divForgot').show();
            $('#divLogin').hide();
            $('#divSignup').hide();
            $('#forgotOTPForm').hide();
            $('#forgotOTPSubmit').hide();
				$('#forgotOTPAlertPwd').val('');
				$('#errDivLogin').val('');
				$('#errDivRegister').val('');
				$('#errDivForgot').val('');
            $('#forgotOTP').val('');
            $('#forgotOTPAlert').val('');
        });
    });
</script>
<style>.mb-0,.my-0{margin-bottom:15px!important;}body.vertical-layout.vertical-menu.menu-expanded .content {margin-left: 0px;}</style>
</head>
<body class="vertical-layout vertical-menu 1-column   menu-expanded blank-page blank-page  pace-done" data-open="click" data-menu="vertical-menu" data-menu="vertical-menu">

<div class="app-content content">
	<div class="content-wrapper login-bg">
		<div class="content-body">
			<section class="">
				<div class="col-12 d-flex align-items-center justify-content-center">
				  <div class="col-md-4 col-10 box-shadow-2 login-wrap">
						<div class="card border-grey border-lighten-3 m-0 ">
							<div class="card-header border-0">
								<div class="card-title text-center">
									<div class="p-1">
										<a href="index.php" title="videotutorials"><img src="https://www.tutorialspoint.com/videotutorials/images/logo-login.png" alt="branding logo" /></a>
										<a href="index.php" class="txt-rgh"><i class="fa fa-times"></i></a>
									</div>
								</div>
							</div>							 
							 
							<div class="card-content">
							  <div class="card-body login-box">
							  
									<!-- login box -->
									<div class="form-horizontal form-simple" id="divLogin">
										<fieldset class="form-group position-relative has-icon-left mb-0">
											<input type="text" class="txtClass form-control form-control-lg input-lg" placeholder="Enter Email Id" id="textRegEmail" required>
											<div class="error"></div>
											<div class="form-control-position"><i class="fa fa-user svg-icon-placeholder"></i></div>											  
										</fieldset>
										<fieldset class="form-group position-relative has-icon-left">
											<input type="password" value="" placeholder="Enter Password" id="textRegPwd" class="txtClass form-control form-control-lg input-lg" id="user-password" placeholder="Enter Password" required>
											<div class="error"></div>
											<div class="form-control-position"><i class="fa fa-key svg-icon-placeholder"></i></div>
										</fieldset>
										<div class="form-group row">
											<div class="col-md-6 col-6 text-center text-md-left log-font" style="padding-left:0;">
												<fieldset>
													 <input type="checkbox" id="remember_me" name="chkLanguage"value="remember-me" class="chk-remember">
													 <label for="remember-me"> Remember Me</label>
												</fieldset>
											</div>											
											<div class="col-md-6 col-6 text-center text-md-right log-font" style="padding-right:0;"><a href="javascript:void(0);" id="spanForgot" class="card-link"><i class="fa fa-lock"></i> Forgot Password?</a></div>
										</div>
										<br>
										<button type="submit" class="btn btn-success btn-lg btn-block" id="submitLogin"><i class="fa fa-sign-in-alt"></i> Sign In</button>
										<div id="errDivLogin" class="captcha_error"></div>
										<div class="error"></div>
										<div class="clear"></div>
									</div>
									<!-- end of login box -->
						 
									<!-- signup box step 1-->
									<div id="divSignup">
										<div class="form-horizontal">
											<fieldset class="form-group position-relative has-icon-left mb-0">
												<input type="text" value="" placeholder="Enter Full Name" id="textRegName" class="txtClass form-control form-control-lg input-lg" />
												<div class="error"></div>
												<div class="form-control-position"><i class="fa fa-user svg-icon-placeholder"></i></div>
											</fieldset>   
											<fieldset class="form-group position-relative has-icon-left mb-0">
												<input type="text" value="" placeholder="Enter Email Id" id="textSRegEmail" class="txtClass form-control form-control-lg input-lg"/>
												<div class="error"></div>
												<div class="form-control-position"><i class="fa fa-envelope svg-icon-placeholder"></i></div>
											</fieldset> 											
											<button type="button" class="btn btn-success btn-lg btn-block" id="verifyOTP" style="margin-top:20px;" ><i class="fa fa-user-edit"></i> &nbsp;Send OTP</button>
											<div>&nbsp;</div>
											<div id="errDivRegister" class="error"></div>
											<div class="clear"></div>                 
										</div>
										<div id="verifyOTPError" class="errors"></div>
									</div>
									
									<!-- signup box step 2-->
									<div id="divSignup-2">
										<div class="form-horizontal">
											<fieldset class="form-group position-relative has-icon-left">
												<input type="password" name="txtValidateOTP" id="txtValidateOTP" class="txtClass form-control form-control-lg input-lg" placeholder="Enter OTP" autofocus />
												<div class="error"></div>
												<div class="form-control-position"><i class="fa fa-user svg-icon-placeholder"></i></div>
											</fieldset>											
											<button type="button" class="btn btn-success btn-lg btn-block" id="validateOtp" style="margin-top:20px;" ><i class="fa fa-user-edit"></i> &nbsp;Validate OTP</button>
											<div>&nbsp;</div>
											<div id="errDivRegister" class="error"></div>
											<div class="clear"></div>                 
										</div>
										<div id="verifyOTPAlert" class="success-otp"></div>
									</div>
									
									<!-- signup box step 3-->
									<div id="divSignup-3">
										<div class="form-horizontal">
											<fieldset class="form-group position-relative has-icon-left mb-0">
												<input type="password" value="" placeholder="Enter Password" id="textSRegPwd" class="txtClass form-control form-control-lg input-lg"/>
												<div class="error"></div>
												<div class="form-control-position"><i class="fa fa-lock svg-icon-placeholder"></i></div>
											</fieldset>
											<fieldset class="form-group position-relative has-icon-left mb-0">
												<input type="password" value="" placeholder="Re-enter Password" id="textRegRePwd" class="txtClass form-control form-control-lg input-lg"/>
												<div class="error"></div>
												<div class="form-control-position"><i class="fa fa-lock svg-icon-placeholder"></i></div>
											</fieldset>
											<div class="clear"></div>
											<div class="login-checkbox">
												<input class="" name="chkTerms" id="chkTerms" value="remember-me" type="checkbox" style="position:relative; vertical-align:middle;" /><a href="https://www.tutorialspoint.com/about/about_terms_of_use.htm" target="_blank" class="log-font"> Read & Confirmed Terms of Use</a>
												<div class="error"></div>
											</div>  											
											<div class="clear"></div> 
											<button type="submit" class="btn btn-success btn-lg btn-block" id="submitRegister" style="margin-top:20px;"><i class="fa fa-user-edit"></i> &nbsp;Sign Up</button>
											<div>&nbsp;</div>
											<div id="errDivRegister" class="error"></div>
											<div class="clear"></div>                 
										</div>
										<div id="registerOTPAlert" class="success-otp"></div>
									</div>
									
									<!-- forgot box -->
									<div id="divForgot">
										<div class="form-horizontal">
											<fieldset class="form-group position-relative has-icon-left">
												<input type="email" class="form-control form-control-lg input-lg" placeholder="Enter Email Id" id="txtForgotEmailId" required>
												<div class="error"></div>
												<div class="form-control-position"><i class="fa fa-envelope svg-icon-placeholder"></i></div>
											</fieldset>
											<div id="errDivForgot" class="captcha_error"></div><br>
											<button id="forgot_pwd" type="submit" class="btn btn-success btn-lg btn-block"><i class="fa fa-lock"></i> Get OTP</button><br/>
										</div>
										<div class="clear"></div>                  
										<div id="forgotOTP" class="errors"></div>
									</div>
									<div class="login-dv" id="forgotOTPForm">
										<div class="form-horizontal">
											<fieldset class="form-group position-relative has-icon-left">
												<input type="password" name="txtNewPassword" id="txtForgotOTP" class="txtClass form-control form-control-lg input-lg" placeholder="Enter OTP" autofocus />
												<div class="error"></div>
												<div class="form-control-position"><i class="fa fa-user svg-icon-placeholder"></i></div>
											</fieldset>
											<div id="errDivotp" class="captcha_error"></div>
											<button id="submit_otp" type="submit" class="btn btn-success btn-lg btn-block"><i class="fa fa-check"></i> Submit</button>
										</div>
										<div class="clear"></div>                  
										<div id="forgotOTPAlert" class="success-otp"></div>
									</div>
									
									
									<div class="login-dv" id="forgotOTPSubmit">
										<div class="form-horizontal">
											<fieldset class="form-group position-relative has-icon-left">
												<input type="password" name="txtNewPassword" id="txtNewPassword" class="txtClass form-control form-control-lg input-lg" placeholder="Enter New Password" autofocus />
												<div class="error"></div>
												<div class="form-control-position"><i class="fa fa-lock svg-icon-placeholder"></i></div>
											</fieldset>														
											<fieldset class="form-group position-relative has-icon-left">	
												<input type="password" name="txtConfirmPassword" id="txtConfirmPassword" class="txtClass form-control form-control-lg input-lg" placeholder="Re-Enter New Password" />
												<div class="error"></div>
												<div class="form-control-position"><i class="fa fa-lock svg-icon-placeholder"></i></div>
											</fieldset>
											<div class="clear"></div>
										</div> 
										<div class="clear"></div>
										<br>
										<button href="javascript:void();" class="btn btn-success btn-lg btn-block" id="checkOTP"><i class="fa fa-sign-in-alt"></i> &nbsp;Submit</button>
										<div class="clear"></div>                  
										<div id="forgotOTPAlertPwd"  class="success-otp"></div>
										<div class="clear"></div>
									</div>
								</div> 
							</div>												
																		 
							<div class="card-footer">
							  <div class="">
									<p class="float-sm-left text-center m-0"><a href="javascript:void(0);" class="card-link" id="spanSignIn"><i class="fa fa-sign-in-alt"></i> Login</a></p>
									<p class="float-sm-right text-center m-0"><a href="javascript:void(0);" class="card-link" id="spanSignUp"><i class="fa fa-user-edit"></i> Create Account</a></p>
							  </div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>		
	</div>
</div>

<div class="wrap_loader" style="height:5304px;">
</div>


</body>
</html>