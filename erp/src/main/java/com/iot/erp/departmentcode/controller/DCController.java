package com.iot.erp.departmentcode.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.erp.bank.dto.HumanBank;
import com.iot.erp.departmentcode.dto.DepartmentCode;
import com.iot.erp.departmentcode.service.DCService;

@Controller
public class DCController {

	@Autowired
	DCService dcs;

	@RequestMapping(value="/department/list", method=RequestMethod.GET)
	public String list(){
		return "department/list";
	}
	
	@RequestMapping(value="/department/list", method=RequestMethod.POST)
	public @ResponseBody List<DepartmentCode> selectHumanDepartmentCodeList(DepartmentCode h_departmentCode) {
		return dcs.selectHumanDepartmentCodeList(h_departmentCode);
	}
	
	@RequestMapping(value="/department/search", method=RequestMethod.POST)
	public @ResponseBody DepartmentCode selectHumanDepartmentCode(@RequestBody DepartmentCode h_departmentCode) {
		return dcs.selectHumanDepartmentCode(h_departmentCode);
	}
	
	@RequestMapping(value="/department/insert", method=RequestMethod.POST)
	public @ResponseBody ModelMap insertDepartmentCode(@RequestBody DepartmentCode h_departmentCode, ModelMap map){
		int cnt = dcs.insertHumanDepartmentCode(h_departmentCode);
		map.put("msg", h_departmentCode.getDepartmentName() + "등록이 실패하였습니다.");
		map.put("url","no-move");
		map.put("action", "close,refresh");
		if(cnt==1){
			map.put("msg", "부서가 정상적으로 등록 되었습니다.");
		}
		return map;
	}
}
