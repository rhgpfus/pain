<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>


<script>
	$(document).ready(
			function() {

				var aul = new AjaxUtilList("item/list", "itemTable", "itemName", null, null,"");
				aul.send();
			})
</script>

<title>품목리스트</title>
</head>
<body>
	<div class="container">
		<h1 class="topName">품목리스트</h1>
		<button type="button" class="btn btn-primary" onclick="modalOpen2('item/insert')"> 신규</button>
		<table class="tableList" id="itemTable">
			<thead>
				<tr class="listTr">
					<th class="listTh" data-field="itemNo">품목 번호</th>
					<th class="listTh" data-field="img">이미지</th>
					<th class="listTh" data-field="itemCode">품목코드</th>
					<th class="listTh" data-field="itemName">품목명</th>
					<th class="listTh" data-field="warehousingCost">입고단가</th>
					<th class="listTh" data-field="unstoringCost">출고단가</th>
					<th class="listTh" data-field="itemDivision">품목구분</th>
					<th class="listTh" data-field="createUser">입력자</th>
					<th class="listTh" data-field="createDate">입력일자</th>
					<th class="listTh" data-field="modifiedUser">수정자</th>
					<th class="listTh" data-field="modifiedData">수정일자</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
		<input type="hidden" id="itemName">
			<div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
		<div class="modal-dialog modal-lg">
		
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">품목 추가</h4>
				</div>
				
				<div class="modal-body">
					<table id="table" data-height="460" class="table table-bordered table-hover">
						<tr>
							<td class="listTh">품목 번호</td>
							<td><input type="text" id="itemNo" name="iud0" class="postcodify_extra_info" disabled /></td>
							
							<td class="listTh">이미지</td>
							<td><input type="text" id="img" name="iud1" class="postcodify_extra_info"/></td>
						</tr>
						<tr>
							<td class="listTh">품목 코드</td>
							<td><input type="text" id="itemCode"name="iud2" class="postcodify_extra_info"/></td>
							
							<td class="listTh">품목 이름</td>
							<td><input type="text" id="itemName"name="iud2" class="postcodify_extra_info"/></td>
						</tr>
						<tr>
							<td class="listTh">입고 단가</td>
							<td><input type="text" id="warehousingCost"name="iud2" class="postcodify_extra_info"/></td>
							
							<td class="listTh">출고 단가</td>
							<td><input type="text" id="unstoringCost"name="iud2" class="postcodify_extra_info"/></td>
						</tr>
						
						<tr>
							<td class="listTh">품목 구분</td>
							<td><input type="text" id="itemDivision"name="iud2" class="postcodify_extra_info"/></td>
							
							<td class="listTh">입력자</td>
							<td><input type="text" id="createUser"name="iud2" class="postcodify_extra_info"/></td>
						</tr>
						
						<tr>
							<td class="listTh">입력 일정</td>
							<td><input type="text" id="createDate"name="iud2" class="postcodify_extra_info"/></td>
							
							<td class="listTh">수정자</td>
							<td><input type="text" id="modifiedUser"name="iud2" /></td>
						</tr>
						
						<tr>
							<td class="listTh">수정 일정</td>
							<td><input type="text" id="modifiedData"name="iud2"/></td>
						</tr>
					</table>
				</div>
				
				<div class="modal-footer"> 
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button> 
					<div id="changeButton" style="display: inline"> 
					<button type="button" class="btn btn-primary" onclick="iudAjax('project/update')">수정</button>
					<button type="button" class="btn btn-primary" onclick="iudAjax('project/delete')">삭제</button>
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