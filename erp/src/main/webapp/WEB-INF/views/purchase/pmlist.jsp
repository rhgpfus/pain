<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>


<script>

$(document).ready(function(){

	var aul = new AjaxUtilList("purchase/pmlist","pmTable","purchaseNo","", "","");
	aul.send();
})

//비동기 ajax
$(document).ready(function(){
	var aul = new AjaxUtilUpdateList("purchase/pmlist","pmup","purchaseNo");
	aul.send();
})

// $('#myModal').on('hidden.bs.modal', function () {
// 	$("#changeButton").html("<button type='button' class='btn btn-primary' onclick='iudAjax(\""+"puchase/update"+"\")'>수정</button>");
// 	$("#changeButton").append("<button type='button' class='btn btn-primary' onclick='iudAjax(\""+"puchase/delete"+"\")'>삭제</button>");
// });
// })

	
</script>

<title>구매 리스트</title>
</head>
<body>
<div class="container">
	<h1>구매 리스트</h1>
	<button type="button" class="btn btn-primary" onclick="modalOpen2('puchase/insert')"> 신규</button>
	
	<table class="tableList" id="pmTable"> 
		<thead>
			<tr class="listTr">
				<th class="listTh" data-field="purchaseNo">구매번호</th>
				<th class="listTh" data-field="orderDate">발주요청일자</th>
				<th class="listTh" data-field="clientName">거래처명</th>
				<th class="listTh" data-field="itemName">품목</th>
				<th class="listTh" data-field="amount">총액</th>
				<th class="listTh" data-field="warehouseName">입고창고</th>
				<th class="listTh" data-field="purchaseStatus">종결여부</th>
			</tr>
		</thead>
		<tbody/>
	</table>
	<input type="hidden" id="purchaseNo">
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
							<td class="listTh">발주요청 일자</td>
							<td><input type="text" id="clientNo" name="iud1" class="postcodify_extra_info" disabled /></td>
							
							<td class="listTh">거래처 이름</td>
							<td><input type="text" id="clientName"name="iud2" class="postcodify_extra_info" data-req="거래처 이름을 입력해주세요"  /></td>
						</tr>
						<tr>
							<td class="listTh">담당자</td>
							<td><input type="text" id="clientCode" name="" class="postcodify_extra_info" data-req="담당자를 입력해주세요"  /></td>
						
							<td class="listTh">입고창고</td>
							<td><input type="text" id="warehouseName" name="iud6" class="postcodify_extra_info" data-req="입고창고를 입력해주세요"  /></td>
						</tr>
					</table>
					
					<table class="tableList" id="pmup"> 
						<thead>
							<tr class="listTr">
								<th class="listTh" data-field="purchaseNo">구매no</th>
								<th class="listTh" data-field="itemName">품목명</th>
								<th class="listTh" data-field="quantity">수량</th>
								<th class="listTh" data-field="unitPrice">단가</th>
								<th class="listTh" data-field="amount">총액</th>
							</tr>
						</thead>
					<tbody/>
					</table>
				</div>
				
				<div class="modal-footer"> 
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button> 
					<div id="changeButton" style="display: inline"> 
					<button type="button" class="btn btn-primary" onclick="iudAjax('puchase/update')">수정</button>
					<button type="button" class="btn btn-primary" onclick="iudAjax('puchase/delete')">삭제</button>
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


