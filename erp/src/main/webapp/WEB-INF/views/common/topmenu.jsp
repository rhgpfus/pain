<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


   
 <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">

  	<div class="navbar-header">
      <a class="navbar-brand" href="http://localhost/erp/main/main">E R P</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
         <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> 인사 관리</a>
          <ul class="dropdown-menu" role="menu">
            	<li><a href="http://localhost/erp/hrm/list">인사 리스트</a></li>
            <li class="divider"></li>  <!-- 선 출력. -->
            	<li><a href="http://localhost/erp/hrm/insert">인사 등록</a></li>
            <li class="divider"></li>
            	<li><a href="http://localhost/erp/manager/mlist">사원리스트</a></li>
          </ul>
		</li>
        
         <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">재고 관리</a>
          <ul class="dropdown-menu" role="menu">
            	<li><a href="http://localhost/erp/item/itemlist">품목 리스트</a></li>
            <li class="divider"></li>  <!-- 선 출력. -->
            	<li><a href="http://localhost/erp/client/clist">거래처 등록</a></li>
            <li class="divider"></li>
            	<li><a href="http://localhost/erp/purchase/pmlist">구매 조회</a></li>
            <li class="divider"></li>
            	<li><a href="http://localhost/erp/sale/slist">판매 조회</a></li>
            <li class="divider"></li>
            	<li><a href="http://localhost/erp/warehouse/whlist">창고 조회</a></li>
          </ul>
        </li>
      
	<form class="navbar-form navbar-left" role="search box">
		<div class="input-group">
		<input type="text" class="form-control" placeholder="Search for...">
		<span class="input-group-btn">
			<button type="submit" class="btn btn-default btn-sm" style="">
         		<span class="glyphicon glyphicon-search" aria-hidden="true" style="color: whitesmoke;" ></span>
         	</button>
		</span>
		</div><!-- /input-group -->
	</form>
		
<form class="navbar-form navbar-left">
  <div class="dropdown">
	  <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
	    <span class="glyphicon glyphicon-question-sign" aria-hidden="true" style="color: whitesmoke;" ></span>고객센터 
	    <span class="caret"></span>
	  </button>
	  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
		    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">온라인 문의</a></li>
		    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">동영상 문의</a></li>
		    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">원격지원</a></li>
		    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">브라우저 최적화</a></li>
		    <li class="divider"></li>
		    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">온라인 메뉴얼</a></li>
		    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">부가서비스</a></li>
		    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">사용료확인</a></li>
	  </ul>
  </div>
</form>	
	
	<!-- 로그아웃버튼 -->
    </ul>
    <div class="icon">
    <button type="button" class="btn btn-default btn-lg" data-toggle="tooltip" data-placement="left" title="로그아웃">
  	<span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>
	</button>
    </div>
	
	<!-- Email버튼 -->
    </ul>
    <div class="icon">
    <button type="button" class="btn btn-default btn-lg" data-toggle="tooltip" data-placement="left" title="Email">
  	<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
	</button>
    </div>
	
	<!-- SMS버튼 -->
    </ul>
    <div class="icon">
    <button type="button" class="btn btn-default btn-lg" data-toggle="tooltip" data-placement="left" title="SMS">
  	<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
	</button>
    </div>	
    
    <!-- 알람버튼 -->
    </ul>
    <div class="icon">
    <button type="button" class="btn btn-default btn-lg" data-toggle="tooltip" data-placement="left" title="알람">
  	<span class="glyphicon glyphicon-bell" aria-hidden="true"></span>
	</button>
    </div>
    
    <!-- 메모장버튼 -->
    </ul>
    <div class="icon">
    <button type="button" class="btn btn-default btn-lg" data-toggle="tooltip" data-placement="left" title="메모장" onclick="myfunction()">
  	<span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
	</button>
    </div>
    
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<script>
	//툴팁 함수.
	$(function () {
	  $('[data-toggle="tooltip"]').tooltip()
	})
	
	function myfunction() {
    	window.open("${rootPath}/memo/memo_list","","width=400, height=300,left=1300, top=400");
	}
</script>


<style>
.btn-group-sm>.btn, .btn-sm {
    padding: 5px 10px;
    font-size: 22px;
    line-height: 1.5;
    border-radius: 3px;
}

.input-group-btn:last-child>.btn, .input-group-btn:last-child>.btn-group {
    z-index: 2;
    margin-left: -1px;
    color: #bbb;
    background-color: #005b9e;
    border-color: #004c85;
    border-radius: 0;
    padding-left: 10px;
    
}

.input-group > .form-control {
	border-radius: 0;    
    box-shadow: none;
    border-color: #005b9e;
} 
.form-control{
	border-color:#ccc;
}

.btn-primary {
    color: #fff;
    background-color: #005b9e;
    border-color: #004c85;
    border-radius: 0;
}
.navbar-form {
    padding: 0px 3px;
}
.icon{
	margin-top:6px;
	float:right;
}
.icon > .btn-default{
	-webkit-box-shadow: none;
	box-shadow: none;
	border-color:none;
	background:transparent;
	border:none;
}	
.icon > .btn-default:hover{
	background:none;
	color:#ccc;
}
</style>