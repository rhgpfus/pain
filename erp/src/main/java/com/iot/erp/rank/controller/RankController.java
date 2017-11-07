package com.iot.erp.rank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.erp.bank.dto.HumanBank;
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
	
	@RequestMapping(value="/rank/insert", method=RequestMethod.POST)
	public @ResponseBody ModelMap insertRank(@RequestBody Rank h_rank, ModelMap map){
		int cnt = rs.insertHumanRank(h_rank);
		map.put("msg", h_rank.getRankName() + "등록이 실패하였습니다.");
		map.put("url","no-move");
		map.put("action", "close,refresh");
		if(cnt==1){
			map.put("msg", "직급이 정상적으로 등록 되었습니다.");
		}
		return map;
	}
	
	@RequestMapping(value="/rank/update", method=RequestMethod.POST)
	public @ResponseBody ModelMap updateRank(@RequestBody Rank h_rank, ModelMap map){
		int cnt = rs.updateHumanRank(h_rank);
		map.put("msg", h_rank.getRankName() + "수정이 실패하였습니다.");
		map.put("url","no-move");
		map.put("action", "close,refresh");
		if(cnt==1){
			map.put("msg", "직급이 정상적으로 수정 되었습니다.");
		}
		return map;
	}
	
	@RequestMapping(value="/rank/delete", method=RequestMethod.POST)
	public @ResponseBody ModelMap deleteRank(@RequestBody Rank h_rank, ModelMap map){
		int cnt = rs.deleteHumanRank(h_rank);
		map.put("msg", h_rank.getRankName() + "삭제가 실패하였습니다.");
		map.put("url","no-move");
		map.put("action", "close,refresh");
		if(cnt==1){
			map.put("msg", "직급이 정상적으로 삭제 되었습니다.");
		}
		return map;
	}
}
