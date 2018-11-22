package com.spoid.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.spoid.common.DBManager;
import com.spoid.dto.MemberDTO;
import com.spoid.dto.ProductDTO;
import com.spoid.mybatis.SqlMapConfig;

public class MemberDAO {
	
	//MyBatis 셋팅값 호출
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession(); 
	
	//mapper 접급하기 위한 SqlSession
	SqlSession sqlSession;
	
	// 싱글톤으로 new 없이 사용하기 때문에
	// 다른 곳에 new 객체를 생성하지 못하게 private으로 막음
	private MemberDAO(){}
	
	// 싱글톤 패컨 - 객체 생성 1회 실시 후 공유해서 사용
	// 객체 생성 1회 실시(외부에서 instance 변수 접근 불가)
	private static MemberDAO instance = new MemberDAO();
	
	
	
	
	//외부에서 getInstance()를 활용하여 1회 실시한 객체를 공유
	public static MemberDAO getInstance() {
		return instance;
	}
	//회원가입 = 회원등록
	public int insertMember(MemberDTO mDto) {
		int result = 0; 
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.insert("insertMember",mDto);
			sqlSession.commit(); //insert, update, delete 는 반드시 commit

		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return result;
	}
	
	//회원가입 페이지 id 중복 체크(Ajax)
	public String confirmID(String userid) {
		String result = null;
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.selectOne("confirmID",userid); // selectOne : 한 건만 조회할 때 사용
			
			if(result != null) {
				result = "-1";
			}else {
				result = "1";
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}		
		
		return result;
		
	}
	//비밀번호 중복 체크
	public String confirmPwd(String id, String pwd) {
		String result = null;
		MemberDTO mDto = new MemberDTO(); // selectOne은 id와 pwd 두개의 변수를 담을 수 없다
		// 그러므로 가방에 담아 객체로 전달해야한다
		
		sqlSession = sqlSessionFactory.openSession();
		mDto.setId(id);
		mDto.setPwd(pwd);
		try {
			result = sqlSession.selectOne("confirmPwd",mDto); // selectOne : 한 건만 조회할 때 사용
	
			if(result != null) {
				result = "-1";
			}else {
				result = "1";
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}		
				
		return result;
	}
	//로그인 기능
	public MemberDTO loginCheck(String id, String pwd){
		sqlSession = sqlSessionFactory.openSession();
		MemberDTO mDto = new MemberDTO();
		mDto.setId(id);
		mDto.setPwd(pwd);
		try {
			mDto = sqlSession.selectOne("loginCheck",mDto); // selectOne : 한 건만 조회할 때 사용
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}		
		return mDto;
	}
	
	//회원정보 수정 (비밀번호 제외)
	public int updateMember(MemberDTO mDto) {
		int result = 0;
		// 그러므로 가방에 담아 객체로 전달해야한다
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.update("updateMember",mDto); // selectOne : 한 건만 조회할 때 사용
			sqlSession.commit();

		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}		
				
		return result;	
	}
	//회원정보 수정 (비밀번호만)
	public int updatePassword(String id, String pwd_now, String new_pwd) {
		int result = 0;
		// 그러므로 가방에 담아 객체로 전달해야한다
		sqlSession = sqlSessionFactory.openSession();
		MemberDTO mDto = new MemberDTO();
		mDto.setId(id);
		mDto.setPwd(pwd_now);
		mDto.setNew_pwd(new_pwd);
		try {
			result = sqlSession.update("updatePassword",mDto); // selectOne : 한 건만 조회할 때 사용
			sqlSession.commit();

		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}		
				
		return result;	
	}
	
	//회원탈퇴(삭제)
	public int deleteMember(String userid) {
		int flag = 0;
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			flag = sqlSession.delete("deleteMember",userid);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			sqlSession.close();
		}
		return flag;
	}
	/*Connection conn = null;
	PreparedStatement pstmt = null;
	ArrayList<MemberDTO> list = null;			
	ResultSet rs = null;
	MemberDTO mDto;
	
	public int insertMember(MemberDTO mDto) {
		// TODO Auto-generated method stub
		int result = 0;	
		
		try {
			conn = DBManager.getConnection();
			String sql = "INSERT INTO shop_mem(id,pwd,name,birth,phone,zipcode,addr1,addr2,email) VALUES(?,?,?,?,?,?,?,?,?)";
		
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,mDto.getId());
			pstmt.setString(2,mDto.getPwd());
			pstmt.setString(3,mDto.getName());
			pstmt.setString(4,mDto.getBirth());
			pstmt.setString(5,mDto.getPhone());
			pstmt.setString(6,mDto.getZipcode());
			pstmt.setString(7,mDto.getAddr1());
			pstmt.setString(8,mDto.getAddr2());
			pstmt.setString(9,mDto.getEmail());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn,pstmt);
		}

		return result;
	}
	public MemberDTO loginCheck(String id, String pwd){
		try {
		
			conn = DBManager.getConnection();
			String sql = "SELECT * FROM shop_mem WHERE id=? AND pwd =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();

			while(rs.next()) {
				String mem_id = rs.getString("id");
				String mem_pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String birth = rs.getString("birth");
				String phone = rs.getString("phone");
				String zipcode = rs.getString("zipcode");
				String addr1 = rs.getString("addr1");
				String addr2 = rs.getString("addr2");
				String email = rs.getString("email");
				Date mdate = rs.getDate("mdate");
				mDto = new MemberDTO(mem_id, mem_pwd, name, birth, phone, zipcode, addr1, addr2, email, mdate);
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return mDto;
	}
	public int updateMember(MemberDTO mDto) {
		// TODO Auto-generated method stub
		int result = 0;
		try {
			
			conn = DBManager.getConnection();
			String sql = "UPDATE shop_mem SET "
									+"name = ?, "
									+"birth = ?, "
									+"phone = ?, "
									+"zipcode=?, "
									+"addr1 = ?, "
									+"addr2 = ?, "
									+"email = ? " 
									+"where id = ?";
		
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1,mDto.getName());
			pstmt.setString(2,mDto.getBirth());
			pstmt.setString(3,mDto.getPhone());
			pstmt.setString(4,mDto.getZipcode());
			pstmt.setString(5,mDto.getAddr1());
			pstmt.setString(6,mDto.getAddr2());
			pstmt.setString(7,mDto.getEmail());
			pstmt.setString(8,mDto.getId());
			result = pstmt.executeUpdate();

		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}
	//Ajax를 활용한 id 중복체크
	public String confirmID(String userid) {

		String msg = "";
		System.out.println("sql "+ userid);
		try {
			conn = DBManager.getConnection();
			String sql = "SELECT * FROM shop_mem WHERE id=?";
			pstmt = conn.prepareStatement(sql);
	
			pstmt.setString(1,userid);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String mem_id = rs.getString("id");
				String mem_pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String birth = rs.getString("birth");
				String phone = rs.getString("phone");
				String zipcode = rs.getString("zipcode");
				String addr1 = rs.getString("addr1");
				String addr2 = rs.getString("addr2");
				String email = rs.getString("email");
				Date mdate = rs.getDate("mdate");
				mDto = new MemberDTO(mem_id, mem_pwd, name, birth, phone, zipcode, addr1, addr2, email, mdate);
				System.out.println("멤버"+mem_id);
			}
			System.out.println(mDto.toString());
			if(mDto != null) {			
				msg = "-1";
			}else {
				msg = "1";
			}
							
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return msg;
		
	}
	public String confirmPwd(String id, String pwd) {
		// TODO Auto-generated method stub
		String msg = "";
		try {
			conn = DBManager.getConnection();
			String sql = "SELECT * FROM shop_mem WHERE id=? and pwd=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String mem_id = rs.getString("id");
				String mem_pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String birth = rs.getString("birth");
				String phone = rs.getString("phone");
				String zipcode = rs.getString("zipcode");
				String addr1 = rs.getString("addr1");
				String addr2 = rs.getString("addr2");
				String email = rs.getString("email");
				Date mdate = rs.getDate("mdate");
				mDto = new MemberDTO(mem_id, mem_pwd, name, birth, phone, zipcode, addr1, addr2, email, mdate);
				System.out.println("멤버"+mem_id);
			}	
			
			if(mDto != null) {
				msg =  "-1";
			}else {
				msg = "1";
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		return msg;
	}
	public int updatePassword(String id, String pwd_now, String new_pwd) {
		// TODO Auto-generated method stub
		int result = 0;
		try {
			conn = DBManager.getConnection();
			String sql = "UPDATE shop_mem SET pwd =? WHERE id=? and pwd =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, new_pwd);
			pstmt.setString(2, id);
			pstmt.setString(3,pwd_now);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}*/

}
