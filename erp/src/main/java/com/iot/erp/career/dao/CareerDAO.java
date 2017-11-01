package com.iot.erp.career.dao;

import java.util.List;

import com.iot.erp.career.dto.Career;

public interface CareerDAO {
	
	//입사구분--------------------------------------------------------------------------------------------------------------------
	public List<Career> selectCareerList(Career h_career);
	//입사구분 리스트를 받아오는 함수.
	public Career selectCareer(Career h_career);
	//입사구분 단일로 받아오는 함수. 
	public int insertCareer(Career h_career);
	//입사구분 입사정보 신규등록하는 함수.
	public int deleteCareer(Career h_career);
	//입사구분 입사정보 삭제하는 함수.
	public int updateCareer(Career h_career);
	//입사구분 입사정보 수정하는 함수.

}
