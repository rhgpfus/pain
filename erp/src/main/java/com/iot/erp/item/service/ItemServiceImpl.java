package com.iot.erp.item.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iot.erp.item.dao.ItemDAO;
import com.iot.erp.item.dto.Item;

@Service
public class ItemServiceImpl implements ItemService{

	@Autowired
	ItemDAO IDAO;
	
	@Override
	public List<Item> selectItemList(Item item) {
		return IDAO.selectItemList(item);
		//품목 리스트.
	}

	@Override
	public Item selectItem(Item item) {
		return IDAO.selectItem(item);
		//품목 단일.
	}

	@Override
	public int insertItem(Item item) {
		return IDAO.insertItem(item);
		//품목 등록.
	}

	@Override
	public int deleteItem(Item item) {
		return IDAO.deleteItem(item);
		//품목 삭제.
	}

	@Override
	public int updateItem(Item item) {
		return IDAO.updateItem(item);
		//품목 수정.
	}

}
