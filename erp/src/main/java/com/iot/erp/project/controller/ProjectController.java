package com.iot.erp.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
}
