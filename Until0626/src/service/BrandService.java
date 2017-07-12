package service;

import dao.*;
import dto.*;

public class BrandService {

	brandDAO dao = new brandDAO();
	brandDTO dto = new brandDTO();
	
	public ListBrand getBrandList(){
		ListBrand brand = dao.getAllbrand();
		return brand;
	}
	

	
	public ListGuitar getGuitarList(){
		ListGuitar guitar = dao.getAllGuitar();
		return guitar;
	}
}
