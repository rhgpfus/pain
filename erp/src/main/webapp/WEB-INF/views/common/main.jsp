<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!asdf
	${sessionScope.hrmuser}
</h1>
<c:if test="${(sessionScope.hrmuser != null) && sessionScope.hrmuser.humanauthority == '1' }">
<input type="button" value="sqlAdmin" onclick="openWindow()"/>
<script>
function openWindow(){
	window.open('/main/main2','winname','directories=no,titlebar=no,toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no');
}
</script>
</c:if>
<P>  The time on the server is ${serverTime}. </P>
</body> 
</html>
