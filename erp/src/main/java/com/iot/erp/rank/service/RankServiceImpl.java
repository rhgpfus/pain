package com.iot.erp.rank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iot.erp.rank.dao.RankDAO;
import com.iot.erp.rank.dto.Rank;


@Service
public class RankServiceImpl implements RankService {
	
	@Autowired
	RankDAO rDao;
	
	//직급-----------------------------------------------------------------------------------------------------------------------------------	
		@Override
		public List<Rank> selectHumanRankList(Rank h_rank) {
			return rDao.selectHumanRankList(h_rank);
			//직급 리스트.
		}
		@Override
		public Rank selectHumanRank(Rank h_rank) {
			return rDao.selectHumanRank(h_rank);
			//직급 단일.
		}
		@Override
		public int insertHumanRank(Rank h_rank) {
			return rDao.insertHumanRank(h_rank);
			//직급 등록.
		}
		@Override
		public int deleteHumanRank(Rank h_rank) {
			return rDao.deleteHumanRank(h_rank);
			//직급 삭제.
		}
		@Override
		public int updateHumanRank(Rank h_rank) {
			return rDao.updateHumanRank(h_rank);
			//직급 수정.
		}
	
	

}
