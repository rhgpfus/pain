<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp"%>

<html>
<head>
<title>Insert title here</title>
</head>
<body background="${imgUrl}memo.PNG">

<div class="memo" style="margin:0;">
	<p class="title"><strong>ㆍ메모</strong></p>
	<div class="substance">
		<ul id="memo_list">
			<li>
				<span class="subject"><a href="#" onmouseover="a('');return true;" onmouseout="b();" onclick="fnEdit('20171108', '6');return false;">hrtyert</a></span>
				<span class="day">17.11.08</span>
			</li>
			

		</ul>
	</div>
	<div class="btn">
		<span id="lblNew" class="button_black"><input id="btnNew" type="button" value="신규" onclick="fnNew();" /></span>
	        
	    <span id="lblClose" class="button_black"><input id="Button1" type="button" value="닫기" onclick="gfnClose();" /></span>
	</div>
</div>
</body>
</html>