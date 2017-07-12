package service;

import java.util.*;
import dao.*;
import dto.*;

public class QlistService {
	
	qandaDAO dao = new qandaDAO();

	public QlistPaging getQlist(int pagenum){
	
		System.out.println("getQlist ¿¡µé¾î¿È pagenum :"+pagenum);
		List<qandaDTO> list = dao.getQandAList(pagenum);
		
		int total = dao.getListCount();
		System.out.println("QlistService total :"+total);
		QlistPaging qp = new QlistPaging(total,(pagenum-1), list);
		
		return qp;		
	}

}
