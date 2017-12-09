
function iudAjax(url){
	var params = "";
	$("input[name*='iud'][id]").each(function(key,val){
		if(val.getAttribute("id")){
			params += val.getAttribute("id") + ",";
		}
	}); 
	params = params.substr(0,params.length-1); // , 없애주기위해
	var aui = new AjaxUtil(url,params);
	aui.send();
}

function modalOpen2(url){
	$("input[name*='iud']").val("");
	$("#changeButton").html("<button type='button' class='btn btn-primary' onclick='iudAjax(\""+url+"\")'>저장</button>");
	$("#myModal").modal("show");
}