package com.iot.erp.position.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
}
