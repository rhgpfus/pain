package com.iot.erp.career.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.erp.bank.dto.HumanBank;
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
		
		@RequestMapping(value="/career/insert", method=RequestMethod.POST)
		public @ResponseBody ModelMap insertCareer(@RequestBody Career h_career, ModelMap map){
			int cnt = cas.insertCareer(h_career);
			map.put("msg", h_career.getCareerName() + "등록이 실패하였습니다.");
			map.put("url","no-move");
			map.put("action", "close,refresh");
			if(cnt==1){
				map.put("msg", "경력사항이 정상적으로 등록 되었습니다.");
			}
			return map;
		}

		@RequestMapping(value="/career/update", method=RequestMethod.POST)
		public @ResponseBody ModelMap iupdateCareer(@RequestBody Career h_career, ModelMap map){
			System.out.println(h_career);
			int cnt = cas.updateCareer(h_career);
			map.put("msg", h_career.getCareerName() + "등록이 실패하였습니다.");
			map.put("url","no-move");
			map.put("action", "close,refresh");
			if(cnt==1){
				map.put("msg", "경력사항이 정상적으로 등록 되었습니다.");
			}
			return map;
		}
		
		@RequestMapping(value="/career/delete", method=RequestMethod.POST)
		public @ResponseBody ModelMap deleteCareer(@RequestBody Career h_career, ModelMap map){
			System.out.println(h_career);
			int cnt = cas.deleteCareer(h_career);
			map.put("msg", h_career.getCareerName() + "삭제가 실패하였습니다.");
			map.put("url","no-move");
			map.put("action", "close,refresh");
			if(cnt==1){
				map.put("msg", "경력사항이 정상적으로 삭제 되었습니다.");
			}
			return map;
		}
}
