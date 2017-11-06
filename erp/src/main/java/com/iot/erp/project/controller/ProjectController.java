package com.iot.erp.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.erp.career.dto.Career;
import com.iot.erp.project.dto.Project;
import com.iot.erp.project.service.ProjectService;

@Controller
public class ProjectController {
	
	
	@Autowired
	ProjectService pss;
	
	@RequestMapping(value="/project/list", method=RequestMethod.GET)
	public String list(){
		return "project/list";
	}
	
	@RequestMapping(value="/project/list", method=RequestMethod.POST)
	public @ResponseBody List<Project> selectHumanProjectList(Project h_project) {
		return pss.selectHumanProjectList(h_project);
	}
	
	@RequestMapping(value="/project/search", method=RequestMethod.POST)
	public @ResponseBody Project selectHumanProject(@RequestBody Project h_project) {
		return pss.selectHumanProject(h_project);
	}
	@RequestMapping(value="/project/insert", method=RequestMethod.POST)
	public @ResponseBody ModelMap insertProject(@RequestBody Project h_project, ModelMap map){
		int cnt = pss.insertHumanProject(h_project);
		map.put("msg", h_project.getProjectName() + "등록이 실패하였습니다.");
		map.put("url","no-move");
		map.put("action", "close,refresh");
		if(cnt==1){
			map.put("msg", "프로젝트가 정상적으로 등록 되었습니다.");
		}
		return map;
	}
	
	@RequestMapping(value="/project/update", method=RequestMethod.POST)
	public @ResponseBody ModelMap updateProject(@RequestBody Project h_project, ModelMap map){
		System.out.println(h_project);
		int cnt = pss.updateHumanProject(h_project);
		map.put("msg", h_project.getProjectName() + "수정 실패하였습니다.");
		map.put("url","no-move");
		map.put("action", "close,refresh");
		if(cnt==1){
			map.put("msg", "프로젝트가 정상적으로 수정 되었습니다.");
		}
		return map;
	}
	
	@RequestMapping(value="/project/delete", method=RequestMethod.POST)
	public @ResponseBody ModelMap deleteProject(@RequestBody Project h_project, ModelMap map){
		int cnt = pss.deleteHumanProject(h_project);
		map.put("msg", h_project.getProjectNo()+"번 삭제가 실패하였습니다.");
		map.put("url", "no-move");
		map.put("action", "close,refresh");
		if(cnt==1){
			map.put("msg", "프로젝트가 정상적으로 삭제 되었습니다.");
		}
		return map;
	}
	
	
	
}
