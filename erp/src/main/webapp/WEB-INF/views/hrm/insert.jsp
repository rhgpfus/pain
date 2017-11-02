<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>

<script type="text/javascript">
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

	function initEvent() {
		$('div[id*="myModal"] table[id="' + globalTarget.tableId
						+ '"] tbody tr').click(function() {
			var str = this.firstChild.innerText
			var str2 = this.lastChild.innerText;
			globalTarget.obj.value = str;
			globalTarget.obj2.value = str2;
			globalTarget.btn.click(); 
		})
	}

	var globalTarget = {};
	$(document).ready(
			function() {
				$('div[id*="outTd"]').click(
						function() {
							var url = this.getAttribute("data-url");
							var tableId = this.getAttribute("data-tableName");
							var searchId = this.getAttribute("data-search");
							if (url && tableId && searchId) {
								globalTarget.url = url;
								globalTarget.tableId = tableId;
								globalTarget.searchId = searchId;
								globalTarget.obj = this.firstElementChild;
								globalTarget.btn = this.getElementsByTagName("button")[0];
								globalTarget.obj2 = this.lastElementChild;
								var aul = new AjaxUtilList(url, tableId,
										searchId, null, null, null, null, null, initEvent);
								aul.send();
							}
						})
			});
	//검색 단추를 누르면 팝업 레이어가 열리도록 설정한다
	$(function() {
		$("#postcodify_search_button").postcodifyPopUp();
	});
</script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<div class="container">

	<h1 class="topName">인사 등록</h1>
	
	<table id="table" data-height="460"
		class="table table-bordered table-hover">
		<tr>
			<td rowspan="9" style="vertical-align: middle"><img
				id="uploadPreview" style="width: 200px; height: 350px;" /></td>
			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">사원번호</td>
			<td class="col-md-2"><input type="text" class="form-control" disabled/></td>

			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">성명</td>
			<td class="col-md-4"><input type="text" class="form-control" id="humanKorName" name="humanKorName"/></td>
		</tr>

		<tr>
			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">영어 성명</td>
			<td class="col-md-2"><input type="text" class="form-control"  id="humanEngName" name="humanEngName"/></td>

			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">제2외국어</td>
			<td class="col-md-4"><input type="text" class="form-control" id="humanSecondLanguage" name="humanSecondLanguage"/></td>
		</tr>

		<tr>
			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">주민등록번호</td>
			<td class="col-md-2"><input type="text"
				class="form-control form-min" size="6" id="humanResidentNumber" name="humanResidentNumber" data-multi="humanResidentNumber"/> - <input type="text"
				class="form-control form-min" size="7" data-multi="humanResidentNumber"/></td>

			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">세대주
				여부</td>
			<td class="col-md-4" style="vertical-align: middle"><div class="radio-inline">
		  			<label>
						<input type="radio" id="humanGenerative" name="humanGenerative" value="1" />세대주
					</label>
				</div>
				
				<div class="radio-inline">
		  			<label>
						<input type="radio" id="humanGenerative2" name="humanGenerative" value="2" />세대원
					</label>
				</div></td>
		</tr>

		<tr>
			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">입사일자</td>
			<td class="col-md-2"><input type="date" class="form-control" id="humanEnteringDate" name="humanEnteringDate"/></td>

			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">입사구분</td>
			<td class="col-md-4" style="vertical-align: middle"><div
					id="outTd1" data-tableName="careerTable" data-url="career/list"
					data-search="careerName">

					<input class="form-control form-min3" type="text" id="careerCode" data-url="career/search" size="10"
						onkeypress="if(event.keyCode==13) {searchClass(this); return false;}">
					<script>
						function searchClass(obj) {
							var param = {};
							param[obj.id] = obj.value;
							var url = "${rootPath}/"
									+ obj.getAttribute("data-url");
							var tableId = obj.getAttribute("id");
							var param = {};
							param[tableId] = obj.value;
							//입사구분,직급,직책,부서코드,프로젝트,은행 모두 이 이벤트 적용.
							//화면에서 엔터만으로도 찾을수있게할것.
							//나중에 에이작스로 보내서 받아올것.
							param = JSON.stringify(param);
							$.ajax({
										type : "POST",
										url : url,
										dataType : "json",
										beforeSend : function(xhr) {
											xhr.setRequestHeader("Accept",
													"application/json");
											xhr.setRequestHeader(
													"Content-Type",
													"application/json");
										},
										data : param,
										success : function(result) {
											var keyList = Object.keys(result);
											obj.closest("div").firstElementChild.value = result[keyList[1]];
											obj.closest("div").lastElementChild.value = result[keyList[2]];
										},
										error : function(xhr, status, e) {
											alert("에러 : " + e);
										},
										done : function(e) {
										}
									})
						}
					</script>
					<!-- 돋보기 버튼 누르면 팝업창 -->
					<button type="button" data-toggle="modal" data-target="#myModal1"
						class="btn btn-default btn-sm">
						<span class="glyphicon glyphicon-search" aria-hidden="true"
							style=""></span>
					</button>

					<!-- 입사구분에서 입사구분이름 나오는곳 -->
					<input class="form-control form-min" type="text"
						id="careerName" size="10" disabled />

				</div> <!-- 모달 팝업 -->
				<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">
									<span aria-hidden="true">×</span><span class="sr-only">Close</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">입사구분</h4>
							</div>
							<div class="modal-body">
								<table id="searchTable">
									<tr class="listTr">
										<td>코드 또는 이름을 검색하세요</td>
									</tr>
									<tr>
										<td><input id="searchContent" n="searchContent"><input
											type="button" value="검색"></td>
									</tr>
								</table>
								<table class="tableList" id="careerTable">
									<thead>
										<tr class="listTr">
											<th class="listTh" data-field="careerCode">그룹 코드</th>
											<th class="listTh" data-field="careerName">그룹명</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
<!-- 								<input type="hidden" id="careerName"> -->
							</div>
						</div>
					</div>
				</div></td>
		</tr>

		<tr>
			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">직위/직급</td>
			<td class="col-md-2" style="vertical-align: middle"><div
					id="outTd2" data-tableName="rankTable" data-url="rank/list"
					data-search="rankName">
					<input class="form-control form-min3" type="text" id="rankCode" data-url="rank/search" size="10"
						onkeypress="if(event.keyCode==13) {searchClass(this); return false;}">
					<!-- 돋보기 버튼 누르면 팝업창 -->
					<button type="button" data-toggle="modal" data-target="#myModal2"
						class="btn btn-default btn-sm">
						<span class="glyphicon glyphicon-search" aria-hidden="true"
							style=""></span>
					</button>
					<!-- 입사구분에서 입사구분이름 나오는곳 -->
					<input class="form-control form-min" type="text" id="rankName"
						size="10" disabled />
				</div> <!-- 모달 팝업 -->
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
										<tr class="listTr">
											<th class="listTh" data-field="rankCode">직급 코드</th>
											<th class="listTh" data-field="rankName">직급명</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
<!-- 								<input type="hidden" id="rankName"> -->
							</div>
						</div>
					</div>
				</div></td>

			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">직책</td>
			<td class="col-md-4" style="vertical-align: middle"><div
					id="outTd3" data-tableName="positionTable" data-url="position/list"
					data-search="positionName">
					<input class="form-control form-min3" type="text" id="positionCode" data-url="position/search" size="10"
						onkeypress="if(event.keyCode==13) {searchClass(this); return false;}">
					<!-- 돋보기 버튼 누르면 팝업창 -->
					<button type="button" data-toggle="modal" data-target="#myModal3"
						class="btn btn-default btn-sm">
						<span class="glyphicon glyphicon-search" aria-hidden="true"
							style=""></span>
					</button>
					<!-- 입사구분에서 입사구분이름 나오는곳 -->
					<input class="form-control form-min" type="text" id="positionName"
						size="10" disabled />
				</div> <!-- 모달 팝업 -->
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
										<tr class="listTr">
											<th class="listTh" data-field="positionCode">그룹 코드</th>
											<th class="listTh" data-field="positionName">그룹명</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
<!-- 								<input type="hidden" id="positionName"> -->
							</div>
						</div>
					</div>
				</div></td>
		</tr>

		<tr>
			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">퇴사일자</td>
			<td class="col-md-2"><input type="date" class="form-control" id="humanLeaveDate" name="humanLeaveDate"/></td>

			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">퇴사사유</td>
			<td class="col-md-4"><input type="text" class="form-control" id="humanLeaveReason"/></td>
		</tr>

		<tr>
			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">전화</td>
			<td class="col-md-2"><input type="text" class="form-control" id="humanHomeNum" name="humanHomeNum"/></td>
			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">휴대폰</td>
			<td class="col-md-4"><input type="text" class="form-control" id="humanPhoneNum" name="humanPhoneNum"/></td>
		</tr>

		<tr>
			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">여권번호</td>
			<td class="col-md-2"><input type="text" class="form-control" id="humanPassportNumber" name="humanPassportNumber"/></td>

			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">Email</td>
			<td class="col-md-4"><input type="email" class="form-control" id="humanEmail" name="humanEmail"/></td>
		</tr>

		<tr>
			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">부서코드</td>
			<td class="col-md-3" style="vertical-align: middle"><div
					id="outTd4" data-tableName="departmentTable"
					data-url="department/list" data-search="departmentName">
					<input class="form-control form-min3" type="text"
						id="departmentCode"	data-url="department/search" size="10"
						onkeypress="if(event.keyCode==13) {searchClass(this); return false;}">
					<!-- 돋보기 버튼 누르면 팝업창 -->
					<button type="button" data-toggle="modal" data-target="#myModal4"
						class="btn btn-default btn-sm">
						<span class="glyphicon glyphicon-search" aria-hidden="true"
							style=""></span>
					</button>
					<!-- 입사구분에서 입사구분이름 나오는곳 -->
					<input class="form-control form-min" type="text"
						id="departmentName" size="10" disabled />
				</div> <!-- 모달 팝업 -->
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
										<tr class="listTr">
											<th class="listTh" data-field="departmentCode">부서 코드</th>
											<th class="listTh" data-field="departmentName">부서명</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
<!-- 								<input type="hidden" id="departmentName"> -->
							</div>
						</div>
					</div>
				</div></td>

			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">프로젝트</td>
			<td class="col-md-4" style="vertical-align: middle"><div
					id="outTd5" data-tableName="projectTable" data-url="project/list"
					data-search="projectName">
					<input class="form-control form-min3" type="text" id="projectCode" data-url="project/search" size="10"
						onkeypress="if(event.keyCode==13) {searchClass(this); return false;}">
					<!-- 돋보기 버튼 누르면 팝업창 -->
					<button type="button" data-toggle="modal" data-target="#myModal5"
						class="btn btn-default btn-sm">
						<span class="glyphicon glyphicon-search" aria-hidden="true"
							style=""></span>
					</button>
					<!-- 입사구분에서 입사구분이름 나오는곳 -->
					<input class="form-control form-min" type="text"
						id="projectName" size="10" disabled />
				</div> <!-- 모달 팝업 -->
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
										<tr class="listTr">
											<th class="listTh" data-field="projectCode">프로젝트 코드</th>
											<th class="listTh" data-field="projectName">프로젝트명</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
<!-- 								<input type="hidden" id="projectName"> -->
							</div>
						</div>
					</div>
				</div></td>
		</tr>

		<tr>
			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">급여통장</td>
			<td class="col-md-4" colspan="4" style="vertical-align: middle">
				<div id="outTd6" style="display: inline" data-tableName="bankTable"
					data-url="bank/list" data-search="bankName">
					<input class="form-control form-min3" type="text" id="bankCode"	data-url="bank/search" size="10"
						onkeypress="if(event.keyCode==13) {searchClass(this); return false;}">
					<!-- 돋보기 버튼 누르면 팝업창 -->
					<button type="button" data-toggle="modal" data-target="#myModal6"
						class="btn btn-default btn-sm">
						<span class="glyphicon glyphicon-search" aria-hidden="true"
							style=""></span>
					</button>
					<!-- 입사구분에서 입사구분이름 나오는곳 -->
					<input class="form-control form-min2" type="text"
						id="bankName" size="10" disabled />
				</div> <!-- 모달 팝업 -->
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
										<tr class="listTr">
											<th class="listTh" data-field="bankCode">은행 코드</th>
											<th class="listTh" data-field="bankName">은행명</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
<!-- 								<input type="hidden" id="bankName"> -->
							</div>
						</div>
					</div>
				</div> 계좌번호 : <input type="text" class="form-control form-min2" id="humanAccountNumber" name="humanAccountNumber" >
				예금주 : <input type="text" class="form-control form-min" id="humanAccountName" name="humanAccountName">
			</td>
		</tr>

		<tr>
			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">주소</td>
			<td class="col-md-4" colspan="4" align="left">
				<!-- 주소와 우편번호를 입력할 <input>들을 생성하고 적당한 name과 class를 부여한다 --> <a
				id="postcodify_search_button">우편번호검색 <input type="text" n="" class="postcodify_postcode5 form-control form-min3" value="" /><br /></a> 
					도로명주소 <input type="text" id="humanAddress" name="humanAddress" class="postcodify_address form-control" value=""  data-multi="humanAddress"/>
				상세주소 <input type="text" n="" class="postcodify_details form-control" value=""  data-multi="humanAddress"/>
			</td>
		</tr>

		<tr>
			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">적요</td>
			<td class="col-md-4" colspan="4"><input type="text"
				class="form-control"></input></td>
		</tr>


		<tr>
			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">사진</td>
			<td class="col-md-4" colspan="4"><input id="uploadImage"
				type="file" n="myPhoto" onchange="PreviewImage()"
				style="float: left" /><a onclick="deletePic()" style="float: left">사진삭제</a></td>
		</tr>

		<tr>
			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">첨부파일</td>
			<td class="col-md-4" colspan="4"><input type="file" /></td>
		</tr>

		<tr>
			<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">개인파일함</td>
			<td class="col-md-4" colspan="4"><input type="file" /></td>
		</tr>
		<tr>
			<td  align="center" colspan="6">
				<button type="button"  id="save" >저장</button> <button type="button" onclick="pageMove('hrm/list')" >리스트</button>
			</td> 
		</tr>
	</table>
</div>
<script>
function getNamesFromInputTags(){
	var names = "";
	$("input[name]").each(function(idx,element){
		if(element.getAttribute("data-id")){
			var dataId = element.getAttribute("data-id");
			if(ids.indexOf(dataId)==-1){
				
			}
		}else{
			names += element.name+",";
		}
	});
	return names.substr(0,names.length-1);
}
$(document).ready(function(){
	$("#save").click(function(){
		var params = getNamesFromInputTags();
		alert(params);
		var au = new AjaxUtil('hrm/insert',params);
		au.send();
	})
})
</script>
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
