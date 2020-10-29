<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.16.1/axios.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.3.0/vue.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.4.1/css/bulma.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<title>Team4 Financial Ledger</title>
	<script type="text/javascript">
		function sign_in(){
			var email = document.getElementById("user_email").value;
			var password = document.getElementById("user_password").value;
			
			if(email.length == 0 || email == '') {
				alert("이메일를 입력해 주세요");
				return false;
			}
						
			if(password.length == 0 || password == '') {
				alert("패스워드를 입력해 주세요");
				return false;
			}
			
			return location.href="/login/check?user_email="+email+"&user_password="+password;
		}
	
		function sign_up(){
			return location.href="/login/sign_up_form";
		}
	</script>
</head>

<style>
html, body {
	height: 100%;
	padding: 0;
	margin: 0;
	overflow: hidden;
}

#app {
	height: 100%;
	margin: 0;
	padding: 0;
	background-color: #E6E6E6;
}

#app .column {
	margin-top: 10%;
}

#app .column>p {
	text-align: center;
}

#sign-up-button {
	float: right;
}

input.google_button {
        background: url( "/resources/images/btn_google_signin_dark_pressed_web.png" ) no-repeat;
        border: none;
        width: 191px;
        height: 46px;
        cursor: pointer;
      }
</style>

<body>
	<!--main container-->
	<div class="columns is-mobile" id="app">
		<!--centered column-->
		<div class="column is-half is-offset-one-quarter">
			<p class="title is-2 is-spaced">Financial Ledger</p>
			<!--login form-->
			<div class="box">
					<div class="field">
						<p class="control has-icons-left">
							<!-- 사용자의 이메일을 입력받는 부분 -->
							<input class="input" type="email" placeholder="Email" id="user_email"> 
							<span class="icon is-small is-left"> <i class="fa fa-envelope"></i></span>
						</p>
					</div>
					<div class="field">
						<p class="control has-icons-left">
							<!-- 사용자의 패스워드를 입력받는 부분 -->
							<input class="input" type="password" placeholder="Password" id="user_password">
							<span class="icon is-small is-left"> <i class="fa fa-lock"></i>
							</span>
						</p>
					</div>
					
					<!-- 버튼 부분 -->
					<div class="field">
						<!-- 사용자가 입력한 입력정보를 제출하는 버튼 -->
						<button onclick="return sign_in();" class="button is-success" id="log-in-button">
							<b>login</b>
						</button>
						
						<!-- 회원가입 버튼 -->
						<button onclick="return sign_up();" class="button is-info" id="sign-up-button">
							<b>Sign up</b>
						</button>
					</div>
					<!-- 구글 로그인 부분 추가 -->
					<input type = "button" class="google_button" id="googleLoginBtn" >
						
			</div>
			<!--end of form-->
		</div>
		<!--end of column-->
	</div>
	<!--end of container-->

</body>
<script>
	// 구굴 로그인을 위한 함수
	// 이미지를 클릭하면 아래에 있는 링크를 통해 구글 서버에 클라이언트의 아이디, 리다이렉트 url 등의 정보를 전달한다
 	const onClickGoogleLogin = (e) => {
 		window.location.replace(
 		"https://accounts.google.com/o/oauth2/v2/auth?client_id=756347238590-mu7vjti5v5b0pnv6vntsospcfddsqu7r.apps.googleusercontent.com&redirect_uri=http://localhost:8888/login/google/auth&response_type=code&scope=email%20profile%20openid&access_type=offline")
 		}
	const googleLoginBtn = document.getElementById("googleLoginBtn");
	googleLoginBtn.addEventListener("click", onClickGoogleLogin);

</script>

</html>