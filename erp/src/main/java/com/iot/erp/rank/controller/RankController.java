package com.iot.erp.rank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.erp.rank.dto.Rank;
import com.iot.erp.rank.service.RankService;

@Controller
public class RankController {
	
	@Autowired
	RankService rs;
	
	@RequestMapping(value="/rank/list", method=RequestMethod.GET)
	public String RankList(){
		return "rank/list";
	}
	
	@RequestMapping(value="/rank/list", method=RequestMethod.POST)
	public @ResponseBody List<Rank> getRankList(@RequestBody Rank h_rank) {
		return rs.selectHumanRankList(h_rank);
	}

	@RequestMapping(value="/rank/search", method=RequestMethod.POST)
	public @ResponseBody Rank getRank(@RequestBody Rank h_rank) {
		return rs.selectHumanRank(h_rank);
	}
}
