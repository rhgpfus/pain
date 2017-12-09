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
      
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">검색</button>
      </form>
    
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>