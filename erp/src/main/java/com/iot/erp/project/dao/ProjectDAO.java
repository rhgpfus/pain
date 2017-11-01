package com.iot.erp.project.dao;

import java.util.List;

import com.iot.erp.project.dto.Project;

public interface ProjectDAO {
	
	
	//프로젝트--------------------------------------------------------------------------------------------------------------------
		public List<Project> selectHumanProjectList(Project h_project);
		//프로젝트 리스트를 받아오는 함수.
		public Project selectHumanProject(Project h_project);
		//프로젝트 단일로 받아오는 함수.
		public int insertHumanProject(Project h_project);
		//프로젝트 프로젝트정보 신규 등록하는 함수.
		public int deleteHumanProject(Project h_project);
		//프로젝트 프로젝트정보 삭제하는 함수.
		public int updateHumanProject(Project h_project);
		//프로젝트 프로젝트정보 수정하는 함수.


}
