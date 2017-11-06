<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>


<script>
$(document).ready(function(){

	var aul = new AjaxUtilList("project/list","projectTable","projectNo","", "","");
	aul.send();
})


function iudAjax(url){
	var params = "";
	$("input[name*='update'][id]").each(function(key,val){
		if(val.getAttribute("id")){
			params += val.getAttribute("id") + ",";
		}
	}); 
	params = params.substr(0,params.length-1); // , 없애주기위해
	var aui = new AjaxUtil(url,params);
	aui.send();
}

</script>

<title>프로젝트 리스트</title>
</head>
<body>
<div class="container">
	<h1 class="topName">프로젝트 리스트</h1>

		<!-- 버튼 --> 
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal"> 신규</button>
		
		
	<table class="tableList" id="projectTable">	
		<thead>
			<tr class="listTr">
				<th class="listTh" data-field="projectNo">프로젝트 번호</th>
				<th class="listTh" data-field="projectCode">프로젝트 코드</th>
				<th class="listTh" data-field="projectName">프로젝트 이름</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	
	<!-- <input type="hidden" id="projectNo"> -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
		<div class="modal-dialog">
		
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">프로젝트</h4>
				</div>
				
				<div class="modal-body">
					<table id="table" data-height="460" class="table table-bordered table-hover">
						<tr>
							<td class="listTh">프로젝트 번호</td>
							<td><input type="text" id="projectNo" name="update0" class="postcodify_extra_info" disabled /></td>
						</tr>
						<tr>
							<td class="listTh">프로젝트 코드</td>
							<td><input type="text" id="projectCode" name="update1" class="postcodify_extra_info" data-req="프로젝트코드를 입력해주세요" placeholder="프로젝트코드를 입력하세요" /></td>
						</tr>
						<tr>
							<td class="listTh">프로젝트 이름</td>
							<td><input type="text" id="projectName"name="update2" class="postcodify_extra_info" data-req="프로젝트이름을 입력해주세요" placeholder="프로젝트이름을 입력하세요" /></td>
						</tr>
					</table>
				</div>
				
				<div class="modal-footer"> 
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button> 
					<button type="button" class="btn btn-primary" onclick="iudAjax('project/insert')">저장</button>
					<button type="button" class="btn btn-primary" onclick="iudAjax('project/delete')">삭제</button>  
					<button type="button" class="btn btn-primary" onclick="iudAjax('project/update')">수정</button>  
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