package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.memberDTO;
import dto.userDTO;

public class memberDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public memberDAO(){
		try{
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/project");
			conn = ds.getConnection();
		}catch(Exception ex){
			System.out.println("DB 연결 실패 :"+ex);
			return;
		}
	}
	
	// 회원 가입 
	
	public boolean checkId(String id) throws SQLException{
	
		String sql="select m_id from member where m_id='"+id+"'";
		
		try{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				System.out.println("중복");
				return false;}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();} catch(Exception e){}
			if(pstmt!=null) try{pstmt.close();} catch(Exception e){}
		}
		return true;
	}
	
	public memberDTO updateMem(memberDTO m) throws Exception{
		String sql="";
		int result=0;
		memberDTO dto = null;
		try{
			sql="update member set m_pw=?, m_name=?, m_birth=?, m_email=?, m_phone=?, m_postcode=?, m_roadAddress=?, m_jibunAddress=? where m_id=?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m.getM_pw());
			pstmt.setString(2, m.getM_name());
			pstmt.setString(3, m.getM_birth());
			pstmt.setString(4, m.getM_email());
			pstmt.setString(5, m.getM_phone());
			pstmt.setString(6, m.getM_postcode());
			pstmt.setString(7, m.getM_roadAddress());
			pstmt.setString(8, m.getM_jibunAddress());
			pstmt.setString(9, m.getM_id());
			
			result = pstmt.executeUpdate();
			System.out.println(result);
			if(result != 0){
				sql="select * from member where m_id='"+m.getM_id()+"'";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				if(rs.next()){
					dto = convertM(rs);
					System.out.println("업데이트!");
					return dto;
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs!=null) try{ rs.close();} catch(Exception e){}
			if(pstmt!=null) try{pstmt.close();} catch(Exception e){}
		}
		return m;
	}
	public boolean insertShop(memberDTO m) throws SQLException{
		String sql="";
		
		int result=0;
		
		try{
			sql="insert into member values(?,?,?,?,?,?,?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getM_id());
			pstmt.setString(2, m.getM_pw());
			pstmt.setString(3, m.getM_name());
			pstmt.setString(4, m.getM_gender());
			pstmt.setString(5, m.getM_birth());
			pstmt.setString(6, m.getM_email());
			pstmt.setString(7, m.getM_phone());
			pstmt.setString(8, m.getM_postcode());
			pstmt.setString(9, m.getM_roadAddress());
			pstmt.setString(10, m.getM_jibunAddress());
		
			result = pstmt.executeUpdate();
			
			if(result != 0) return true;
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(pstmt!=null) try{pstmt.close();} catch(SQLException e){}
		}
		return false;
	}
	
	
	//로그인 
	
	public userDTO loginM(String id, String pw) throws Exception{
		String sql="";
		System.out.println(id);
		userDTO u = null;
		
		try{
			sql = "select m_id, m_pw ,m_name from member where m_id='"+id+"' and m_pw='"+pw+"'";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				String uid = rs.getString("m_id");
				String upw = rs.getString("m_pw");
				String un = rs.getString("m_name");
				
				u = new userDTO(uid,un ,upw);
				
				return u;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();} catch(SQLException e){}
			if(pstmt!=null) try{pstmt.close();} catch(SQLException e){}
		}
		return null;
	}
	
	public memberDTO selectMem(userDTO u) throws SQLException{
		String sql="select * from member where m_id=?";
		memberDTO m =null;
		
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u.getM_id());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				m = convertM(rs);
			}
			return m;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs != null) try{rs.close();} catch(Exception e){}
			if(pstmt != null) try{pstmt.close();} catch(Exception e){}
		}
		return null;
	}
	
	public memberDTO convertM(ResultSet rs) throws SQLException{
		return new memberDTO( rs.getString("m_id"), rs.getString("m_pw"), rs.getString("m_name"), rs.getString("m_gender"), rs.getString("m_birth"), rs.getString("m_email"), rs.getString("m_phone"), rs.getString("m_postcode"), rs.getString("m_roadAddress"), rs.getString("m_jibunAddress"));
	}
}
