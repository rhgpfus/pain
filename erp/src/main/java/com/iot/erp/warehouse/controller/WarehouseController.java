package com.iot.erp.warehouse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.erp.rank.dto.Rank;
import com.iot.erp.warehouse.dto.WarehouseManagement;
import com.iot.erp.warehouse.service.WarehouseService;

@Controller
public class WarehouseController {
	@Autowired
	WarehouseService ws;
	
	@RequestMapping(value="/warehouse/whlist",method=RequestMethod.POST)
	public @ResponseBody List<WarehouseManagement> 
	getWarehouseManagement(@RequestBody WarehouseManagement wm ){
		
		return ws.getWarehouseManagementList(wm);
	}
	@RequestMapping(value="/warehouse/whlist",method=RequestMethod.GET)
	public String login(){
		return "warehouse/whlist";
	}
	
	@RequestMapping(value="/warehouse/insert", method=RequestMethod.POST)
	public @ResponseBody ModelMap insertWarehouse(@RequestBody WarehouseManagement wm, ModelMap map){
		int cnt = ws.insertWarehouse(wm);
		map.put("msg", wm.getWarehouseName() + "등록이 실패하였습니다.");
		map.put("url","no-move");
		map.put("action", "close,refresh");
		if(cnt==1){
			map.put("msg", "창고가 정상적으로 등록 되었습니다.");
		}
		return map;
	}
	
	@RequestMapping(value="/warehouse/update", method=RequestMethod.POST)
	public @ResponseBody ModelMap updateWarehouse(@RequestBody WarehouseManagement wm, ModelMap map){
		int cnt = ws.updateWarehouse(wm);
		map.put("msg", wm.getWarehouseName() + "수정이 실패하였습니다.");
		map.put("url","no-move");
		map.put("action", "close,refresh");
		if(cnt==1){
			map.put("msg", "창고가 정상적으로 수정 되었습니다.");
		}
		return map;
	}
	
	@RequestMapping(value="/warehouse/delete", method=RequestMethod.POST)
	public @ResponseBody ModelMap deleteWarehouse(@RequestBody WarehouseManagement wm, ModelMap map){
		int cnt = ws.deleteWarehouse(wm);
		map.put("msg", wm.getWarehouseName() + "삭제가 실패하였습니다.");
		map.put("url","no-move");
		map.put("action", "close,refresh");
		if(cnt==1){
			map.put("msg", "창고가 정상적으로 삭제 되었습니다.");
		}
		return map;
	}
}
