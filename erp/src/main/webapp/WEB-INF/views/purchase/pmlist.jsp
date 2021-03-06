<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>


<script>
 $(document).ready(
   function() {

    var aul = new AjaxUtilList("purchase/pmlist", "pmTable",
      "purchaseNo", "", "", "");
    aul.send();
    
    //이중모달에서 inner모달만 따로 close하기 위해
    $("#closeModal1").click(function(){
     $("#myModal1").modal("hide");
    });
    $("#closeModal2").click(function(){
     $("#myModal2").modal("hide");
    });
    $("#closeModal3").click(function(){
     $("#myModal3").modal("hide");
    });
   })

 //돋보기 클릭시 먹히는 이벤트
 function initEvent() {
  $(
    'div[id*="myModal"] table[id="' + globalTarget.tableId
      + '"] tbody tr').click(function() {
   var str = this.firstChild.innerText
   var str2 = this.lastChild.innerText;
   globalTarget.obj.value = str;
   globalTarget.obj2.value = str2;
   globalTarget.btn.click();
  })
 }
 //리스트 클릭시 띄워주는 모달.
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
        globalTarget.btn = this
          .getElementsByTagName("button")[0];
        globalTarget.obj2 = this.lastElementChild;
        var aul = new AjaxUtilList(url, tableId,
          searchId, null, null, null, null, null,
          initEvent);
        aul.send();
       }
      })

   });
  $('#myModal').on('hidden.bs.modal', function () {
   $("#changeButton").html("<button type='button' class='btn btn-primary' onclick='iudAjax(\""+"puchase/update"+"\")'>수정</button>");
   $("#changeButton").append("<button type='button' class='btn btn-primary' onclick='iudAjax(\""+"puchase/delete"+"\")'>삭제</button>");
  });
  
  function searchClass(obj) {
		var param = {};
		param[obj.id] = obj.value;
		var url = "${rootPath}/"
				+ obj.getAttribute("data-url");
		var tableId = obj.getAttribute("id");
		var param = {};
		param[tableId] = obj.value;
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
						alert(result);
						alert(result[0]);
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

<title>구매 리스트</title>
</head>
<body>
 <div class="container">
  <h1>구매 리스트</h1>
  <button type="button" class="btn btn-primary"
   onclick="modalOpen2('purchase/insert','purchase')">신규</button>

  <!-- 맨처음 뜨는 리스트 -->
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
     <th class="listTh" data-field="createUser">담당자</th>

    </tr>
   </thead>
   <tbody />
  </table>
  <input type="hidden" id="purchaseNo">

  <!-- 모달로 띄우는 리스트들.  -->

  <div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1"
   role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog modal-lg">

    <div class="modal-content">
     <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal">
       <span aria-hidden="true">×</span>
      </button>
      <h4 class="modal-title" id="myModalLabel">클라이언트</h4>
     </div>

     <div class="modal-body">
      <table id="table" data-height="460"
       class="table table-bordered table-hover">
       <tr>
        <td class="listTh col-md-1">발주요청 일자</td>
        <td class="col-md-1"><input type="text" id="clientNo"
         name="clientNo" class="postcodify_extra_info" disabled /></td>

        <td class="listTh col-md-1" align="center"
         style="vertical-align: middle" bgcolor="cccccc">거래처</td>
        <td class="col-md-2" style="vertical-align: middle">
         <div id="outTd1" data-tableName="purchaseTable"
          data-url="purchase/pmlist" data-search="purchaseNo">
          <input class="form-control form-min3" type="text"
           id="purchaseCode" name="purchaseCode" data-url="purchase/search"
           size="10"
           onkeypress="if(event.keyCode==13) {searchClass(this); return false;}">

          <!-- 돋보기 버튼 누르면 팝업창 -->
          <button type="button" data-toggle="modal"
           data-target="#myModal1" class="btn btn-default btn-sm">
           <span class="glyphicon glyphicon-search" aria-hidden="true"
            style=""></span>
          </button>

          <!-- 거래처이름이름 나오는곳 -->
          <input class="form-control form-min" type="text"
           id="clientName" name="clientName" size="10" disabled />
         </div> <!-- 모달 팝업 -->
         <div class="modal fade" id="myModal1" tabindex="-1"
          role="dialog" aria-labelledby="myModalLabel"
          aria-hidden="true">
          <div class="modal-dialog">
           <div class="modal-content">
            <div class="modal-header">
             <button type="button" class="close" id="closeModal1">
              <span aria-hidden="true">×</span><span class="sr-only">Close</span>
             </button>
             <h4 class="modal-title" id="myModalLabel2">거래처이름검색</h4>
            </div>

            <div class="modal-body">
             <table class="tableList" id="purchaseTable">
              <thead>
               <tr class="listTr">
                <th class="listTh" data-field="clientCode">거래처코드</th>
                <th class="listTh" data-field="clientName">거래처이름</th>
               </tr>
              </thead>
              <tbody>
              </tbody>
             </table>
             <input type="hidden" id="purchaseNo">
            </div>

           </div>
          </div>
         </div>
        </td>
       </tr>

 

       <tr>
        <td class="listTh">담당자</td>
        <td class="col-md-1" style="vertical-align: middle">
         <div id="outTd2" data-tableName="hrmTable"
          data-url="hrm/list" data-search="humanNo">
          <input class="form-control form-min3" type="text"
           id="humanNo" name="humanNo" data-url="hrm/search"
           size="10"
           onkeypress="if(event.keyCode==13) {searchClass(this); return false;}">

          <!-- 돋보기 버튼 누르면 팝업창 -->
          <button type="button" data-toggle="modal"
           data-target="#myModal2" class="btn btn-default btn-sm">
           <span class="glyphicon glyphicon-search" aria-hidden="true"
            style=""></span>
          </button>

          <!-- 거래처이름이름 나오는곳 -->
          <input class="form-control form-min" type="text"
           id="clientName" name="clientName" size="10" disabled />
         </div> <!-- 모달 팝업 -->
         <div class="modal fade" id="myModal2" tabindex="-1"
          role="dialog" aria-labelledby="myModalLabel"
          aria-hidden="true">
          <div class="modal-dialog">
           <div class="modal-content">
            <div class="modal-header">
             <button type="button" class="close" id="closeModal2">
              <span aria-hidden="true">×</span><span class="sr-only">Close</span>
             </button>
             <h4 class="modal-title" id="myModalLabel2">담당자</h4>
            </div>

            <div class="modal-body">
             <table class="tableList" id="hrmTable">
              <thead>
               <tr class="listTr">
                <th class="listTh" data-field="humanNo">사원번호</th>
                <th class="listTh" data-field="humanKorName">담당자이름</th>
               </tr>
              </thead>
              <tbody>
              </tbody>
             </table>
<!--              <input type="hidden" id="purchaseNo"> -->
            </div>

           </div>
          </div>
         </div>
        </td>

        <td class="listTh col-md-1" align="center"
         style="vertical-align: middle" bgcolor="cccccc">입고창고</td>
        <td class="col-md-1" style="vertical-align: middle">
         <div id="outTd3" data-tableName="warehouseTable"
          data-url="purchase/pmlist" data-search="warehouseNo">
          <input class="form-control form-min3" type="text"
           id="warehouseNo" name="warehouseNo"
           data-url="warehouse/search" size="10"
           onkeypress="if(event.keyCode==13) {searchClass(this); return false;}">

          <!-- 돋보기 버튼 누르면 팝업창 -->
          <button type="button" data-toggle="modal"
           data-target="#myModal3" class="btn btn-default btn-sm">
           <span class="glyphicon glyphicon-search" aria-hidden="true"
            style=""></span>
          </button>

          <!-- 거래처이름이름 나오는곳 -->
          <input class="form-control form-min" type="text"
           id="warehouseName" name="warehouseName" size="10" disabled />
         </div> <!-- 모달 팝업 -->
         <div class="modal fade" id="myModal3" tabindex="-1"
          role="dialog" aria-labelledby="myModalLabel"
          aria-hidden="true">
          <div class="modal-dialog">
           <div class="modal-content">
            <div class="modal-header">
             <button type="button" class="close" id="closeModal3">
              <span aria-hidden="true">×</span><span class="sr-only">Close</span>
             </button>
             <h4 class="modal-title" id="myModalLabel2">입고창고검색</h4>
            </div>

            <div class="modal-body">
             <table class="tableList" id="warehouseTable">
              <thead>
               <tr class="listTr">
                <th class="listTh" data-field="warehouseCode">입고창고번호</th>
                <th class="listTh" data-field="warehouseName">입고창고이름</th>
               </tr>
              </thead>
              <tbody>
              </tbody>
             </table>
             <input type="hidden" id="warehouseNo">
            </div>

           </div>
          </div>
         </div>
        </td>
       </tr>
      </table>

      <table class="tableList" id="pmup">
       <thead>
        <tr class="listTr">
         <th class="listTh" data-field="purchaseNo" >구매no</th>
         <th class="listTh" data-field="itemName">품목명</th>
         <th class="listTh" data-field="quantity">수량</th>
         <th class="listTh" data-field="unitPrice">단가</th>
         <th class="listTh" data-field="amount">총액</th>
         <th class="listTh" data-field="createUser">담당자</th>
        </tr>
       </thead>
       <tbody />
      </table>
     </div>

     <div class="modal-footer">
      <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
      <div id="changeButton" style="display: inline">
       <button type="button" class="btn btn-primary"
        onclick="iudAjax('puchase/update')">수정</button>
       <button type="button" class="btn btn-primary"
        onclick="iudAjax('puchase/delete')">삭제</button>
      </div>
     </div>
    </div>
   </div>
  </div>
  <style>
.form-control.form-min {
 width: 120px;
 display: inline;
}

.form-control.form-min2 {
 width: 250px;
 display: inline;
}

.form-control.form-min3 {
 width: 70px;
 display: inline;
}

.modal-backdrop {
 z-index: -1;
}
/*모달 팝업창 클릭 시 안닫히게 하는 것.*/
</style>

 </div>
</body>
</html>
