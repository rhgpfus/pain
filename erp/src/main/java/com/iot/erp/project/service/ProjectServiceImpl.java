package com.iot.erp.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iot.erp.project.dao.ProjectDAO;
import com.iot.erp.project.dto.Project;


@Service
public class ProjectServiceImpl implements ProjectService {
	
	@Autowired
	ProjectDAO pDao;
	
//프로젝트-----------------------------------------------------------------------------------------------------------------------------------
		@Override
		public List<Project> selectHumanProjectList(Project h_project) {
			return pDao.selectHumanProjectList(h_project);
			//프로젝트 리스트.
		}
		@Override
		public Project selectHumanProject(Project h_project) {
			return pDao.selectHumanProject(h_project);
			//프로젝트 단일.
		}
		@Override
		public int insertHumanProject(Project h_project) {
			return 0;
			//프로젝트 등록.
		}
		@Override
		public int deleteHumanProject(Project h_project) {
			return 0;
			//프로젝트 삭제.
		}
		@Override
		public int updateHumanProject(Project h_project) {
			return 0;
			//프로젝트 수정.
		}

}
