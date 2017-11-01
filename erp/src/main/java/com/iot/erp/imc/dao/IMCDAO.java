package com.iot.erp.imc.dao;

import java.util.List;

import com.iot.erp.imc.dto.IMC;


public interface IMCDAO {

	public List<IMC> selectIMCList(IMC imc);
	//품목&회사 리스트를 받아오는 함수.
	public IMC selectIMC(IMC imc);
	//품목&회사 단일로 받아오는 함수.
	public int insertIMC(IMC imc);
	//품목&회사 신규 등록하는 함수.
	public int deleteIMC(IMC imc);
	//품목&회사 삭제하는 함수.
	public int updateIMC(IMC imc);
	//품목&회사 수정하는 함수.
}
