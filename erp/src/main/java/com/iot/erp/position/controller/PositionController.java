package com.iot.erp.position.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.erp.bank.dto.HumanBank;
import com.iot.erp.position.dto.Position;
import com.iot.erp.position.service.PositionService;

@Controller
public class PositionController {
	
	@Autowired
	PositionService pss;
	
	@RequestMapping(value="/position/list", method=RequestMethod.GET)
	public String PositionList(){
		return "position/list";
	}
	
	@RequestMapping(value="/position/list", method=RequestMethod.POST)
	public @ResponseBody List<Position> selectHumanPositionList(Position h_position){
		return pss.selectHumanPositionList(h_position);
	}

	@RequestMapping(value="/position/search", method=RequestMethod.POST)
	public @ResponseBody Position selectHumanPosition(@RequestBody Position h_position){
		return pss.selectHumanPosition(h_position);
	}
	
	@RequestMapping(value="/position/insert", method=RequestMethod.POST)
	public @ResponseBody ModelMap insertPosition(@RequestBody Position h_position, ModelMap map){
		int cnt = pss.insertHumanPosition(h_position);
		map.put("msg", h_position.getPositionName() + "등록이 실패하였습니다.");
		map.put("url","no-move");
		map.put("action", "close,refresh");
		if(cnt==1){
			map.put("msg", "직책이 정상적으로 등록 되었습니다.");
		}
		return map;
	}
	
	@RequestMapping(value="/position/update", method=RequestMethod.POST)
	public @ResponseBody ModelMap updatePosition(@RequestBody Position h_position, ModelMap map){
		int cnt = pss.updateHumanPosition(h_position);
		map.put("msg", h_position.getPositionName() + "등록이 실패하였습니다.");
		map.put("url","no-move");
		map.put("action", "close,refresh");
		if(cnt==1){
			map.put("msg", "직책이 정상적으로 등록 되었습니다.");
		}
		return map;
	}
	
	@RequestMapping(value="/position/delete", method=RequestMethod.POST)
	public @ResponseBody ModelMap deletePosition(@RequestBody Position h_position, ModelMap map){
		int cnt = pss.deleteHumanPosition(h_position);
		map.put("msg", h_position.getPositionName() + "삭제가 실패하였습니다.");
		map.put("url","no-move");
		map.put("action", "close,refresh");
		if(cnt==1){
			map.put("msg", "직책이 정상적으로 삭제 되었습니다.");
		}
		return map;
	}
}
