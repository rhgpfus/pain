package com.iot.erp.imc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iot.erp.imc.dao.IMCDAO;
import com.iot.erp.imc.dto.IMC;

@Service
public class IMCServiceImpl implements IMCService{
	
	@Autowired
	IMCDAO IMCDAO;
	
	@Override
	public List<IMC> selectIMCList(IMC imc) {
		return IMCDAO.selectIMCList(imc);
	}

	@Override
	public IMC selectIMC(IMC imc) {
		return IMCDAO.selectIMC(imc);
	}

	@Override
	public int insertIMC(IMC imc) {
		return IMCDAO.insertIMC(imc);
	}

	@Override
	public int deleteIMC(IMC imc) {
		return IMCDAO.deleteIMC(imc);
	}

	@Override
	public int updateIMC(IMC imc) {
		return IMCDAO.updateIMC(imc);
	}

}
