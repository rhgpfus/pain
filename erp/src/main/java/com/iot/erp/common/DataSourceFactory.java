package com.iot.erp.common;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.core.io.ClassPathResource;

public class DataSourceFactory {
	
	BasicDataSource bds;
	SqlSessionFactoryBean ssf ;
	SqlSession ss;

	private SqlSessionFactoryBean getSsf(){
		ssf = new SqlSessionFactoryBean();
		ssf.setDataSource(bds);
		ssf.setConfigLocation(new ClassPathResource("db/mybatis-config.xml"));
		return ssf;
	}
	
	private void closeSession(){
		if(ss!=null){
			ss.close();
			ss = null;
		}
	}
	
	public SqlSession getSession() throws Exception{
		closeSession();
		ss = getSsf().getObject().openSession();
		return ss;
	}

	public SqlSession getSqlSession() throws Exception{
		return getSession();
	}

}
