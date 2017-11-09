<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>

<script> 

$(document).ready(function(){
	var aul = new AjaxUtilList("warehouse/whlist","wmTable","warehouseNo",null,null,"");
	aul.send();
	
	$('#myModal').on('hidden.bs.modal', function () {
		$("#changeButton").html("<button type='button' class='btn btn-primary' onclick='iudAjax(\""+"warehouse/update"+"\")'>수정</button>");
		$("#changeButton").append("<button type='button' class='btn btn-primary' onclick='iudAjax(\""+"warehouse/delete"+"\")'>삭제</button>");
	});
})

var userName = "<%= user.getHumanKorName()%>";
var userNo = "<%= user.getHumanNo()%>";
</script>

<title>창고목록</title>
</head>
<body>
<div class="container">
	<h1 class="topName">창고목록</h1>
	
	<button type="button" class="btn btn-primary" onclick="modalOpen2('warehouse/insert')"> 신규</button>
	
	<table class="tableList" id="wmTable"> 
		<thead>
			<tr class="listTr">
				<th class="listTh" data-field="warehouseNo">창고번호</th>
				<th class="listTh" data-field="warehouseCode">창고코드</th>
				<th class="listTh" data-field="warehouseName">창고이름</th>
				<th class="listTh" data-field="division">구분</th>
				<th class="listTh" data-field="warehouseAddress">창고주소</th>
				<th class="listTh" data-field="createUser">입력자</th>
				<th class="listTh" data-field="createDate">입력일자</th>
				<th class="listTh" data-field="modifiedUser">수정자</th>
				<th class="listTh" data-field="modifiedData">수정일자</th>

			</tr>
		</thead>
		<tbody/>
	</table>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
		<div class="modal-dialog">
		
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">
						<span class="glyphicon glyphicon-file" aria-hidden="true"></span>창고등록
					</h4>
				</div>
				
				<div class="modal-body">
					<table data-height="460" class="table table-bordered table-hover">
						<tr>
							<td class="listTh">창고번호</td>
							<td><input type="text" id="warehouseNo" name="iud0" class="form-control" disabled /></td>
						</tr>
						<tr>
							<td class="listTh">구분</td>
							<td>
								<div class="radio-inline">
						  			<label>
										<input type="radio" id="division" name="iud1" value="1" />창고
									</label>
								</div>
								
								<div class="radio-inline">
						  			<label>
										<input type="radio" id="division2" name="iud2" value="2" />공장
									</label>
								</div>
								
								<div class="radio-inline">
						  			<label>
										<input type="radio" id="division3" name="iud3" value="3" />외주공장
									</label>
								</div>
							</td>
						</tr>
						<tr>
							<td class="listTh">창고코드</td>
							<td><input type="text"  id="warehouseCode" name="iud4" class="form-control" data-req="창고코드를 입력해주세요"/></td>
						</tr>
						<tr>
							<td class="listTh">창고명</td>
							<td><input type="text"  id="warehouseName" name="iud"5  class="form-control" data-req="창고명을 입력해주세요"/></td>
						</tr>
						<tr>
							<td class="listTh">창고주소</td>
							<td><input type="text"  id="warehouseAddress" name="iud6"  class="form-control" data-req="창고주소를 입력해주세요"/></td>
						</tr>
						
						<input type="hidden" id="createUser" value="<%= user.getHumanNo()%>">
						<input type="hidden" id="createDate">
						<input type="hidden" id="modifiedUser" value="<%= user.getHumanNo()%>">
						<input type="hidden" id="modifiedData">
					</table>

				</div>
				
				<div class="modal-footer"> 
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button> 
					<div id="changeButton" style="display: inline"> 
					<button type="button" class="btn btn-primary" onclick="iudAjax('warehouse/update')">수정</button>
					<button type="button" class="btn btn-primary" onclick="iudAjax('warehouse/delete')">삭제</button>
					</div>
					
				</div>


			</div>
		</div>
	</div>
</div>
</body>
</html>

<style>

.modal-backdrop {
	z-index: -1;
}
/*모달 팝업창 클릭 시 안닫히게 하는 것.*/
</style>