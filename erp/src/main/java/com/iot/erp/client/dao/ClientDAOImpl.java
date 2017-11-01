package com.iot.erp.client.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Service;

import com.iot.erp.client.dto.ClientInformation;
@Service
public class ClientDAOImpl extends SqlSessionDaoSupport implements ClientDAO{

	@Override
	public ClientInformation selectClientInformation(ClientInformation ci){ 
	return this.getSqlSession().selectOne("client.SELECT_CLIENT",ci);
	}

	@Override
	public List<ClientInformation> selectClientInformationList(ClientInformation ci) {
		return this.getSqlSession().selectList("client.SELECT_CLIENT",ci);
	}

	@Override
	public int insertClientInformation(ClientInformation ci) {
		return this.getSqlSession().insert("client.INSERT_CLIENT",ci);
	}

	@Override
	public int updateClientInformation(ClientInformation ci) {
		return this.getSqlSession().update("client.UPDATE_CLIENT",ci);
	}

	@Override
	public int deleteClientInformation(ClientInformation ci) {
		return this.getSqlSession().delete("client.DELETE_CLIENT",ci);
	}

}
