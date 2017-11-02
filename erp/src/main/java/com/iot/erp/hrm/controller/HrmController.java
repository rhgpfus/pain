package com.iot.erp.hrm.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.erp.hrm.dto.HumanResourceManagement;
import com.iot.erp.hrm.service.HrmService;


@Controller
public class HrmController {

	@Autowired
	HrmService hs;
//로그인 ---------------------------------------------------------------------------	
	@RequestMapping(value="/hrm/login", method=RequestMethod.GET)
	public String login(){
		return "hrm/login";
	}
	
	@RequestMapping(value="/hrm/login", method=RequestMethod.POST)
	public @ResponseBody ModelMap login(HttpSession hss, @RequestBody HumanResourceManagement h_resourceManagement, ModelMap hm){
		HumanResourceManagement rHrm = hs.login(h_resourceManagement);
		if(rHrm != null){
			hss.setAttribute("hrmuser", rHrm);
			hm.put("msg", "로그인에 성공");
			hm.put("url", "hrm/list");
		}else{
			hm.put("msg", "아이디와 비밀번호를 확인해주세요");
			hm.put("url","hrm/login");
		}
		return hm;
	}
	
	@RequestMapping(value="/hrm/list", method=RequestMethod.GET)
	public String list(){
		return "hrm/list";
	}
	
	@RequestMapping(value="hrm/list", method=RequestMethod.POST)
	public @ResponseBody List<HumanResourceManagement> getHRMList(@RequestBody HumanResourceManagement h_resourceManagement){
		return hs.selectHumanResourceManagementList(h_resourceManagement);
	}
	
	//단일 select 
	@RequestMapping(value="hrm/select", method=RequestMethod.POST)
	public @ResponseBody HumanResourceManagement getHRM(@RequestBody HumanResourceManagement h_resourceManagement){
		return hs.selectHumanResourceManagement(h_resourceManagement);
	}
	
	@RequestMapping(value="/hrm/insert", method=RequestMethod.GET)
	public String Insert(){
		return "hrm/insert";
	}
	
	@RequestMapping(value="/hrm/insertList", method=RequestMethod.POST)
	public @ResponseBody List<HumanResourceManagement> insertHRM(@RequestBody HumanResourceManagement[] hrmList,HumanResourceManagement h_resourceManagement){
		int cnt = hs.insertHumanResourceManagement(hrmList);
		return hs.selectHumanResourceManagementList(h_resourceManagement);
	}

	@RequestMapping(value="/hrm/insert", method=RequestMethod.POST)
	public @ResponseBody ModelMap insertHRM(@RequestBody HumanResourceManagement hrm, ModelMap map){
//		System.out.println(hm);
		int cnt = hs.insertHumanResourceManagement(hrm);
		map.put("msg", hrm.getHumanKorName() + "등록이 실패하였습니다.");
		map.put("url","no-move");
		map.put("action", "close,refresh");
		if(cnt==1){
			map.put("msg", "정보가 정상적으로 등록 되었습니다.");
		}
		return map;
	}
	@RequestMapping(value="/hrm/update", method=RequestMethod.GET)
	public String Update(){
		return "hrm/update";
	}
	
	@RequestMapping(value="/hrm/update", method=RequestMethod.POST)
	public @ResponseBody String update(@RequestBody HumanResourceManagement h_resourceManagement){
		System.out.println(h_resourceManagement);
		return "hrm/update";
	}

	
	
}
