package com.spoid.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.spoid.mybatis.SqlMapConfig;

public class SpoidDAO {

		//MyBatis 셋팅값 호출
		SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();

		//mapper에 접근하기 위한 SqlSession
		SqlSession sqlSession;
		
		//싱글톤으로 new없이 사용하기 때문에
		//다른 곳에 new로 객체생성 못하게 private로 막음.
		private SpoidDAO() {}
		
		//싱글톤 패턴 - 객체생성 1회 실시 후 공유해서 사용.
		//객체생성 1회 실시
		private static SpoidDAO instance = new SpoidDAO();
		
		//외부에서 getInstance()를 활용하여 1회 실시한 객체를 공유.
		public static SpoidDAO getInstance() {
			return instance;
		
		
	}

}
