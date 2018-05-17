package com.main.dog.DBTest;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

//JUnit Runtime Class
@RunWith(SpringJUnit4ClassRunner.class)
// Spring context xml 파일들을 읽어오는 설정
/*
 * @ContextConfiguration(locations =
 * {"file:src/main/resources/applicationContext.xml",
 * "file:src/main/resources/mybatis/myBatis-config.xml"})
 */
// WebApplication 위에서 불러온 Context 가 Spring 이 구현하는 WebApplicationContext 컨테이너라는
// 것을 명시
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
@WebAppConfiguration
public class DbTest2 {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Test
	// Amazon DB 연결 테스트
	public void dbTest() throws Exception {
		System.out.println("결과 : " + sqlSessionTemplate.selectOne("com.mybatis.test.selectCount"));
	}
}
