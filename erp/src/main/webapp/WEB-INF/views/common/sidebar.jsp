<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<!--  사이드 바 -->
    <div class="container-fluid text-center" >
        <div class="col-sm-3 col-md-1 sidebar" id="sideHuman">
          <ul class="nav nav-sidebar">
            <a href="http://localhost/erp/hrm/list">인사 리스트</a></li>
            
          </ul>
          
          <ul class="nav nav-sidebar">                
            <a href="http://localhost/erp/hrm/insert">인사 등록</a></li>
          </ul>
          
          <ul class="nav nav-sidebar">
            <li><a href="http://localhost/erp/career/list">경력 리스트</a></li>
          </ul>
          
          <ul class="nav nav-sidebar">
            <li><a href="http://localhost/erp/project/list">프로젝트 리스트</a></li>
          </ul>
          
          <ul class="nav nav-sidebar">
            <li><a href="http://localhost/erp/position/list">직책 리스트</a></li>
          </ul>
          
          <ul class="nav nav-sidebar">
            <li><a href="http://localhost/erp/bank/list">은행 리스트</a></li>
          </ul>
          
           <ul class="nav nav-sidebar">
            <li><a href="http://localhost/erp/rank/list">직급 리스트</a></li>
          </ul>
          
          <ul class="nav nav-sidebar">
            <li><a href="http://localhost/erp/department/list">부서코드 리스트</a></li>
          </ul>
        </div>
        
        <div class="col-sm-3 col-md-1 sidebar" id="sideItem" style="display:none">
          
          <ul class="nav nav-sidebar">
            <a href="http://localhost/erp/item/itemlist">품목 리스트</a></li>
          </ul>
          
          <ul class="nav nav-sidebar">                
            <a href="http://localhost/erp/client/clist">거래처 등록</a></li>
          </ul>
          
          <ul class="nav nav-sidebar">
            <a href="http://localhost/erp/purchase/pmlist">구매 조회</a></li>
          </ul>
          
          <ul class="nav nav-sidebar">
            <li><a href="http://localhost/erp/sale/slist">판매 조회</a></li>
          </ul>
          
          <ul class="nav nav-sidebar">
            <li><a href="http://localhost/erp/warehouse/whlist">창고 조회</a></li>
          </ul>
       
        </div>
    </div>
    