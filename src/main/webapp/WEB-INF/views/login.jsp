<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<p class="title is-2 is-spaced">Financial Ledger(가계부, 家計簿)</p>
			<!--login form-->
			<div class="box">
				<form>
					<div class="field">
						<p class="control has-icons-left">
							<input class="input" type="email" placeholder="Email"> <span
								class="icon is-small is-left"> <i class="fa fa-envelope"></i>
							</span>
						</p>
					</div>
					<div class="field">
						<p class="control has-icons-left">
							<input class="input" type="password" placeholder="Password">
							<span class="icon is-small is-left"> <i class="fa fa-lock"></i>
							</span>
						</p>
					</div>
					<div class="field">
						<p class="control">
							<button class="button is-success" id="log-in-button">
								<b>Login</b>
							</button>
							
							<button class="button is-info" id="sign-up-button">
								<b>Sign up</b>
							</button>
							
						</p>
					</div>
					
					<!-- 구글 로그인 부분 추가 -->
					<input type = "button" class="google_button" id="googleLoginBtn" >
				</form>
			</div>
			<!--end of form-->
		</div>
		<!--end of column-->
	</div>
	<!--end of container-->

</body>
<script>
 	const onClickGoogleLogin = (e) => {
 		window.location.replace(
 		"https://accounts.google.com/o/oauth2/v2/auth?client_id=756347238590-mu7vjti5v5b0pnv6vntsospcfddsqu7r.apps.googleusercontent.com&redirect_uri=http://localhost:8888/login/google/auth&response_type=code&scope=email%20profile%20openid&access_type=offline")
 		}
	const googleLoginBtn = document.getElementById("googleLoginBtn");
	googleLoginBtn.addEventListener("click", onClickGoogleLogin);
</script>

</html>