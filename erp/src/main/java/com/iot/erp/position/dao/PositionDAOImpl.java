package com.iot.erp.position.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.iot.erp.position.dto.Position;

@Repository
public class PositionDAOImpl extends SqlSessionDaoSupport implements PositionDAO {

	//직책------------------------------------------------------------------------------------------------------------------
		@Override
		public List<Position> selectHumanPositionList(Position h_position) {
			return this.getSqlSession().selectList("position.SELECT_POSITION", h_position);
			//직책 리스트.
		}
		@Override
		public Position selectHumanPosition(Position h_position) {
			System.out.println(h_position.getPositionCode());
			return this.getSqlSession().selectOne("position.SELECT_POSITION", h_position);
		}
		@Override
		public int insertHumanPosition(Position h_position) {
			return this.getSqlSession().insert("position.INSERT_POSITION", h_position);
			//직책 등록.
		}
		@Override
		public int deleteHumanPosition(Position h_position) {
			return 0;
			//직책 삭제.
		}
		@Override
		public int updateHumanPosition(Position h_position) {
			return 0;
			//직책 수정.
		}
}
