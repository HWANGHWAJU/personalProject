package service;

import dao.*;
import dto.*;
import java.util.*;

public class ListBrand {
	private List<brandDTO> list;
	
	public ListBrand(List<brandDTO> l){
		this.list = l;
	}
	

	public List<brandDTO> getListBrand(){
		return list;
	}
}
