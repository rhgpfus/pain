<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>

<link rel="stylesheet" href="<c:url value="/resources/ui/signin.css?version=${pVar}"/>"/>
    	
	<title>Login</title>
	
	<body>
		<div id="wrap">
	      <div id="box">
	         <div id="login-box">
	         	
				<form class="form-login">
					<h1 class="login-header-name">MANSOLE</h1>
					<label class="sr-only">ID</label> 
					<input type="text" id="humanId" class="form-control" placeholder="ID" data-req="아이디를 입력해주세요" autofocus> 
					<label class="sr-only">Password</label>
					<input type="password" id="humanPwd" class="form-control" placeholder="Password" data-req="비밀번호를 입력해주세요" required>
					
					<button id="btn" class="form-login-button" type="button">로그인</button>
				</form>
		
	         </div>
	      </div>
	   </div>
	</body>
</html>
<script>
	var login = function(){
		var paramIds = "humanId,humanPwd";
		var au = new AjaxUtil("hrm/login", paramIds);
		au.send();
	}
	$(document).ready(function(){
		 $('#humanPwd, #humanId').keydown(function (key) {
	        if(key.keyCode == 13){//키가 13이면 실행 (엔터는 13)
	        
	        	login(); 
	        }
		 });
		$("#btn").click(function(){
			login();
		})
	});
</script>

<style>
 #wrap{
 position:fixed;
 width:100%;
 height:100%;
 background:#f5f5f5;
 }
 
 #box{
   position:relative;
   top:26%;
   width:100%;
   height:400px;
   background:#fff;
 }
 #login-box{
   width:100%;
   height:400px;
   margin:0 auto;
   border: 1px solid #ddd;
 }
 body {
    padding-top: 0px;
}
 .form-login-button{
	padding-top: 10px;
    padding-bottom: 10px;
    font-size: 133.3333%;
    font-weight: bold;
}
</style>
