package com.iot.erp.item.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.iot.erp.item.dto.Item;

@Repository
public class ItemDAOImpl extends SqlSessionDaoSupport implements ItemDAO{

	@Override
	public List<Item> selectItemList(Item item) {
		return this.getSqlSession().selectList("item.SELECT_ITEM" , item);
		//품목 리스트.
	}

	@Override
	public Item selectItem(Item item) {
		return this.getSqlSession().selectOne("item.SELECT_ITEM" , item);
		//품목 단일.
	}

	@Override
	public int insertItem(Item item) {
		return this.getSqlSession().insert("item.INSERT_ITEM" , item);
		//품목 등록.
	}

	@Override
	public int deleteItem(Item item) {
		return this.getSqlSession().delete("item.DELETE_ITEM" , item);
		//품목 삭제.
	}

	@Override
	public int updateItem(Item item) {
		return this.getSqlSession().update("item.UPDATE_ITEM" , item);
		//품목 수정.
	}

}
