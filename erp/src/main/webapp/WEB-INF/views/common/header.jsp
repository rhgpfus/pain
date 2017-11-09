<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ include file="/WEB-INF/views/common/common.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Deployed Resources -> webapp -> resources에 있는 파일들 참조. -->

<!-- js -->
<script src="<c:url value='/resources/js/jquery-3.2.1.js?version=${pVar}' />"></script>
<script
	src="<c:url value="/resources/js/jquery-ui-1.9.2.custom.js?version=${pVar}"/>"></script>
<script
	src="<c:url value="/resources/js/jquery.fileupload.js?version=${pVar}"/>"></script>
<script
	src="<c:url value="/resources/js/jquery.iframe-transport.js?version=${pVar}"/>"></script>
<script
	src="<c:url value="/resources/ui/btsp3.7.7/js/bootstrap.min.js?version=${pVar}"/>"></script>
<script
	src="<c:url value="/resources/ui/btsp3.7.7/js/bootstrap-table.js?version=${pVar}"/>"></script>
<script
	src="<c:url value="/resources/ui/btsp3.7.7/js/bootstrap-table.js?version=${pVar}"/>"></script>
<script
	src="<c:url value="/resources/js/iudAjax.js?version=${pVar}"/>"></script>

<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>	

<!--  css -->
<link rel="stylesheet"
	href="<c:url value="/resources/ui/btsp3.7.7/css/bootstrap-theme.min.css?version=${pVar}"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/ui/btsp3.7.7/css/bootstrap.min.css?version=${pVar}"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/ui/btsp3.7.7/css/bootstrap-table.css?version=${pVar}"/>" />
<link rel="stylesheet"
	href="<c:url value='/resources/css/bootstrap.min.css?version=${pVar}'/>" />
<link rel="stylesheet"
	href="<c:url value='/resources/css/dashboard.css?version=${pVar}'/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/tableList.css?version=${pVar}"/>" />

<script>
	// 오늘 일자
	var thisDate = new Date('<fmt:formatDate pattern = "yyyy-MM-dd" value = "${now}" />');
	//페이지 이동
	var pageMove = function(p_page, p_colName, p_param){
		var page = p_page;
		var colName = p_colName;
		var param = p_param;
		if(colName!=null && param!=null){
			location.href = "${rootPath}/" + page + "?" + colName + "=" + param;
			return;
		}
		location.href = "${rootPath}/" + page;
	}
	
	//모달창(325번째줄에 modalOpen()파라메터를 추가하였고 59,60,61,62번째줄 추가)
	var modalOpen = function(no, p_colName , p_param){
		var param = {};
		param[p_colName] = p_param;
		$("input[name='iud0']").val(no);
		$("input[name='iud1']").val(p_colName);
		$("input[name='iud2']").val(p_param);
		$("#myModal").modal("show");
		
		alert(param[p_colName]);
	}
	//sidebar를 숨기는 기능으로 탑메뉴 클릭시 바뀌게 만듬
	$(document).ready(
			function() {
				var nowUrl = "${nowUrl}";
				var obj = $("a[href='" + nowUrl + "']").parent().attr("class",
						"active");
				if(nowUrl.indexOf("item")!=-1 || nowUrl.indexOf("client")!=-1 || nowUrl.indexOf("purchase")!=-1 || nowUrl.indexOf("sale")!=-1 || nowUrl.indexOf("warehouse")!=-1){
					$("#human").attr("style","display:none");
					$("#item").attr("style","display:");
				}else{
					$("#human").attr("style","display:");
					$("#item").attr("style","display:none");
				}
			});
	
	var JSException = function(e){
		alert(e);
	}
	//로그인 Ajax
	var AjaxUtil = function(url, params, type, dataType) {
		if (!url) {
			alert("url정보가 없습니다.");
			return null;
		}
		this.url = "${rootPath}/" + url;

		var generateJSON = function(params) {
			if (!params)
				return "";
			var paramArr = params.split(",");
			var data = {};
			for (var i = 0, max = paramArr.length; i < max; i++) {
				var key = paramArr[i]
				if ($("#" + key).length > 1) {
					throw new JSException("동일 ID값이 존재함.");
				} else if ($("#" + key).length == 0) {
					throw new JSException(key + "에 해당하는 ID가 존재하지 않음.");
				}
				var obj = $("#" + key);
				var val = obj.val().trim();
				if(obj.attr("data-req")){
					if(val==""){
						obj.focus();
						throw new JSException(obj.attr("data-req"));
					}
				}
				var vals = "";
				if(obj.attr("data-multi")){
					$("[data-multi='" + key + "']").each(function(idx, element){
						if(vals){
							vals += "#multi#"+element.value;	
						}else{
							vals = element.value;
						}
					})
				}
				if(obj.attr("type")=="radio"){
					val = $('input[name="' + obj.attr("name") + '"]:checked').val();
					alert(val);
				}
				if(vals!=""){
					val = vals;
				}
				data[key] = val;
			}
			return JSON.stringify(data);
		}
		this.type = type ? type : "POST";
		this.dataType = dataType ? dataType : "json";
		this.param = generateJSON(params);
		this.callbackSuccess = function(json) {
			var url = json.url;
			var msg = json.msg;
			if (msg) {
				alert(msg);
			}
			if (url && url!="no-move") {
				pageMove(url);
				return;
			}
			var actions = json.action.split(",");
			if(actions){
				for(var i=0, max=actions.length;i<max;i++){
					if(actions[i]=="close"){
						$('.modal').modal('hide'); 
					}else if(actions[i]=="refresh"){
						location.reload();
					}
				}
			}
		}

		this.setCallbackSuccess = function(callback) {
			this.callbackSuccess = callback;
		}

		this.send = function() {
			$.ajax({
				type : this.type,
				url : this.url,
				dataType : this.dataType,
				beforeSend : function(xhr) {
					xhr.setRequestHeader("Accept", "application/json");
					xhr.setRequestHeader("Content-Type","application/json;charset=utf-8");
					xhr.setRequestHeader("AJAX", true);
				},
				data : this.param,
				success : this.callbackSuccess,
				error : function(xhr, status, e) {
					if (xhr.responseJSON) {
						var obj = xhr.responseJSON;
						alert(obj.msg);
						pageMove(obj.url);
						alert(obj.url);
					} else {
						alert("에러 : " + e);
					}
				},
				complete : function(e) {
				}
			});
		}
	}
	//버튼 생성 함수
	function makeBtnStr(insertUrl, excelUrl) {
		var btnStr = "";
		btnStr += "<div class='newButton'>";
		
		if (insertUrl) {
			btnStr += " <input type = 'button' class='btn btn-primary' value='신규' onclick='pageMove(\""
					+ insertUrl + "\")'/>";
		}

		if (excelUrl) {
			btnStr += " <input type = 'button' value='excel 파일' onclick='test(\""
					+ excelUrl + "\")'/>";
		}

		btnStr += "</div>";
		return btnStr;
	}
	
	var AjaxUtilInsertList = function(obj){
		var url = "${rootPath}/" + obj.url;
		var tableId = obj.tableId;
		var params = obj.params;
		var insertUrl = obj.insertUrl;
		var excelUrl = obj.excelUrl;
		var updateUrl = obj.updateUrl;
		var type = obj.type;
		var dataType = obj.dataType;
		var initEvent = obj.initEvent;
		var aul = new AjaxUtilList(url, tableId, params, insertUrl, excelUrl, updateUrl, 
				type, dataType, initEvent);
		aul.callbackSuccess = function(json) {
			var btnStr = makeBtnStr(insertUrl, excelUrl);
			if (btnStr != "") {
				var tableObj = document.getElementById(this.tableId);
				tableObj.insertAdjacentHTML("beforebegin", btnStr);
			}

			var theadObj = $("#" + this.tableId + " thead");
			var colInfos = new Array();

			theadObj.find('tr').each(function(key, val) {
				$(this).find('th').each(function(key, val) {
					colInfos[colInfos.length] = val.getAttribute("data-field");
				});
			});
			if (colInfos.length == 0) {
				alert("너 이샠히들 컬럼 정보 잘못짰어!!")
				return;
			}

			var tbodyStr = "";
			for (var i = 0, max = json.length; i < max; i++) {

				var row = json[i];
				var clickStr ="";
				if(updateUrl!=null && updateUrl=="hrm/update"){
					clickStr = "onclick='pageMove(\"" + updateUrl +  "\",\"" + colInfos[1] + "\",\"" + row[colInfos[1]] + "\")'";
				}else if(updateUrl!=null){
					
					clickStr = "onclick='modalOpen(\"" + colInfos[0] + "\",\"" + row[colInfos[0]] +"\")'";
				}
				tbodyStr += "<tr " + clickStr + " style='cursor:pointer'>";
				for (var j = 0, jMax = colInfos.length; j < jMax; j++) {
					tbodyStr += "<td class ='listTd'>";
					var colName = colInfos[j];
					if (colName == "checkbox") {
						tbodyStr += "<input type='checkbox'>";
					}else if (colName == "button") {
						tbodyStr += "<input type='button'>";
					}else if(row[colName] && row[colName]!='undefined'){
						tbodyStr += row[colName];
					}else{
						tbodyStr += '-';
					}
					tbodyStr += "</td>";
				}
				tbodyStr += "</tr>";
			}

			var tbodyObj = $("#" + this.tableId + " tbody");
			tbodyObj.html(tbodyStr);
			if(initEvent){
				initEvent();
			}
		}
		return aul;
	}
	//리스트 Ajax
	var AjaxUtilList = function(url, tableId, params, insertUrl, excelUrl, updateUrl, 
			type, dataType, initEvent) {
		if (!url) {
			alert("url정보가 없습니다.");
			return null;
		}
		this.url = "${rootPath}/" + url;
		var generateJSON = function(params) {
			if (!params)
				return "";
			var paramArr = params.split(",");
			var data = {};
			for (var i = 0, max = paramArr.length; i < max; i++) {
				var key = paramArr[i]
				if ($("#" + key).length > 1) {
					throw new JSException("동일 ID값이 존재함.");
				} else if ($("#" + key).length == 0) {
					throw new JSException(key + "에 해당하는 ID가 존재하지 않음.");
				}
				data[key] = $("#" + key).val();
			}
			return JSON.stringify(data);
		}
		this.type = type ? type : "POST";
		this.dataType = dataType ? dataType : "json";
		this.param = generateJSON(params);
		this.tableId = tableId;
		this.callbackSuccess = function(json) {
			var btnStr = makeBtnStr(insertUrl, excelUrl);
			if (btnStr != "") {
				var tableObj = document.getElementById(this.tableId);
				tableObj.insertAdjacentHTML("beforebegin", btnStr);
			}

			var theadObj = $("#" + this.tableId + " thead");
			var colInfos = new Array();

			theadObj.find('tr').each(function(key, val) {
				$(this).find('th').each(function(key, val) {
					colInfos[colInfos.length] = val.getAttribute("data-field");
				});
			});
			if (colInfos.length == 0) {
				alert("너 이샠히들 컬럼 정보 잘못짰어!!")
				return;
			}

			var tbodyStr = "";
			for (var i = 0, max = json.length; i < max; i++) {

				var row = json[i];
				var clickStr ="";
				if(updateUrl!=null && updateUrl=="hrm/update"){
					clickStr = "onclick='pageMove(\"" + updateUrl +  "\",\"" + colInfos[1] + "\",\"" + row[colInfos[1]] + "\")'";
				}else if(updateUrl!=null){
					
					clickStr = "onclick='modalOpen(\"" + row[colInfos[0]] + "\",\"" +  row[colInfos[1]] + "\",\"" + row[colInfos[2]] +"\")'";
				}
				tbodyStr += "<tr " + clickStr + " style='cursor:pointer'>";
				for (var j = 0, jMax = colInfos.length; j < jMax; j++) {
					tbodyStr += "<td class ='listTd'>";
					var colName = colInfos[j];
					if (colName == "checkbox") {
						tbodyStr += "<input type='checkbox'>";
					}else if (colName == "button") {
						tbodyStr += "<input type='button'>";
					}else if(row[colName] && row[colName]!='undefined'){
						tbodyStr += row[colName];
					}else{
						tbodyStr += '';
					}
					tbodyStr += "</td>";
				}
				tbodyStr += "</tr>";
			}

			var tbodyObj = $("#" + this.tableId + " tbody");
			tbodyObj.html(tbodyStr);
			if(initEvent){
				initEvent();
			}
		}

		this.setCallbackSuccess = function(callback) {
			this.callbackSuccess = callback;
		}

		this.send = function() {
			$.ajax({
				type : this.type,
				url : this.url,
				dataType : this.dataType,
				beforeSend : function(xhr) {
					xhr.setRequestHeader("Accept", "application/json");
					xhr.setRequestHeader("Content-Type",
							"application/json;charset=utf-8");
					xhr.setRequestHeader("AJAX", true);
				},
				data : this.param,
				success : this.callbackSuccess,
				error : function(xhr, status, e) {
					if (xhr.responseJSON) {
						var obj = xhr.responseJSON;
						alert(obj.url);
						alert(obj.msg);
						pageMove(obj.url);
					} else {
						alert("에러 : " + e);
					}
				},
				complete : function(e) {
				},
				tableId : this.tableId,
				insertUrl : insertUrl,
				excelUrl : excelUrl
			});
		}
	}
	
	//AjaxUtilHeaderItemList 공통단.
	var AjaxUtilHeaderItemList = function(url, tableIds, params, type, dataType) {
		if (!url) {
			alert("url정보가 없습니다.");
			return null;
		}
		this.url = "${rootPath}/" + url;
		var generateJSON = function(params) {
			if (!params)
				return "";
			var paramArr = params.split(",");
			var data = {};
			for (var i = 0, max = paramArr.length; i < max; i++) {
				var key = paramArr[i]
				if ($("#" + key).length > 1) {
					throw new JSException("동일 ID값이 존재함.");
				} else if ($("#" + key).length == 0) {
					throw new JSException(key + "에 해당하는 ID가 존재하지 않음.");
				}
				data[key] = $("#" + key).val();
			}
			return JSON.stringify(data);
		}
		this.type = type ? type : "POST";
		this.dataType = dataType ? dataType : "json";
		this.param = generateJSON(params);
		this.tableIds = tableIds;
		this.afterFunc = null;
		this.callbackSuccess = function(json) {
			var headerResult = json["header"];
			var tableHeadId = this.tableIds.split(",")[0];
			var tableItemId = this.tableIds.split(",")[1]; 

			var theadObj = $("#" + tableHeadId + " thead");
			var thInfos = theadObj.attr("data-th-infos").split(",");
			var thViews = theadObj.attr("data-th-views").split(",");
			var thCount = theadObj.attr("data-th-count"); 
			
			if(thInfos.length!=thViews.length){
				alert("컬럼과 보여줄 레이블의 갯수가 잘못됨.");
				return;
			}
			
			var theadStr = "";
			
			for(var idx=0, max=thInfos.length;idx<max;idx++){
				if(idx % thCount ==0){
					theadStr += "<tr>";
				}
				var thInfo = thInfos[idx];
				var thView = thViews[idx];
				theadStr +="<th>" + thView +"<th>";
				theadStr +="<td><input type='text' class='form-control' value=" + headerResult[thInfo] +"></td>"
				if(idx % thCount ==1){
					theadStr += "</tr>";
				}
			}
			theadObj.html(theadStr);

			var colInfos = new Array();

			theadObj = $("#" + tableItemId + " thead");
			
			theadObj.find('tr').each(function(key, val) {
				$(this).find('th').each(function(key, val) {
					colInfos[colInfos.length] = val.getAttribute("data-field");

				});
			});
			var headerResult = json["item"];
			var tbodyStr = "";
			for (var i = 0, max = headerResult.length; i < max; i++) {

				var row = headerResult[i];

				tbodyStr += "<tr>";
				for (var j = 0, jMax = colInfos.length; j < jMax; j++) {
					tbodyStr += "<td class ='listTd'>";
					var colName = colInfos[j];
					if (colName == "checkbox") {
						tbodyStr += "<input type='checkbox'>";
					} else if (colName == "button") {
						tbodyStr += "<input type='button'>";
					} else {
						tbodyStr += row[colName];
					}
					tbodyStr += "</td>";
				}
				tbodyStr += "</tr>";
			}

			var tbodyObj = $("#" + tableItemId + " tbody");
			tbodyObj.html(tbodyStr);
		}

		this.setCallbackSuccess = function(callback) {
			this.callbackSuccess = callback;
		}

		this.send = function() {
			console.log(this.afterFunc);
			$.ajax({
				type : this.type,
				url : this.url,
				dataType : this.dataType,
				beforeSend : function(xhr) {
					xhr.setRequestHeader("Accept", "application/json");
					xhr.setRequestHeader("Content-Type",
							"application/json;charset=utf-8");
					xhr.setRequestHeader("AJAX", true);
				},
				data : this.param,
				success : this.callbackSuccess,
				error : function(xhr, status, e) {
					if (xhr.responseJSON) {
						var obj = xhr.responseJSON;
						alert(obj.url);
						alert(obj.msg);
						pageMove(obj.url);
					} else {
						alert("에러 : " + e);
					}
				},
				complete : function(e) {
				},
				tableIds : this.tableIds,
				afterFunc : this.afterFunc
			});
		}
	}
//AjaxUpdateList 공통단

var AjaxUtilUpdateList = function(url, tableId, params, type, dataType) {
		if (!url) {
			alert("url정보가 없습니다.");
			return null;
		}
		this.url = "${rootPath}/" + url;
		var generateJSON = function(params) {
			if (!params)
				return "";
			var paramArr = params.split(",");
			var data = {};
			for (var i = 0, max = paramArr.length; i < max; i++) {
				var key = paramArr[i]
				if ($("#" + key).length > 1) {
					throw new JSException("동일 ID값이 존재함.");
				} else if ($("#" + key).length == 0) {
					throw new JSException(key + "에 해당하는 ID가 존재하지 않음.");
				}
				data[key] = $("#" + key).val();
			}
			return JSON.stringify(data);
		}
		this.type = type ? type : "POST";
		this.dataType = dataType ? dataType : "json";
		this.param = generateJSON(params);
		this.tableId = tableId;
		this.callbackSuccess = function(json) {

			var theadObj = $("#" + this.tableId + " thead");
			var colInfos = new Array();

			theadObj.find('tr').each(function(key, val) {
				$(this).find('th').each(function(key, val) {
					colInfos[colInfos.length] = val.getAttribute("data-field");

				});
			});
			if (colInfos.length == 0) {
				alert("너 이샠히들 컬럼 정보 잘못짰어!!")
				return;
			}

			var tbodyStr = "";
			for (var i = 0, max = json.length; i < max; i++) {

				var row = json[i];

				tbodyStr += "<tr>";
				for (var j = 0, jMax = colInfos.length; j < jMax; j++) {
					tbodyStr += "<td>";
					var colName = colInfos[j];
					if (colName == "checkbox") {
						tbodyStr += "<input type='checkbox'>";
					}else{
						tbodyStr += "<input type='text' class='form-control' value=" + row[colName] +">";
					}
					tbodyStr += "</td>";
				}
				tbodyStr += "</tr>";
				
			}
			
			

			var tbodyObj = $("#" + this.tableId + " tbody");
			tbodyObj.html(tbodyStr);
		}

		this.setCallbackSuccess = function(callback) {
			this.callbackSuccess = callback;
		}

		this.send = function() {
			$.ajax({
				type : this.type,
				url : this.url,
				dataType : this.dataType,
				beforeSend : function(xhr) {
					xhr.setRequestHeader("Accept", "application/json");
					xhr.setRequestHeader("Content-Type",
							"application/json;charset=utf-8");
					xhr.setRequestHeader("AJAX", true);
				},
				data : this.param,
				success : this.callbackSuccess,
				error : function(xhr, status, e) {
					if (xhr.responseJSON) {
						var obj = xhr.responseJSON;
						alert(obj.url);
						alert(obj.msg);
						pageMove(obj.url);
					} else {
						alert("에러 : " + e);
					}
				},
				complete : function(e) {
				},
				tableId : this.tableId,
			});
		}
	}

</script>