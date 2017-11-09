package com.iot.erp.item.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.erp.item.dto.Item;
import com.iot.erp.item.service.ItemService;
import com.iot.erp.project.dto.Project;

@Controller
public class ItemController {
	
	@Autowired
	ItemService is;
	
	@RequestMapping(value="/item/list",method=RequestMethod.POST)
	public @ResponseBody List<Item> getItemList(@RequestBody Item item){
		return is.selectItemList(item);
	}
	@RequestMapping(value="/item/list",method=RequestMethod.GET)
	public String goItemList(){
		return "item/list";
	}

	@RequestMapping(value="/item/insert", method=RequestMethod.POST)
	public @ResponseBody ModelMap insertProject(@RequestBody Item item, ModelMap map){
		int cnt = is.insertItem(item);
		map.put("msg", item.getItemName() + "등록이 실패하였습니다.");
		map.put("url","no-move");
		map.put("action", "close,refresh");
		if(cnt==1){
			map.put("msg", "아이템이 정상적으로 등록 되었습니다.");
		}
		return map;
	}
}
