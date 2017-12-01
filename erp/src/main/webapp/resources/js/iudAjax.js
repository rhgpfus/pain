function iudAjax(url){
	var params = "";
	$("input[name]").each(function(key,val){
		if(val.getAttribute("name")){
			params += val.getAttribute("name") + ",";
		}
	}); 
	params = params.substr(0,params.length-1);  // , 없애주기위해
	var aui = new AjaxUtil(url,params);
	aui.send();
}

function modalOpen2(url){
	$("input[name]").each(function(key,val){
		if(val.type==="radio" || val.type==="hidden"){
			val.checked = false;
		}else{
			val.value="";
		}
	});
	$("#changeButton").html("<button type='button' class='btn btn-primary' onclick='iudAjax(\""+url+"\")'>저장</button>");
	$("#myModal").modal("show");
}

function searchName(url, tableName, searchName){
	var aul = new AjaxUtilList(url,"hrmTable",searchName);
	aul.send();
}