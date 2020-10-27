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
		function sign_up(){
			var email = document.getElementById("user_email").value;
			var password = document.getElementById("user_password").value;
			var password_check = document.getElementById("user_password_check").value;
			
			if(email.length == 0 || email == '') {
				alert("이메일를 입력해 주세요");
				return false;
			}
						
			if(password.length == 0 || password == '') {
				alert("패스워드를 입력해 주세요");
				return false;
			}
			
			if(password != password_check) {
				alert("패스워드를 동일하게 입력해주세요");
				return false;
			}
			
			return location.href="/login/sign_up?user_email="+email+"&user_password="+password;
		}
	
		function back(){
			return location.href="../";
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

#sign-in-button {
	float: right;
}

</style>

<body>
	<!--main container-->
	<div class="columns is-mobile" id="app">
		<!--centered column-->
		<div class="column is-half is-offset-one-quarter">
			<p class="title is-2 is-spaced">Sign Up</p>
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
							<span class="icon is-small is-left"> <i class="fa fa-lock"></i></span>
						</p>
					</div>
					
					<!--password confirmation-->
					<div class="field">
						<p class="control has-icons-left">
							<input class="input" type="password" placeholder="Password Confirmation" id="user_password_check">
							<span class="icon is-small is-left"><i class="fa fa-lock"></i></span>
						</p>
					</div>
					
					<div class="field">
						<!-- 사용자가 입력한 입력정보를 제출하는 버튼 -->
						<button onclick="return sign_up();" class="button is-success" id="log-in-button">
							<b>Submit</b>
						</button>
						
						<!-- 뒤로가기-->
						<button onclick="return back();" class="button is-light" id="sign-in-button">
							<b>Back</b>
						</button>
						
					</div>
			</div>
			<!--end of form-->
		</div>
		<!--end of column-->
	</div>
	<!--end of container-->

</body>
</html>