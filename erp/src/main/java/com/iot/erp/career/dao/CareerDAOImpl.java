package com.iot.erp.career.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.iot.erp.career.dto.Career;

@Repository
public class CareerDAOImpl extends SqlSessionDaoSupport implements CareerDAO {
	
	//입사구분----------------------------------------------------------------------------------------------------------------
			@Override
			public List<Career> selectCareerList(Career h_career) {
				return this.getSqlSession().selectList("car.SELECT_CAREERLIST", h_career);
				//입사구분 리스트.
			}
			@Override
			public Career selectCareer(Career h_career) {
				return this.getSqlSession().selectOne("car.SELECT_CAREERLIST", h_career);
				//입사구분 단일.
			}
			@Override
			public int insertCareer(Career h_career) {
				return 0;
				//입사구분 등록.
			}
			@Override
			public int deleteCareer(Career h_career) {
				return 0;
				//입사구분 삭제.
			}
			@Override
			public int updateCareer(Career h_career) {
				return 0;
				//입사구분 수정.
			}

}
