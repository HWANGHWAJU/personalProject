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

import dto.RequestQ;
import dto.RequestW;
import dto.fileDTO;
import dto.qandaDTO;

public class qandaDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public qandaDAO(){
		try{
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/project");
			conn = ds.getConnection();
		}catch(Exception ex){
			System.out.println("DB 연결 실패 :"+ex);
			return;
		}
	}
	
	//글 개수 구하기
	public int getListCount(){
		int x = 0;
		
		try{
			pstmt = conn.prepareStatement("select count(*) from qanda");
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				x = rs.getInt(1);
			}
		}catch(Exception ex){
			System.out.println("QandA getListCount 에러 :"+ex);
		}finally{
			if(rs!=null) try{rs.close();} catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();} catch(SQLException ex){}
		}
		return x;
	}
	
	//글 목록 보기 
	public List<qandaDTO> getQandAList(int page){
		String sql ="select * from qanda where del_tag='N' order by re_ref desc, re_seq asc limit ?,?";
		int size = 10;
		int start = (page-1)*size;
		System.out.println("sql :"+sql);
		List<qandaDTO> list = new ArrayList<>();
		
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2,size);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				list.add(convert(rs));
			}
			
			return list;
		}catch(Exception ex){
			System.out.println("getQandAList 에러 :"+ex);
		}finally{
			if(rs!=null) try{rs.close();} catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();} catch(SQLException ex){}
		}
		return null;
	}
	
	//글 상세 보기 
	
	public qandaDTO getDetailQ(int num) throws Exception{
		qandaDTO q = null;
		String sql ="";
		
		try{
			sql = "select * from qanda where del_tag='N' and article_num="+num;
			pstmt = conn.prepareStatement(sql);
			
			rs= pstmt.executeQuery();
			
			if(rs.next()){
				q = convert(rs);
			}
			return q;
		}catch(Exception ex){
			System.out.println("디테일 보기 오류 :"+ex);
		}finally{
			if(rs!=null){rs.close();} 
			if(pstmt!=null){pstmt.close();}
		}
		return null;
	}
	

	public List<fileDTO> getDetileF(String b, int num) throws Exception{
		
		List<fileDTO> f = new ArrayList<>();
		String sql="";
		
		try{
			sql = "select * from file where del_tag='N' and file_board=? and file_boardnum=?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, b);
			pstmt.setInt(2, num);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				f.add(convertf(rs));
			}
			System.out.println("파일 불러옴");
			System.out.println("파일 개수 :"+f.size());
			return f;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();} catch(SQLException e){}
			if(pstmt!=null) try{pstmt.close();} catch(SQLException e){}
		}
		return null;
	}
	
	//글 등록
	public void insertF(fileDTO f) throws SQLException{
		String sql ="";
		int num=0;
		System.out.println("파일 들우롸");
		System.out.println("insertFile");
		
		try{
			sql = "insert into file(file_board,file_boardnum, file_savedName, file_originalName, file_size, del_tag) values(?,?,?,?,?,'N')";
			pstmt = conn.prepareStatement(sql);
		
			pstmt.setString(1, f.getBoard());
			pstmt.setInt(2,f.getB_num());
			pstmt.setString(3, f.getSavename());
			pstmt.setString(4, f.getOriginalname());
			pstmt.setInt(5, f.getSize());
			
			num = pstmt.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(pstmt!=null) try{pstmt.close();} catch(SQLException e){}
		}
	}
	
	public int insertQ(RequestQ q) throws SQLException{
		int num = 0;
		String sql="";
		
		int result=0;
		
		try{
			sql = "select max(article_num)+1 from qanda";
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				num = rs.getInt(1);
			}
			
			sql="insert into qanda (article_title, article_content, article_writer, article_pass, date, re_ref, re_lev, re_seq, ans_tag,article_cat, del_tag)"+
					"values(?,?,?,?,now(),?,0,0,'N',?,'N')";
		
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, q.getTitle());
			pstmt.setString(2, q.getContext());
			pstmt.setString(3, q.getWriter());
			pstmt.setString(4, q.getPw());
			pstmt.setInt(5, num);
			pstmt.setString(6, q.getHeader());
			
			result = pstmt.executeUpdate();
		
			
			if(result != 0 ){
				sql = "select max(article_num) from qanda;";
				pstmt = conn.prepareStatement(sql);
				
				rs = pstmt.executeQuery();
				if(rs.next()) {
					num = rs.getInt(1);
					return num;
				}
				
				return num;
			}

			
			
		}catch(Exception ex){
			System.out.println("insert error :"+ex);
		}finally{
			if(pstmt!=null){pstmt.close();}
		}
		return num;
	}
	public int updateQ(RequestQ q, String qnum) throws Exception{
		String sql="";
		int _qnum = Integer.parseInt(qnum);
		int num=0;
		
		try{
			sql="update qanda set article_title=?, article_content=?, article_writer=?, article_pass=?, article_cat=? where article_num="+qnum;
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, q.getTitle());
			pstmt.setString(2, q.getContext());
			pstmt.setString(3, q.getWriter());
			pstmt.setString(4, q.getPw());
			pstmt.setString(5, q.getHeader());
			
			num = pstmt.executeUpdate();
			if(num!=0) return _qnum;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(pstmt!=null) try{pstmt.close();} catch(Exception e){}
		}
		return _qnum;
	}
	
	// 글에 대한 답변 달기
	
	public int insertA(qandaDTO q, RequestW w){
		String max ="select max(article_num) from qanda";
		String sql="";
		
		int num = 0;
		int result = 0;
		
		int re_ref = q.getRe_ref();
		int re_lev = q.getRe_lev();
		int re_seq = q.getRe_seq();
		
		try{
			pstmt = conn.prepareStatement(max);
			rs = pstmt.executeQuery();
			
			if(rs.next()) num = rs.getInt(1)+1;
			else num = 1;
			
			sql = "update qanda set re_seq = re_seq+1 where re_ref=? and re_seq > ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, re_ref);
			pstmt.setInt(2, re_seq);
			
			result = pstmt.executeUpdate();
			
			re_seq = re_seq +1;
			re_lev = re_lev+1;
			
			sql = "insert into qanda (article_title, article_content, article_writer, date, re_ref, re_lev, re_seq, ans_tag,article_cat,del_tag)"+
			"values(?,?,?,now(),?,?,?,'Y','ANS','N')";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, w.getTitle());
			pstmt.setString(2, w.getContext());
			pstmt.setString(3, "관리자");
			pstmt.setInt(4, re_ref);
			pstmt.setInt(5, re_lev);
			pstmt.setInt(6, re_seq);
			
			result = pstmt.executeUpdate();
			return num;
		}catch(SQLException ex){
			ex.printStackTrace();
		}finally{
			if(rs!=null) try{rs.close();} catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();} catch(SQLException ex){}
		}
		return 0;
	}
	
	public void deleQ(int qnum) throws SQLException{
		String sql="update qanda set del_tag='Y' where article_num="+qnum;
		
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			
			sql = "update file sest del_tag='Y' where file_boardnum="+qnum;
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(pstmt!=null) try{pstmt.close();} catch(SQLException e){}
		}
	}
	
	public void deleF(String saved) throws SQLException{
		System.out.println(saved);
		String sql = "update file set del_tag='Y' where file_savedName='"+saved+"'";
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(pstmt!=null) try{pstmt.close();} catch(SQLException e){}
		}
	}
	
	public qandaDTO convert(ResultSet rs) throws SQLException{
		return new qandaDTO(rs.getInt("article_num"), rs.getString("article_title"), rs.getString("article_content"), rs.getString("article_writer"), rs.getString("article_pass"), rs.getString("date"), rs.getInt("re_ref"), rs.getInt("re_lev"), rs.getInt("re_seq"), rs.getString("ans_tag"), rs.getString("article_cat"));
	}
	
	public fileDTO convertf(ResultSet rs) throws SQLException{
		return new fileDTO(rs.getString("file_board"), rs.getInt("file_boardnum"), rs.getString("file_savedName"), rs.getString("file_originalName"), rs.getInt("file_size"));
	}
}
