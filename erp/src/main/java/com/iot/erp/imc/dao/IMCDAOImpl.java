package com.iot.erp.imc.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.iot.erp.imc.dto.IMC;

@Repository
public class IMCDAOImpl extends SqlSessionDaoSupport implements IMCDAO{

	@Override
	public List<IMC> selectIMCList(IMC imc) {
		return this.getSqlSession().selectList("imc.SELECT_IMCLIST",imc);
	}

	@Override
	public IMC selectIMC(IMC imc) {
		return this.getSqlSession().selectOne("imc.SELECT_IMC",imc);
	}

	@Override
	public int insertIMC(IMC imc) {
		return this.getSqlSession().insert("imc.INSERT_IMC",imc);
	}

	@Override
	public int deleteIMC(IMC imc) {
		return this.getSqlSession().delete("imc.DELETE_IMC",imc);
	}

	@Override
	public int updateIMC(IMC imc) {
		return this.getSqlSession().update("imc.UPDATE_IMC",imc);
	}

}
