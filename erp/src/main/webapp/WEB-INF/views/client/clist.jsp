<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>
<link rel="stylesheet" href="<c:url value="/resources/css/tableList.css?version=${pVar}"/>"/>

<script>
$(document).ready(function(){
 var aul = new AjaxUtilList("client/clist","cmTable","clientNo",null,null,"client/update");
 aul.send();
})
$(function() {
  $("#postcodify_search_button").postcodifyPopUp();
});

</script>

<title>협력회사목록</title>
</head>
<body>
<div class="container">
 <h1 class="topName">협력회사목록</h1>
  <!-- 버튼 -->
 <button type="button" class="btn btn-primary" onclick="modalOpen2('client/insert')"> 신규</button>
 <table class="tableList" id="cmTable"> 
  <thead>
   <tr class="listTr">
    <th class="listTh" data-field="clientNo">거래처번호</th>
    <th class="listTh" data-field="clientCode">거래처코드</th>
    <th class="listTh" data-field="clientName">거래처명</th>
    <th class="listTh" data-field="representAtives">대표자명</th>
    <th class="listTh" data-field="phoneNumber">전화번호</th>
    <th class="listTh" data-field="cellphoneNumber">휴대폰번호</th>
    <th class="listTh" data-field="address">주소</th>
   </tr>
  </thead>
  <tbody/>
 <input type="hidden" id="clientNo">
 </table>
 <!-- <input type="hidden" id="projectNo"> -->
 <div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog modal-lg">
  
   <div class="modal-content">
    <div class="modal-header">
     <button type="button" class="close" data-dismiss="modal">
      <span aria-hidden="true">×</span>
     </button>
     <h4 class="modal-title" id="myModalLabel">클라이언트</h4>
    </div>
    
    <div class="modal-body">
     <table id="table" data-height="460" class="table table-bordered table-hover">
      <tr>
       <td class="listTh">거래처 코드</td>
       <td><input type="text" id="clientCode" name="iud1" class="form-control"/></td>
      </tr>
      <tr>       
       <td class="listTh">상호(이름)</td>
       <td><input type="text" id="clientName"name="iud2" class="form-control"/></td>
      </tr>
      <tr>
       <td class="listTh">대표자명</td>
       <td><input type="text" id="representAtives" name="iud2" class="form-control"/></td>
      </tr>
      <tr>
       <td class="listTh">종목</td>
       <td><input type="text" id="sectors" name="iud2" class="form-control"/></td>
      </tr>
      <tr>
       <td class="listTh">전화</td>
       <td><input type="text" id="phoneNumber" name="iud2" class="form-control"  /></td>
      </tr>
      <tr>
       <td class="listTh">모바일</td>
       <td><input type="text" id="cellphoneNumber"name="iud2" class="form-control"  /></td>
      </tr>
      <tr>
       <td class="listTh">주소</td>
       <td>
        <a id="postcodify_search_button">우편번호검색
        </a>
        <input type="text" id="address" name="iud2" class="form-control"  />
       </td>
      </tr>
      <tr>
       <td class="listTh">홈페이지</td>
       <td><input type="text" id="homePage" name="iud2" class="form-control"  /></td>
      </tr>
      <tr>
       <td class="listTh">담당자</td>
       <td>
        <button type="button" data-toggle="modal" data-target="#myModal2" class="btn btn-default btn-sm">
         <span class="glyphicon glyphicon-search" aria-hidden="true" style=""></span>
        </button>

        <!-- 담당자 이름 나오는곳 -->
        <input class="form-control form-min" type="text"id="managerNo" size="10" disabled />
         
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
       
      </tr>
      <tr>
       <td class="listTh">Email</td>
       <td><input type="text" id="email" name="iud2" class="form-control"  /></td>
      </tr>
     </table>
    </div>
    
    <div class="modal-footer"> 
     <button type="button" class="btn btn-default" data-dismiss="modal">취소</button> 
     <div id="changeButton" style="display: inline"> 
     <button type="button" class="btn btn-primary" onclick="iudAjax('client/update')">수정</button>
     <button type="button" class="btn btn-primary" onclick="iudAjax('client/delete')">삭제</button>
     </div>
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
