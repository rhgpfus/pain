package com.iot.erp.career.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iot.erp.career.dao.CareerDAO;
import com.iot.erp.career.dto.Career;

@Service
public class CareerServiceImpl implements CareerService {
	
	@Autowired
	CareerDAO caDAO;
	
	//입사구분-----------------------------------------------------------------------------------------------------------------------------------	
		@Override
		public List<Career> selectCareerList(Career h_career) {
			return caDAO.selectCareerList(h_career);
			//입사구분 리스트.
		}
		@Override
		public Career selectCareer(Career h_career) {
			return caDAO.selectCareer(h_career);
			//입사구분 단일.
		}
		@Override
		public int insertCareer(Career h_career) {
			return caDAO.insertCareer(h_career);
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
