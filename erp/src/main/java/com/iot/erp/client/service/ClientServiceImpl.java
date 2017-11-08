package com.iot.erp.client.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iot.erp.client.dao.ClientDAO;
import com.iot.erp.client.dto.ClientInformation;
@Service
public class ClientServiceImpl implements ClientService{

	@Autowired
	ClientDAO cDao;
	
	@Override
	public ClientInformation getClientInformation(ClientInformation ci) {
		return cDao.selectClientInformation(ci);
	}

	@Override
	public List<ClientInformation> getClientInformationList(ClientInformation ci) {
		return cDao.selectClientInformationList(ci);
	}


	@Override
	public int insertClientInformation(ClientInformation ci) {
		return cDao.insertClientInformation(ci);
	}

	@Override
	public int updateClientInformation(ClientInformation ci) {
		return cDao.updateClientInformation(ci);
	}

	@Override
	public int deleteClientInformation(ClientInformation ci) {
		return cDao.deleteClientInformation(ci);
	}

}
