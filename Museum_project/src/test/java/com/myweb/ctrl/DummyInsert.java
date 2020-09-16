package com.myweb.ctrl;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.myweb.domain.NoticeVO;
import com.myweb.persistence.BoardDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class DummyInsert {
	private static Logger log = LoggerFactory.getLogger(DummyInsert.class);

	@Inject
	private BoardDAO bdao;

	@Test
	public void insertProductDummy() {
		for (int i = 0; i < 255; i++) {
			NoticeVO nvo = new NoticeVO();
			nvo.setNtitle(i + "번째 상품명");
			nvo.setNwriter("admin@admin.com");
			nvo.setNcontent(i + "번째 상품 상세 정보");
			nvo.setImgfile("NONE");
			bdao.noticeRegist(nvo);
		}
	}

}
