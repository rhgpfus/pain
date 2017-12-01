<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>


<script>
$(document).ready(function(){
	var aul = new AjaxUtilList("sale/slist","sTable","itemNo",null,null,"");
	aul.send();
	$('#myModal').on('hidden.bs.modal', function () {
		$("#changeButton").html("<button type='button' class='btn btn-primary' onclick='iudAjax(\""+"sale/update"+"\")'>수정</button>");
		$("#changeButton").append("<button type='button' class='btn btn-primary' onclick='iudAjax(\""+"sale/delete"+"\")'>삭제</button>");
	});
})
</script>

<title>판매리스트</title>
</head>
<body>
<div class="container">
	<h1 class="topName">판매리스트</h1>
	<button type="button" class="btn btn-primary" onclick="modalOpen2('sale/insert')"> 신규</button>
	<table class="tableList" id="sTable"> 
		<thead>
			<tr class="listTr">
				<th class="listTh" data-field="saleNo">번호</th>
				<th class="listTh" data-field="saleDate">판매일자</th>
				<th class="listTh" data-field="clientNo">구매처번호</th>
				<th class="listTh" data-field="itemNo">품목번호</th>
				<th class="listTh" data-field="imcNo">품목&회사</th>
				<th class="listTh" data-field="managerNo">담당장</th>
				<th class="listTh" data-field="warehouseNo">출고창고</th>
				<th class="listTh" data-field="projectNo">프로젝트</th>
				<th class="listTh" data-field="receiptStatus">수령여부</th>
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
						<span class="glyphicon glyphicon-file" aria-hidden="true"></span>판매등록
					</h4>
				</div>
				
				<div class="modal-body">
					<table data-height="460" class="table table-bordered table-hover">
						<tr>
							<td class="listTh col-md-2" colspan="2" style="vertical-align: middle">판매번호</td>
							<td colspan="2"><input type="text" id="saleNo" name="saleNo" class="form-control" disabled /></td>
						</tr>
						<tr>
							<td class="listTh col-md-2" style="vertical-align: middle">판매일자</td>
							<td>
								<input type="date" class="form-control" id="saleDate" name="saleDate"/>
							</td>
							<td class="listTh col-md-3" style="vertical-align: middle">구매처번호</td>
							<td>
								<input type="text" class="form-control" id="clientNo" name="clientNo"/>
							</td>
						</tr>
						<tr>
							<td class="listTh" style="vertical-align: middle">품목번호</td>
							<td><input type="text"  id="itemNo" name="itemNo" class="form-control" /></td>
							<td class="listTh" style="vertical-align: middle">품목&회사</td>
							<td><input type="text"  id="imcNo" name="imcNo"  class="form-control" /></td>
						</tr>
						<tr>
							<td class="listTh" style="vertical-align: middle">담당자</td>
							<td><input type="text"  id="managerNo" name="managerNo"  class="form-control" /></td>
							<td class="listTh" style="vertical-align: middle">출고창고</td>
							<td><input type="text"  id="warehouseNo" name="warehouseNo"  class="form-control" /></td>
						</tr>
						<tr>
							<td class="listTh" style="vertical-align: middle">프로젝트</td>
							<td><input type="text"  id="projectNo" name="projectNo"  class="form-control" /></td>
							<td class="listTh" style="vertical-align: middle">수령여부</td>
							<td><input type="text"  id="receiptStatus" name="receiptStatus"  class="form-control" /></td>
						</tr>
					</table>
						
						<input type="hidden" id="createUser" name="createUser" value="<%= user.getHumanNo()%>">
						<input type="hidden" id="createDate" name="createDate">
						<input type="hidden" id="modifiedUser" name="modifiedUser" value="<%= user.getHumanNo()%>">
						<input type="hidden" id="modifiedData" name="modifiedData">
				</div>
				
				<div class="modal-footer"> 
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button> 
					<div id="changeButton" style="display: inline"> 
					<button type="button" class="btn btn-primary" onclick="iudAjax('sale/update')">수정</button>
					<button type="button" class="btn btn-primary" onclick="iudAjax('sale/delete')">삭제</button>
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