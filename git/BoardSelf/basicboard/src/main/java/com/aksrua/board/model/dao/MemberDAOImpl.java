package com.aksrua.board.model.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.aksrua.board.model.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<MemberDTO> list() {

		return sqlSession.selectList("member.list");
	
	}

	@Override
	public void insert(MemberDTO dto) {
		
		sqlSession.insert("member.insert",dto);
		
	}

}
