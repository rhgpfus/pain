package com.iot.erp.position.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iot.erp.position.dao.PositionDAO;
import com.iot.erp.position.dto.Position;

@Service
public class PositionServiceImpl implements PositionService {
	
	@Autowired
	PositionDAO pDao;
	
	//직책-----------------------------------------------------------------------------------------------------------------------------------
		@Override
		public List<Position> selectHumanPositionList(Position h_position) {
			return pDao.selectHumanPositionList(h_position);
			//직책 리스트.
		}
		@Override
		public Position selectHumanPosition(Position h_position) {
			return pDao.selectHumanPosition(h_position);
			//직책 단일.
		}
		@Override
		public int insertHumanPosition(Position h_position) {
			return pDao.insertHumanPosition(h_position);
			//직책 등록.
		}
		@Override
		public int deleteHumanPosition(Position h_position) {
			return pDao.deleteHumanPosition(h_position);
			//직책 삭제.
		}
		@Override
		public int updateHumanPosition(Position h_position) {
			return pDao.updateHumanPosition(h_position);
			//직책 수정.
		}
}
