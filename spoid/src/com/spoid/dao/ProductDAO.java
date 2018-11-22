package com.spoid.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.spoid.common.DBManager;
import com.spoid.dto.ProductDTO;
import com.spoid.mybatis.SqlMapConfig;

public class ProductDAO
{
	//MyBatis 셋팅값 호출
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	
	//mapper 접급하기 위한 SqlSession
	SqlSession sqlSession;
	
	// 싱글톤으로 new 없이 사용하기 때문에
	// 다른 곳에 new 객체를 생성하지 못하게 private으로 막음
	private ProductDAO(){}
	
	// 싱글톤 패컨 - 객체 생성 1회 실시 후 공유해서 사용
	// 객체 생성 1회 실시
	private static ProductDAO instance = new ProductDAO();
	
	//외부에서 getInstance()를 활용하여 1회 실시한 객체를 공유
	public static ProductDAO getInstance() {
		return instance;
	}
	
	// 실제 동작들

	//Best 생품목록 출력(Index 페이지)
	public List<ProductDTO> bestView(){
		sqlSession = sqlSessionFactory.openSession();
		List<ProductDTO> bestlist = null;
		try {
			bestlist = sqlSession.selectList("bestView"); // 쿼리문 역할
			System.out.println(bestlist.size());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return bestlist;
	}
	public List<ProductDTO> newView(){
		sqlSession = sqlSessionFactory.openSession();
		List<ProductDTO> bestlist = null;
		try {
			bestlist = sqlSession.selectList("newView"); // 쿼리문 역할
			System.out.println(bestlist.size());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return bestlist;
	}
	public List<ProductDTO> eventView(){
		sqlSession = sqlSessionFactory.openSession();
		List<ProductDTO> bestlist = null;
		try {
			bestlist = sqlSession.selectList("eventView"); // 쿼리문 역할
			System.out.println(bestlist.size());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return bestlist;
	}
//=============================================================
//myBatis 사용하기 전 DBManager 와 
//PrepareStatement방식으로 구현한 DAO 객체
/*  Connection conn = null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;
  ArrayList<ProductDTO> list = new ArrayList();
  int result = 0;
  
  public ArrayList<ProductDTO> bestView()
  {
    try
    {
      this.conn = DBManager.getConnection();
      String sql = "SELECT * FROM best_pro_views";
      this.pstmt = this.conn.prepareStatement(sql);
      this.rs = this.pstmt.executeQuery();
      while (this.rs.next())
      {
        String p_code = this.rs.getString("p_code");
        String p_name = this.rs.getString("p_name");
        int p_price = this.rs.getInt("p_price");
        String p_img = this.rs.getString("p_img");
        Date p_indate = this.rs.getDate("p_indate");
        ProductDTO pDto = new ProductDTO(p_code, p_name, p_price, p_img, p_indate);
        System.out.println("������ : " + p_img);
        this.list.add(pDto);
      }
    }
    catch (Exception localException) {}
    return this.list;
  }*/
}
