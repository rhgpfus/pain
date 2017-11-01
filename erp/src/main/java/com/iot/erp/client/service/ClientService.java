package com.iot.erp.client.service;

import java.util.List;

import com.iot.erp.client.dto.ClientInformation;

public interface ClientService {

	public ClientInformation getClientInformation(ClientInformation ci);

	public List<ClientInformation> getClientInformationList(ClientInformation ci);
	
	public int insertClientInformationList(ClientInformation[] ci);
	
	public int insertClientInformationList(ClientInformation ci);
	
	public int updateClientInformationList(ClientInformation ci);
	
	public int deleteClientInformationList(ClientInformation ci);
}
