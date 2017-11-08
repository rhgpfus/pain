package com.iot.erp.client.contoller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.erp.bank.dto.HumanBank;
import com.iot.erp.client.dto.ClientInformation;
import com.iot.erp.client.service.ClientService;



@Controller
public class ClientController {
	@Autowired
	ClientService cs;
	
	@RequestMapping(value="/client/clist",method=RequestMethod.POST)
	public @ResponseBody List<ClientInformation>
	getClientInformation(@RequestBody ClientInformation ci ){
		return cs.getClientInformationList(ci);
	}
	@RequestMapping(value="/client/clist",method=RequestMethod.GET)
	public String login(){
		return "client/clist";
	}
	
	@RequestMapping(value="/client/insert", method=RequestMethod.POST)
	public @ResponseBody ModelMap insertClient(@RequestBody ClientInformation ci, ModelMap map){
		int cnt = cs.insertClientInformation(ci);
		map.put("msg", ci.getClientName() + "등록이 실패하였습니다.");
		map.put("url","no-move");
		map.put("action", "close,refresh");
		if(cnt==1){
			map.put("msg", "거래처 정보가 정상적으로 등록 되었습니다.");
		}
		return map;
	}
	
}
