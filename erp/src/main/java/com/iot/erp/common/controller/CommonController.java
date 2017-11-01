package com.iot.erp.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CommonController {
	
	//main 폴더 - > main.jsp로 이동하기 위한 get
	@RequestMapping(value="/main/main",method=RequestMethod.GET)
	public String main(){
		return "main/main";
	}


}
