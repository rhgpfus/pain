package com.iot.erp.departmentcode.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
}
