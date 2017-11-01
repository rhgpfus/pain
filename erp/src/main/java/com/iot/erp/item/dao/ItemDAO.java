package com.iot.erp.item.dao;

import java.util.List;

import com.iot.erp.item.dto.Item;



public interface ItemDAO {

	public List<Item> selectItemList(Item item);
	//품목 리스트를 받아오는 함수.
	public Item selectItem(Item item);
	//품목 단일로 받아오는 함수.
	public int insertItem(Item item);
	//품목 신규 등록하는 함수.
	public int deleteItem(Item item);
	//품목 삭제하는 함수.
	public int updateItem(Item item);
	//품목 수정하는 함수.
}
