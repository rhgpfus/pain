function iudAjax(url, id){
	var params = "";
	$("input[id*="+id+"]").each(function(key,val){
		if(val.getAttribute("id")){
			params += val.getAttribute("id") + ",";
		}
	}); 
	params = params.substr(0,params.length-1);  // , 없애주기위해
	var aui = new AjaxUtil(url,params);
	aui.send();
}

function modalOpen2(url, id){
	$("input[id*="+id+"]").each(function(key,val){
		val.value="";
	});
	$("#changeButton").html("<button type='button' class='btn btn-primary' onclick='iudAjax(\""+url+"\", \""+ id +"\")'>저장</button>");
	$("#myModal").modal("show");
}

function searchName(url, tableName, searchName){
	var aul = new AjaxUtilList(url,"hrmTable",searchName);
	aul.send();
}