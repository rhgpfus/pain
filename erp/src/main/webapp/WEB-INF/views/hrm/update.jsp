<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>

<script>
	
function AjaxUtil(p_url, p_params, pCallBackFunc, pMethod){
	if (!p_url) {
		alert("url정보가 없습니다.");
		return null;
	}
	var params = JSON.stringify(p_params);
	$.ajax({ 
			type     : pMethod ? pMethod : "POST"
	    ,   url      : "${rootPath}/" + p_url
	    ,   dataType : "json" 
	    //내가 받을 데이터 타입.
	    ,   beforeSend: function(xhr) {
	        xhr.setRequestHeader("Accept", "application/json");
	        xhr.setRequestHeader("Content-Type", "application/json");
	    }
	    ,   data     : params
	    ,   success : pCallBackFunc
	    //제이 쿼리가 success를 호출하게 되면 pCallBackFunc을 호출하게되고,
	    //pCallBackFunc은  callback함수이다.
	    //성공을 한다면 pCallBackFunc(callback)라는 함수를 호출.
	    ,   error : function(xhr, status, e) {
		    	alert("에러 : "+e);
		},
		complete  : function() {
		}
	});
}
	
	function deletePic() {
		$('#uploadPreview').attr('src', '');
	}

	function PreviewImage() {
		var oFReader = new FileReader();
		oFReader.readAsDataURL(document.getElementById("uploadImage").files[0]);

		oFReader.onload = function(oFREvent) {
			document.getElementById("uploadPreview").src = oFREvent.target.result;
		};
	};

	function searchAddress() {
		window.open('/erp/address', 'winname', 'directories=no,titlebar=no,toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no');
	}

	function initEvent(){
		$('div[id*="myModal"] table[id="' + globalTarget.tableId + '"] tbody tr').click(function(){
			var str = this.firstChild.innerText
			var str2 = this.lastChild.innerText;
			globalTarget.obj.value = str;
			globalTarget.obj2.value = str2;
			$('.modal').modal('hide');
		})
	}
	
	function callback2(result){
		if(result){
			$("#careerCode").val(result.careerCode);
			$("#careerNameInput").val(result.careerName);			
		}
	}
	
	function callback(result){
		if(result){
			$("#humanKorName").val(result.humanKorName); //한국이름
			$("#humanEngName").val(result.humanEngName); //영어이름
			$("#humanSecondLanguage").val(result.humanSecondLanguage); //제2외국어
			if(result.humanResidentNumber){
				var hrns = result.humanResidentNumber;
				var hrn = hrns.split("-");
				$("#humanResidentNumber1").val(hrn[0]);
				$("#humanResidentNumber2").val(hrn[1]);
			}
			if(result.humanGenerative){
				var hg = result.humanGenerative;
				if(hg=="1"){
					$('input[name="humanGenerative"]:radio:input[value="1"]').attr('checked', 'checked'); 
				}else if(hg=="2"){
					$('input[name="humanGenerative"]:radio:input[value="2"]').attr('checked', 'checked'); 
				}
			}
			$("#humanEnteringDate").val(result.humanEnteringDate); //입사일자
			
			if(result.careerNo){
				var param = {};
				param["careerNo"] = result.careerNo;
				AjaxUtil("hrm/career", param, callback2);
			}
			$("#humanKorName").val(result.humanKorName);
			$("#humanKorName").val(result.humanKorName);
			$("#humanKorName").val(result.humanKorName);
			$("#humanKorName").val(result.humanKorName);
			$("#humanKorName").val(result.humanKorName);
			$("#humanKorName").val(result.humanKorName);
		}
		
		
	}
	
	var globalTarget = {};
	$(document).ready(function() {
		var param = {};
		param["humanNo"] = "<%=request.getParameter("humanNo")%>";
			
		
		AjaxUtil("hrm/select", param, callback);
		
		$('div[id*="outTd"]').click(function(){
			var url = this.getAttribute("data-url"); 
			var tableId = this.getAttribute("data-tableName"); 
			var searchId = this.getAttribute("data-search");
			if(url && tableId && searchId){
				globalTarget.url = url;
				globalTarget.tableId = tableId;
				globalTarget.searchId = searchId;
				globalTarget.obj = this.firstElementChild;
				globalTarget.obj2 = this.lastElementChild;
				var aul = new AjaxUtilList(url,tableId, searchId,null, null, null, null, null, initEvent);
				aul.send();
			}
		})
	});
	
</script>
<div class="container">
	<table id="table" data-height="460"
		class="table table-bordered table-hover">
		<tr><td> 인사관리 </td></tr>
	</table>

	<table id="table" data-height="460"
		class="table table-bordered table-hover">
		<tr>
			<td rowspan="9" align="center" style="vertical-align: middle"><img
				id="uploadPreview" style="width: 200px; height: 350px;" /></td>
			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">사원번호</td>
			<td class="col-md-2"><input type="text" class="form-control" value="<%=request.getParameter("humanNo")%>" disabled/></td>

			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">성명</td>
			<td class="col-md-4"><input type="text" class="form-control" id="humanKorName"/></td>
		</tr>

		<tr>
			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">영어성명</td>
			<td class="col-md-2"><input type="text" class="form-control" id="humanEngName"/></td>

			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">제2외국어</td>
			<td class="col-md-4"><input type="text" class="form-control" id="humanSecondLanguage"/></td>
		</tr>

		<tr>
			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">주민등록번호</td>
			<td class="col-md-2"><input type="text"
				class="form-control form-min" size="6" id="humanResidentNumber1"/> - <input type="text"
				class="form-control form-min" size="7" id="humanResidentNumber2"/></td>

			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">세대주여부</td>
			<td class="col-md-4">
				<div class="radio-inline">
		  			<label>
						<input type="radio" id="humanGenerative1" name="humanGenerative" value="1" />세대주
					</label>
				</div>
				
				<div class="radio-inline">
		  			<label>
						<input type="radio" id="humanGenerative2" name="humanGenerative" value="2" />세대원
					</label>
				</div>
			</td>
		</tr>

		<tr>
			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">입사일자</td>
			<td class="col-md-2"><input type="date" class="form-control" id="humanEnteringDate"/></td>
			
			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">입사구분</td>
			<td class="col-md-4" style="vertical-align: middle">
				<div id="outTd1" data-tableName="careerTable" data-url="hrm/careerList" data-search="careerName" >
					<input class="form-control form-min3" type="text" id="careerCode" name="test" data-url="hrm/career" size="10"
					 onkeypress="if(event.keyCode==13) {searchClass(this); return false;}">
<script>
	function searchClass(obj){
		var param = {};
		param[obj.id] = obj.value;
		alert(obj.value);
		alert(obj.getAttribute("data-url"));
		var url = "${rootPath}/" + obj.getAttribute("data-url");
		var tableId = obj.getAttribute("id");
		var searchValue = obj.value;
		var param = {};
		param["careerCode"] = searchValue;
		//입사구분,직급,직책,부서코드,프로젝트,은행 모두 이 이벤트 적용.
		//화면에서 엔터만으로도 찾을수있게할것.
		//나중에 에이작스로 보내서 받아올것.
		param = JSON.stringify(param);
		$.ajax({ 
	        type     : "POST"
	    ,   url      : url
	    ,   dataType : "json" 
	    ,   beforeSend: function(xhr) {
	        xhr.setRequestHeader("Accept", "application/json");
	        xhr.setRequestHeader("Content-Type", "application/json");
	    }
	    ,   data     : param
	    ,   success : function(result){
// 	    	var resultArr = result[0].split(",");
	    	var list = result[0];
	    	console.log(list);
	    	var listArr = list.split;
	    	alert(listArr);
	    	obj.closest("div").firstElementChild.value=result[0].careerCode;
	    	obj.closest("div").lastElementChild.value=result[0].careerName;
		       alert(result[0].careerCode);
	    	if(result.data=="S"){
	    		location.href="${rootPath}" + result.url;
	    	}
	    }
	    ,   error : function(xhr, status, e) {
	          alert("에러 : "+e);
	   },
	   done : function(e) {
	   }
	   })
	}
	
</script>
					<!-- 돋보기 버튼 누르면 팝업창 -->
					<button type="button" data-toggle="modal" data-target="#myModal1" class="btn btn-default btn-sm">
  						<span class="glyphicon glyphicon-search" aria-hidden="true" style=""></span>
					</button>
					
					<!-- 입사구분에서 입사구분이름 나오는곳 -->
					<input class="form-control form-min" type="text" id="careerNameInput" size="10" disabled/>
				
				</div> 
				<!-- 모달 팝업 -->
				<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true" >
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">
									<span aria-hidden="true">×</span><span class="sr-only">Close</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">입사구분</h4>
							</div>
							<div class="modal-body">
								<table class="tableList" id="searchTable" >
									<tr><td>코드 또는 이름을 검색하세요</td></tr>
									<tr><td>
									<input id="searchContent" name="searchContent"><input type="button" value="검색">
									</td></tr>
								</table>
								<table class="tableList" id="careerTable" >
									<thead>
										<tr>
											<th data-field="careerCode">그룹 코드</th>
											<th data-field="careerName">그룹명</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
								<input type="hidden" id="careerName">
							</div></div></div>
				</div></td>
		</tr>

		<tr>
			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">직위/직급</td>
			<td class="col-md-2" style="vertical-align: middle">
				<div id="outTd2" data-tableName="rankTable" data-url="hrm/rank" data-search="rankName">
					<input class="form-control form-min3" type="text" id="careerCode" name="test" size="10"
					 onkeypress="if(event.keyCode==13) {searchClass(this); return false;}">
					
					<!-- 돋보기 버튼 누르면 팝업창 -->
					<button type="button" data-toggle="modal" data-target="#myModal2" class="btn btn-default btn-sm">
  						<span class="glyphicon glyphicon-search" aria-hidden="true" style=""></span>
					</button>					
					
					<!-- 입사구분에서 입사구분이름 나오는곳 -->
					<input class="form-control form-min" type="text" id="rankNameInput" size="10" disabled/>
				</div> 
				
				<!-- 모달 팝업 -->
				<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">
									<span aria-hidden="true">×</span><span class="sr-only">Close</span>
								</button>
								<h4 class="modal-title" id="myModalLabel2">직위/직급</h4>
							</div>
							<div class="modal-body">
							<table class="tableList" id="rankTable">
									<thead>
										<tr>
											<th data-field="rankCode">직급 코드</th>
											<th data-field="rankName">직급명</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
								<input type="hidden" id="rankName">
							</div></div></div>
				</div></td>

			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">직책</td>
			<td class="col-md-4" style="vertical-align: middle"><div id="outTd3" data-tableName="positionTable" data-url="hrm/position" data-search="positionName" >
					<input class="form-control form-min3" type="text" id="careerCode" name="test" size="10"
					 onkeypress="if(event.keyCode==13) {searchClass(this); return false;}">
					<!-- 돋보기 버튼 누르면 팝업창 -->
					<button type="button" data-toggle="modal" data-target="#myModal3" class="btn btn-default btn-sm">
  						<span class="glyphicon glyphicon-search" aria-hidden="true" style=""></span>
					</button>					
					<!-- 입사구분에서 입사구분이름 나오는곳 -->
					<input class="form-control form-min" type="text" id="positionName" size="10" disabled/>
				</div> 
				<!-- 모달 팝업 -->
				<div class="modal fade" id="myModal3" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">
									<span aria-hidden="true">×</span><span class="sr-only">Close</span>
								</button>
								<h4 class="modal-title" id="myModalLabel3">직책</h4>
							</div>
							<div class="modal-body">
							<table class="tableList" id="positionTable">
									<thead>
										<tr>
											<th data-field="positionCode">그룹 코드</th>
											<th data-field="positionName">그룹명</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
								<input type="hidden" id="positionName">
							</div></div></div>
				</div></td>
		</tr>

		<tr>
			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">퇴사일자</td>
			<td class="col-md-2"><input type="date" class="form-control" id="humanLeaveDate"/></td>

			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">퇴사사유</td>
			<td class="col-md-4"><input type="text" class="form-control" id="humanLeaveReason"/></td>
		</tr>

		<tr>
			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">전화</td>
			<td class="col-md-2"><input type="text" class="form-control" id="humanHomenum"/></td>

			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">휴대폰</td>
			<td class="col-md-4"><input type="text" class="form-control" id="humanPhonenum"/></td>
		</tr>

		<tr>
			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">여권번호</td>
			<td class="col-md-2"><input type="text" class="form-control" id="humanPassportNumber"/></td>

			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">Email</td>
			<td class="col-md-4"><input type="email" class="form-control" id="humanEmail"/></td>
		</tr>

		<tr>
			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">부서코드</td>
			<td class="col-md-3" style="vertical-align: middle"><div id="outTd4" data-tableName="departmentTable" data-url="hrm/department" data-search="departmentName" >
					<input class="form-control form-min3" type="text" id="careerCode" name="test" size="10"
					 onkeypress="if(event.keyCode==13) {searchClass(this); return false;}">
					<!-- 돋보기 버튼 누르면 팝업창 -->
					<button type="button" data-toggle="modal" data-target="#myModal4" class="btn btn-default btn-sm">
  						<span class="glyphicon glyphicon-search" aria-hidden="true" style=""></span>
					</button>					
					<!-- 입사구분에서 입사구분이름 나오는곳 -->
					<input class="form-control form-min" type="text" id="departmentNameInput" size="10" disabled/>
				</div> 
				<!-- 모달 팝업 -->
				<div class="modal fade" id="myModal4" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">
									<span aria-hidden="true">×</span><span class="sr-only">Close</span>
								</button>
								<h4 class="modal-title" id="myModalLabel4">부서코드</h4>
							</div>
							<div class="modal-body">
							<table class="tableList" id="departmentTable">
									<thead>
										<tr>
											<th data-field="departmentCode">부서 코드</th>
											<th data-field="departmentName">부서명</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
								<input type="hidden" id="departmentName">
							</div></div></div>
				</div></td>

			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">프로젝트</td>
			<td class="col-md-4" style="vertical-align: middle"><div id="outTd5" data-tableName="projectTable" data-url="hrm/project" data-search="projectName" >
					<input class="form-control form-min3" type="text" id="careerCode" name="test" size="10"
					 onkeypress="if(event.keyCode==13) {searchClass(this); return false;}">
					<!-- 돋보기 버튼 누르면 팝업창 -->
					<button type="button" data-toggle="modal" data-target="#myModal5" class="btn btn-default btn-sm">
  						<span class="glyphicon glyphicon-search" aria-hidden="true" style=""></span>
					</button>					
					<!-- 입사구분에서 입사구분이름 나오는곳 -->
					<input class="form-control form-min" type="text" id="projectNameInput" size="10" disabled/>
				</div> 
				<!-- 모달 팝업 -->
				<div class="modal fade" id="myModal5" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">
									<span aria-hidden="true">×</span><span class="sr-only">Close</span>
								</button>
								<h4 class="modal-title" id="myModalLabel5">프로젝트</h4>
							</div>
							<div class="modal-body">
							<table class="tableList" id="projectTable">
									<thead>
										<tr>
											<th data-field="projectCode">프로젝트 코드</th>
											<th data-field="projectName">프로젝트명</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
								<input type="hidden" id="projectName">
							</div></div></div>
				</div></td>
		</tr>

		<tr>
			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">급여통장</td>
			<td class="col-md-4" colspan="4" style="vertical-align: middle">은행명 :
				<div id="outTd6" style="display: inline" data-tableName="bankTable" data-url="bank/list" data-search="bankName" >
					<input class="form-control form-min3" type="text" id="bankCode" name="test" size="10"
					 onkeypress="if(event.keyCode==13) {searchClass(this); return false;}">
					<!-- 돋보기 버튼 누르면 팝업창 -->
					<button type="button" data-toggle="modal" data-target="#myModal6" class="btn btn-default btn-sm">
  						<span class="glyphicon glyphicon-search" aria-hidden="true" style=""></span>
					</button>					
					<!-- 입사구분에서 입사구분이름 나오는곳 -->
					<input class="form-control form-min2" type="text" id="bankNameInput" size="10" disabled/>
				</div> 
				<!-- 모달 팝업 -->
				<div class="modal fade" id="myModal6" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">
									<span aria-hidden="true">×</span><span class="sr-only">Close</span>
								</button>
								<h4 class="modal-title" id="myModalLabel6">은행검색</h4>
							</div>
							<div class="modal-body">
							<table class="tableList" id="bankTable">
									<thead>
										<tr>
											<th data-field="bankCode">은행 코드</th>
											<th data-field="bankName">은행명</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
								<input type="hidden" id="bankName">
							</div></div></div>
				</div> 계좌번호 : <input type="text" class="form-control form-min2" id="humanAccountNumber">
				예금주 : <input type="text" class="form-control form-min" id="humanAccountName">
			</td>
		</tr>

		<tr>
			<td class="col-md-2" rowspan="2" style="vertical-align: middle"
				bgcolor="cccccc">주소</td>
			<td class="col-md-4" colspan="4"><a href='#javascript'
				onclick='searchAddress()'>우편번호검색 :  <input class="form-control form-min"/></a></td>
		</tr>
		<tr>
			<td class="col-md-4" colspan="4">상세주소<textarea class="form-control"> </textarea></td>
		</tr>

		<tr>
			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">적요</td>
			<td class="col-md-4" colspan="4"><input type="text" class="form-control" id="humanEtc"></input></td>
		</tr>


		<tr>
			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">사진</td>
			<td class="col-md-4" colspan="4"><input id="uploadImage"
				type="file" name="myPhoto" onchange="PreviewImage()"
				style="float: left" /><a onclick="deletePic()" style="float: left">사진삭제</a></td>
		</tr>

		<tr>
			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">첨부파일</td>
			<td class="col-md-4" colspan="4"><input type="file" /></td>
		</tr>

		<tr>
			<td class="col-md-2" style="vertical-align: middle" bgcolor="cccccc">개인파일함</td>
			<td class="col-md-4" colspan="4"><input type="file" /></td>
		</tr>
	</table>
	<input type="button" value="저장" /><input type="button" value="신규" /><input
		type="button" value="삭제" /><input type="button" value="리스트" />
</div>

<style>
.form-control.form-min {
	width: 124px;
	display: inline;
}

.form-control.form-min2 {
	width: 250px;
	display: inline;
}

.form-control.form-min3 {
	width: 80px;
	display: inline;
}

.modal-backdrop {
	z-index: -1;
}
</style>
