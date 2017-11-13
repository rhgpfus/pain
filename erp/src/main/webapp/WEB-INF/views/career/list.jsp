<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>


<script>
$(document).ready(function(){

	var aul = new AjaxUtilList("career/list","careerTable","careerNo","", "" , "");
	aul.send();
	$('#myModal').on('hidden.bs.modal', function () {
		$("#changeButton").html("<button type='button' class='btn btn-primary' onclick='iudAjax(\""+"career/update"+"\", \""+"career"+"\")'>수정</button>");
		$("#changeButton").append("<button type='button' class='btn btn-primary' onclick='iudAjax(\""+"career/delete"+"\", \""+"career"+"\")'>삭제</button>");
	});
})

	
</script>

<title>입사구분 리스트</title>
</head>
<body>
<div class="container">
	<h1 class="topName">입사구분 리스트</h1>
	<!-- 버튼 --> 
	<button type="button" class="btn btn-primary" onclick="modalOpen2('career/insert', 'career')"> 신규</button>
	
	<table class="tableList" id=careerTable>
		<thead>
			<tr class="listTr">
				<th class="listTh" data-field="careerNo">입사구분번호</th>
				<th class="listTh" data-field="careerCode">입사구분코드</th>
				<th class="listTh" data-field="careerName">입사구분명</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	<!-- <input type="hidden" id="careerNo"> -->
	
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
		<div class="modal-dialog">
		
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">입사 구분</h4>
				</div>
				
				<div class="modal-body">
					<table id="table" data-height="460" class="table table-bordered table-hover">
						<tr>
							<td class="listTh">입사구분번호</td>
							<td><input type="text" id="careerNo" name="careerNo" class="postcodify_extra_info" disabled /></td>
						</tr>
						<tr>
							<td class="listTh">입사구분코드</td>
							<td><input type="text" id="careerCode" name="careerCode" class="postcodify_extra_info" data-req="입사구분코드를 입력해주세요" placeholder="입사구분코드를 입력하세요"/></td>
						</tr>
						<tr>
							<td class="listTh">입사구분</td>
							<td><input type="text" id="careerName" name="careerName" class="postcodify_extra_info" data-req="입사구분명을 입력해주세요" placeholder="입사구분명을 입력하세요"/></td>
						</tr>
					</table>
				</div>
				
				<div class="modal-footer"> 
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					<div id="changeButton" style="display: inline"> 
					<button type="button" class="btn btn-primary" onclick="iudAjax('career/update', 'career')">수정</button>
					<button type="button" class="btn btn-primary" onclick="iudAjax('career/delete', 'career')">삭제</button>
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