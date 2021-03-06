package com.iot.erp.sale.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.erp.sale.dto.SaleManagement;
import com.iot.erp.sale.service.SaleService;
import com.iot.erp.warehouse.dto.WarehouseManagement;

@Controller
public class SaleController {
	
	@Autowired
	SaleService ss;
	
	@RequestMapping(value="/sale/slist",method=RequestMethod.POST)
	public @ResponseBody List<SaleManagement> getSaleList(@RequestBody SaleManagement sm){
		return ss.selectSaleManagementList(sm);
	}
	
	@RequestMapping(value="/sale/slist",method=RequestMethod.GET)
	public String login(){
		return "sale/slist";
	}
	
	@RequestMapping(value="/sale/insert", method=RequestMethod.POST)
	public @ResponseBody ModelMap insertSale(@RequestBody SaleManagement sm, ModelMap map){
		int cnt = ss.insertSaleManagement(sm);
		map.put("msg", sm.getItemNo() + "등록이 실패하였습니다.");
		map.put("url","no-move");
		map.put("action", "close,refresh");
		if(cnt==1){
			map.put("msg", "상품이 정상적으로 등록 되었습니다.");
		}
		return map;
	}
}
