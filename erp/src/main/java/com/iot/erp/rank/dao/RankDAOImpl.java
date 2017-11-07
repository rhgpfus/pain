package com.iot.erp.rank.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.iot.erp.rank.dto.Rank;

@Repository
public class RankDAOImpl extends SqlSessionDaoSupport implements RankDAO {
	
	//직급------------------------------------------------------------------------------------------------------------------
		@Override
		public List<Rank> selectHumanRankList(Rank h_rank) {
			return this.getSqlSession().selectList("rank.SELECT_RANK", h_rank);
			//직급 리스트.
		}
		@Override
		public Rank selectHumanRank(Rank h_rank) {
			System.out.println(h_rank.getRankCode());
			return this.getSqlSession().selectOne("rank.SELECT_RANK", h_rank);
			//직급 단일.
		}
		@Override
		public int insertHumanRank(Rank h_rank) {
			return this.getSqlSession().insert("rank.INSERT_RANK", h_rank);
			//직급 등록.
		}
		@Override
		public int deleteHumanRank(Rank h_rank) {
			return this.getSqlSession().delete("rank.DELETE_RANK", h_rank);
			//직급 삭제.
		}
		@Override
		public int updateHumanRank(Rank h_rank) {
			return this.getSqlSession().update("rank.UPDATE_RANK", h_rank);
			//직급 수정.
		}

}
