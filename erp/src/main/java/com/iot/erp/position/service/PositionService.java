package com.iot.erp.position.service;

import java.util.List;

import com.iot.erp.position.dto.Position;

public interface PositionService {
	
	
//직책-----------------------------------------------------------------------------------------------------------------------
public List<Position> selectHumanPositionList(Position h_position);
//직책 리스트를 받아오는 함수.
public Position selectHumanPosition(Position h_position);
//직책 단일로 받아오는 함수.
public int insertHumanPosition(Position h_position);
//직책 직책정보 신규 등록하는 함수.
public int deleteHumanPosition(Position h_position);
//직책 직책정보 삭제하는 함수.
public int updateHumanPosition(Position h_position);
//직책 직책정보 수정하는 함수.

}
