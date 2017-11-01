package com.iot.erp.client.dao;

import java.util.List;

import com.iot.erp.client.dto.ClientInformation;

public interface ClientDAO  {
	
	public ClientInformation selectClientInformation(ClientInformation ci);
	
	public List<ClientInformation> selectClientInformationList(ClientInformation ci);
	
	public int  insertClientInformation(ClientInformation ci);
	
	public int  updateClientInformation(ClientInformation ci);
	
	public int deleteClientInformation(ClientInformation ci);

}
