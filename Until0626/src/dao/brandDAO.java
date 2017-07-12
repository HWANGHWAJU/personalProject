package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.brandDTO;
import dto.guitarDTO;
import service.ListBrand;
import service.ListGuitar;

public class brandDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public brandDAO(){
		try{
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/project");
			conn = ds.getConnection();
		}catch(Exception ex){
			System.out.println("DB 연결 실패 :"+ex);
			return;
		}
	}
	
	//
	
	public int getBrandCount(){
		int x =0;
		try{
			pstmt = conn.prepareStatement("select count(distinct brand_name) from brand");
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				x = rs.getInt(1);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();} catch(Exception e){}
			if(pstmt!=null) try{pstmt.close();} catch(Exception e){}
		}
		return x;
	}
	
	public  ListBrand getAllbrand(){
		String sql="";
		List<brandDTO> list = new ArrayList<>();
		ListBrand brandList = null;
		try{
			sql="select * from brand group by brand_name";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				list.add(convertB(rs));
			}
			brandList = new ListBrand(list);
			return brandList;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs!=null) try{ rs.close();} catch(Exception e){}
			if(pstmt!=null) try{pstmt.close();} catch(Exception e){}
		}
		return null;
	}
	public ListGuitar getAllGuitar(){
		String sql="";
		List<guitarDTO> list = new ArrayList<>();
		ListGuitar guitarList = null;
		
		try{
			sql="select * from guitar";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				list.add(convertG(rs));
			}
			guitarList = new ListGuitar(list);
			return guitarList;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();} catch(Exception e){}
			if(pstmt!=null) try{pstmt.close();} catch(Exception e){}
		}
		return null;
	}
	
	public ListBrand getAcouticBrandList(){
		String sql="";
		List<brandDTO> list = new ArrayList<>();
		ListBrand brandList = null;
		try{
			sql="select brand_name from brand where g_type='통기타'";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				list.add(convertB(rs));
			}
			brandList = new ListBrand(list);
			return brandList;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();} catch(Exception e){}
			if(pstmt!=null) try{pstmt.close();} catch(Exception e){}
		}
		return null;
	}
	
	public brandDTO convertB(ResultSet rs) throws SQLException{
		return new brandDTO(rs.getString("brand_name"), rs.getString("g_type"));
	}
	public guitarDTO convertG(ResultSet rs) throws SQLException {
		return new guitarDTO(rs.getInt("g_item_num"), rs.getString("g_brand"), rs.getString("g_cord"), rs.getInt("g_price"), rs.getInt("g_point"), rs.getString("g_ex"), rs.getInt("g_redcnt"), rs.getInt("g_ordercnt"), rs.getString("g_type"), rs.getString("g_item_name"), rs.getString("update_date"));
	}
	
}
