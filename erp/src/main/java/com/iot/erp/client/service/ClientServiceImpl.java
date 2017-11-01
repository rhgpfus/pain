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
	public int insertClientInformationList(ClientInformation[] ciList) {
		int result = 0;
		for(ClientInformation ci : ciList){
			result +=cDao.insertClientInformation(ci);
		}
		return result;
	}

	@Override
	public int insertClientInformationList(ClientInformation ci) {
		return cDao.insertClientInformation(ci);
	}

	@Override
	public int updateClientInformationList(ClientInformation ci) {
		return cDao.updateClientInformation(ci);
	}

	@Override
	public int deleteClientInformationList(ClientInformation ci) {
		return cDao.deleteClientInformation(ci);
	}

}
