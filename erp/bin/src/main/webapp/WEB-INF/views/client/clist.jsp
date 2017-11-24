<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>
<link rel="stylesheet" href="<c:url value="/resources/css/tableList.css?version=${pVar}"/>"/>

<script>
$(document).ready(function(){
	var aul = new AjaxUtilList("client/clist","cmTable","clientNo",null,null,"client/update");
	aul.send();
})
</script>

<title>협력회사목록</title>
</head>
<body>
<div class="container">
	<h1 class="topName">협력회사목록</h1>
		<!-- 버튼 -->
	<button type="button" class="btn btn-primary" onclick="modalOpen2('client/insert')"> 신규</button>
	<table class="tableList" id="cmTable"> 
		<thead>
			<tr class="listTr">
				<th class="listTh" data-field="clientNo">회사번호</th>
				<th class="listTh" data-field="clientCode">거래처</th>
				<th class="listTh" data-field="homePage">거래처홈페이지</th>
				<th class="listTh" data-field="bank">거래은행</th>
				<th class="listTh" data-field="clientName">거래처명</th>
				<th class="listTh" data-field="representAtives">대표자명</th>
				<th class="listTh" data-field="sectors">종목</th>
				<th class="listTh" data-field="phoneNumber">회사전화번호</th>
				<th class="listTh" data-field="cellphoneNumber">담당자HP</th>
				<th class="listTh" data-field="address">주소</th>
				<th class="listTh" data-field="managerNo">담당자</th>
				<th class="listTh" data-field="email">email</th>
				<th class="listTh" data-field="createUser">입력자</th>
				<th class="listTh" data-field="createDate">입력일자</th>
				<th class="listTh" data-field="modifiedUser">수정자</th>
				<th class="listTh" data-field="modifiedData">수정일자</th>
			</tr>
		</thead>
		<tbody/>
	<input type="hidden" id="clientNo">
	</table>
	<!-- <input type="hidden" id="projectNo"> -->
	<div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
		<div class="modal-dialog modal-lg">
		
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">클라이언트</h4>
				</div>
				
				<div class="modal-body">
					<table id="table" data-height="460" class="table table-bordered table-hover">
						<tr>
							<td class="listTh">거래처 번호</td>
							<td><input type="text" id="clientNo" name="iud0" class="postcodify_extra_info" disabled /></td>
							
							<td class="listTh">거래처 이름</td>
							<td><input type="text" id="clientName"name="iud2" class="postcodify_extra_info" data-req="거래처 이름을 입력해주세요" placeholder="거래처 이름을 입력해주세요" /></td>
						</tr>
						<tr>
							<td class="listTh">거래처 코드</td>
							<td><input type="text" id="clientCode" name="iud1" class="postcodify_extra_info" data-req="거래처 이름을 입력해주세요" placeholder="프로젝트코드를 입력하세요" /></td>
						
							<td class="listTh">거래처 홈페이지</td>
							<td><input type="text" id="homePage" name="iud2" class="postcodify_extra_info" data-req="프로젝트이름을 입력해주세요" placeholder="프로젝트이름을 입력하세요" /></td>
						</tr>
						
						<tr>
							<td class="listTh">거래처 은행</td>
							<td><input type="text" id="bank"name="iud2" class="postcodify_extra_info" data-req="프로젝트이름을 입력해주세요" placeholder="프로젝트이름을 입력하세요" /></td>
							
							<td class="listTh">거래처 representAtives</td>
							<td><input type="text" id="representAtives"name="iud2" class="postcodify_extra_info" data-req="프로젝트이름을 입력해주세요" placeholder="프로젝트이름을 입력하세요" /></td>
						</tr>
						
						<tr>
							<td class="listTh">거래처 sectors</td>
							<td><input type="text" id="sectors" name="iud2" class="postcodify_extra_info" data-req="프로젝트이름을 입력해주세요" placeholder="프로젝트이름을 입력하세요" /></td>
							
							<td class="listTh">거래처 representAtives</td>
							<td><input type="text" id="representAtives" name="iud2" class="postcodify_extra_info" data-req="프로젝트이름을 입력해주세요" placeholder="프로젝트이름을 입력하세요" /></td>
						</tr>
						
						<tr>
							<td class="listTh">거래처 phoneNumber</td>
							<td><input type="text" id="phoneNumber" name="iud2" class="postcodify_extra_info" data-req="프로젝트이름을 입력해주세요" placeholder="프로젝트이름을 입력하세요" /></td>
							
							<td class="listTh">거래처 cellphoneNumber</td>
							<td><input type="text" id="cellphoneNumber"name="iud2" class="postcodify_extra_info" data-req="프로젝트이름을 입력해주세요" placeholder="프로젝트이름을 입력하세요" /></td>
						</tr>
						
						<tr>
							<td class="listTh">거래처 address</td>
							<td><input type="text" id="address" name="iud2" class="postcodify_extra_info" data-req="프로젝트이름을 입력해주세요" placeholder="프로젝트이름을 입력하세요" /></td>
							
							<td class="listTh">거래처 managerNo</td>
							<td><input type="text" id="managerNo"name="iud2" class="postcodify_extra_info" data-req="프로젝트이름을 입력해주세요" placeholder="프로젝트이름을 입력하세요" /></td>
						</tr>
						
						<tr>
							<td class="listTh">거래처 email</td>
							<td><input type="text" id="email" name="iud2" class="postcodify_extra_info" data-req="프로젝트이름을 입력해주세요" placeholder="프로젝트이름을 입력하세요" /></td>
							
							<td class="listTh">거래처 createUser</td>
							<td><input type="text" id="createUser"name="iud2" class="postcodify_extra_info" data-req="프로젝트이름을 입력해주세요" placeholder="프로젝트이름을 입력하세요" /></td>
						</tr>
						
						<tr>
							<td class="listTh">거래처 createDate</td>
							<td><input type="text" id="createDate" name="iud2" class="postcodify_extra_info" data-req="프로젝트이름을 입력해주세요" placeholder="프로젝트이름을 입력하세요" /></td>
							
							<td class="listTh">거래처 modifiedUser</td>
							<td><input type="text" id="modifiedUser"name="iud2" class="postcodify_extra_info" data-req="프로젝트이름을 입력해주세요" placeholder="프로젝트이름을 입력하세요" /></td>
						</tr>
						
						<tr>
							<td class="listTh">거래처 modifiedData</td>
							<td><input type="text" id="modifiedData" name="iud2" class="postcodify_extra_info" data-req="프로젝트이름을 입력해주세요" placeholder="프로젝트이름을 입력하세요" /></td>
							
						</tr>
						
					</table>
				</div>
				
				<div class="modal-footer"> 
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button> 
					<div id="changeButton" style="display: inline"> 
					<button type="button" class="btn btn-primary" onclick="iudAjax('client/update')">수정</button>
					<button type="button" class="btn btn-primary" onclick="iudAjax('client/delete')">삭제</button>
					</div>
				</div>


			</div>
		</div>
	</div>
<style>

.modal-backdrop {
	z-index: -1;
}
/*모달 팝업창 클릭 시 안닫히게 하는 것.*/
</style>
	
</div>
</body>
</html>
