package com.iot.erp.client.service;

import java.util.List;

import com.iot.erp.client.dto.ClientInformation;

public interface ClientService {

	public ClientInformation getClientInformation(ClientInformation ci);

	public List<ClientInformation> getClientInformationList(ClientInformation ci);
		
	public int insertClientInformation(ClientInformation ci);
	
	public int updateClientInformation(ClientInformation ci);
	
	public int deleteClientInformation(ClientInformation ci);
}
