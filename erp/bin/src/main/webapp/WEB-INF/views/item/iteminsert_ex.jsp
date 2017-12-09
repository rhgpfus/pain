<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>


<script>
var makeTable = function(ti){
	var htmlStr = '';
	htmlStr += '<h1 class="topName">' + ti.title + '</h1>';
	htmlStr += '<table id="' + ti.id + '" data-height="460"';
	htmlStr += ' class="table table-bordered table-hover">';
	for(var idx=0,max=ti.cols.length;idx<max;idx++){
		if(idx % ti.tdCount==0){
			htmlStr+= '<tr>';
		}
		htmlStr += '<td class="col-md-2" align="center" style="vertical-align: middle" bgcolor="cccccc">';
		htmlStr += ti.labels[idx];
		htmlStr += '</td>';
		htmlStr += '<td class="col-md-4">';
		htmlStr += '<input type="text" class="form-control" id="'+ti.cols[idx]+'"/>';
		htmlStr += '</td>';
		if(idx % ti.tdCount==(ti.tdCount-1)){
			htmlStr+='</tr>';
		}
	}
	htmlStr += '</table>';
	return htmlStr;
}
$(document).ready(function(){
	var tableInfo = {
		id:"itemInsertTable",
		title:"품목입력",
		key:"itemNo",
		cols:["itemNo","img","itemCode","itemName","warehousingcost",
			"unstoringcost","itemdivision","createuser","createdate","modifieddata","modifieduser"],
		labels:['품목번호','이미지','품목코드','품목명','입고단가','품목구분',
			'출고단가','입력자','입력일자','수정자','수정일자'],			
		colTypes:["ro","str","str","str","int","int","str","int","str","int","str"],
		type:1,
		insertUrl:"item/iteminsert",
		listUrl:"item/itemlist",
		tdCount:2
	}
	var htmlStr = makeTable(tableInfo);
	$("#cont").html(htmlStr);
});

</script>

<title>품목 생성</title>
</head>
<body>
<div class="container" id="cont">
</div>
</body>
</html>