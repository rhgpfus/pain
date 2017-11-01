package com.iot.erp.rank.service;

import java.util.List;

import com.iot.erp.rank.dto.Rank;



public interface RankService {

	
	//직급-----------------------------------------------------------------------------------------------------------------------
		public List<Rank> selectHumanRankList(Rank h_rank);
		//직급 리스트를 받아오는 함수.
		public Rank selectHumanRank(Rank h_rank);
		//직급 단일로 받아오는 함수.
		public int insertHumanRank(Rank h_rank);
		//직급 직급정보 신규 등록하는 함수.
		public int deleteHumanRank(Rank h_rank);
		//직급 직급정보 삭제하는 함수.
		public int updateHumanRank(Rank h_rank);
		//직급 직급정보 수정하는 함수.

}
