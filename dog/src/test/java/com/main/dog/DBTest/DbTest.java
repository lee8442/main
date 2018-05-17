package com.main.dog.DBTest;

import org.junit.Test;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class DbTest {
	
	@Test
	//Amazon DB 연결 테스트
	public void dbTest() throws Exception {
		
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		//BasicDataS
		
		dataSource.setUrl("jdbc:oracle:thin:@mydatabase.cneupgctltbi.ap-northeast-2.rds.amazonaws.com:1521:ORCL");
		dataSource.setDriverClassName(oracle.jdbc.driver.OracleDriver.class.getName());
		dataSource.setUsername("admin");
		dataSource.setPassword("asdf1234");
		
		SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();		
		
		Resource resource = new ClassPathResource("myBatis/myBatis-config.xml");
		factoryBean.setConfigLocation(resource);	
		factoryBean.setDataSource(dataSource);
		
		SqlSessionTemplate sqlSessionTemplate = new SqlSessionTemplate(factoryBean.getObject());
				
		int result = sqlSessionTemplate.selectOne("com.mybatis.test.selectCount");
		System.out.println("결과 : "+result);		
	}
}