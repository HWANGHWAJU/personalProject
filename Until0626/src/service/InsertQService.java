package service;

import java.sql.SQLException;

import dao.qandaDAO;
import dto.RequestQ;
import dto.fileDTO;
import dto.qandaDTO;

public class InsertQService {
	qandaDAO dao = new qandaDAO();
	qandaDTO dto = new qandaDTO();
	
	public int insertQuestion(RequestQ q) throws SQLException{
		
		int newQnum = dao.insertQ(q);
		
		return newQnum;
	}
	
	public void insertFile(fileDTO f) throws SQLException{
		System.out.println("µé¾î¿Í¶ù");
		dao.insertF(f);
	}
}
