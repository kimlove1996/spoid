package com.spoid.mybatis;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlMapConfig {
	private static SqlSessionFactory sqlSessionFactory;
	
	static {
		String resource = "com/spoid/mybatis/Configuration.xml";
		try {
			// resoure라는 소스를 읽어다 reader라는 변수에 담기(환경 설정 3개 읽어옴)
			Reader reader = Resources.getResourceAsReader(resource);
			
			if(sqlSessionFactory == null) { //sqlsessionFactory가 null 이면
				sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
				// 읽어온 환경 설정 3개를 sqlSessionFactory에 세팅
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	public static SqlSessionFactory getSqlSession() { //db에 관련된 작업을 할 때 호출
		
		return sqlSessionFactory;
	}
}
