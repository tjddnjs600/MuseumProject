package com.myweb.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.myweb.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	private static Logger log = LoggerFactory.getLogger(MemberDAOImpl.class);
	private static String ns = "MemberMapper.";
	
	@Inject
	SqlSession sql;
	
	@Override
	public MemberVO loginAdmin(MemberVO mvo) {
		return sql.selectOne(ns+"login", mvo);
	}
	
	
}
