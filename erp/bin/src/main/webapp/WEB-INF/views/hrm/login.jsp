<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>

<link rel="stylesheet" href="<c:url value="/resources/ui/signin.css?version=${pVar}"/>"/>
    	
	

	<title>Login</title>
	</head>
	<body>
		<div class="container">
			<form class="form-login">
				<h1 class="login-header-name">MANSOLEGO</h1>
				<label class="sr-only">ID</label> 
				<input type="text" id="humanId" class="form-control" placeholder="ID" data-req="아이디를 입력해주세요" autofocus> 
				<label class="sr-only">Password</label>
				<input type="password" id="humanPwd" class="form-control" placeholder="Password" data-req="비밀번호를 입력해주세요" required>
				
				<button id="btn" class="form-login-button" type="button">로그인</button>
			</form>
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
