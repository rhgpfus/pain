package com.iot.erp.hmw.dto;

import org.springframework.stereotype.Component;

@Component
public class HumanMiddleWarehouse {

	private int orderno; // int auto_increment primary key comment '오더번호',
	private int clientno; //int comment '클라이언트번호',
	private int orderproductno; //int comment '제품번호',
	private int orderquantity; //int comment '수량',
	private int rderunitprice; //int comment '단가',
	private int orderamount; //int comment '총액',
	private int orderwarehouseno; //int comment '출고창고번호',
	private String orderstatus; //varchar(100) comment '주문status',
	private int createuser; //int comment '입력자(인사관리에서의 이름)',
	private String createdate; //varchar(100) comment '입력일자',
	private int modifieduser; //int comment '수정자(인사관리에서의 이름)',
	private String modifieddata; //varchar(100) comment '수정일자'
}
