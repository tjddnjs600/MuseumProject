package com.myweb.ctrl;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class JDBCTest {
	private static Logger log = LoggerFactory.getLogger(JDBCTest.class);
	static {
		try {
			Class.forName("net.sf.log4jdbc.sql.jdbcapi.DriverSpy");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testConnection() {
		try (Connection cn =
				DriverManager.getConnection(
						"jdbc:log4jdbc:oracle:thin:@localhost:1521:XE", "jspuser", "oracle")){
			log.info(">>> jdbc test ok : " + cn);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}
}
