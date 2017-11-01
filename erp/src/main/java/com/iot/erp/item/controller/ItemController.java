package com.iot.erp.item.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.erp.item.dto.Item;
import com.iot.erp.item.service.ItemService;

@Controller
public class ItemController {
	
	@Autowired
	ItemService is;
	
	@RequestMapping(value="/item/itemlist",method=RequestMethod.POST)
	public @ResponseBody List<Item> getItemList(@RequestBody Item item){
		return is.selectItemList(item);
	}
	@RequestMapping(value="/item/itemlist",method=RequestMethod.GET)
	public String login(){
		return "item/itemlist";
	}
}
