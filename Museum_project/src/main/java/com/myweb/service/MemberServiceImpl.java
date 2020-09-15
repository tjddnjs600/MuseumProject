package com.myweb.service;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.myweb.domain.MemberVO;
import com.myweb.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService{
	private static Logger log = LoggerFactory.getLogger(MemberServiceImpl.class);

	@Inject
	MemberDAO mdao;
	
	@Override
	public MemberVO login(MemberVO mvo) {
		return mdao.loginAdmin(mvo);
	}
}
