package com.iot.erp.career.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.erp.career.dto.Career;
import com.iot.erp.career.service.CareerService;

@Controller
public class CareerController {
	
	@Autowired
	CareerService cas;
	
	@RequestMapping(value="/career/list",method=RequestMethod.GET)
	public String careerList(){
		return "career/list";
	}
	
	//입사구분 리스트
	@RequestMapping(value="/career/list", method=RequestMethod.POST)
	public @ResponseBody List<Career> getCareerList(@RequestBody Career h_career){
		return cas.selectCareerList(h_career);
	}
	
	//입사구분 단일
		@RequestMapping(value="/career/search", method=RequestMethod.POST)
		public @ResponseBody Career getCareer(@RequestBody Career h_career){
			return cas.selectCareer(h_career);
		}

}
