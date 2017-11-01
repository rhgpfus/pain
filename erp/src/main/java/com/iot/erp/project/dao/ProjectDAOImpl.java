package com.iot.erp.project.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.iot.erp.project.dto.Project;

@Repository
public class ProjectDAOImpl extends SqlSessionDaoSupport implements ProjectDAO {
	
	//프로젝트---------------------------------------------------------------------------------------------------------------
		@Override
		public List<Project> selectHumanProjectList(Project h_project) {
			return this.getSqlSession().selectList("project.SELECT_PROJECT", h_project);
			//프로젝트 리스트.
		}
		@Override
		public Project selectHumanProject(Project h_project) {
			return this.getSqlSession().selectOne("project.SELECT_PROJECT", h_project);
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
