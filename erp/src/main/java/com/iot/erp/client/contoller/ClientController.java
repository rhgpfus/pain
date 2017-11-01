package com.iot.erp.client.contoller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
}
