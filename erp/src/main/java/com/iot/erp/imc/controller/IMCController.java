package com.iot.erp.imc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.erp.imc.dto.IMC;
import com.iot.erp.imc.service.IMCService;

@Controller
public class IMCController {
	
	@Autowired
	IMCService is;
	
	@RequestMapping(value="/imc/imclist",method=RequestMethod.POST)
	public @ResponseBody List<IMC> getIMCList(@RequestBody IMC imc){
		return is.selectIMCList(imc);
	}
	@RequestMapping(value="/imc/imclist",method=RequestMethod.GET)
	public String login(){
		return "imc/imclist";
	}
}
