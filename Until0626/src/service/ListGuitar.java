package service;

import java.util.List;

import dto.guitarDTO;

public class ListGuitar {

	private List<guitarDTO> list;
	
	public ListGuitar(List<guitarDTO> l){
		this.list = l;
	}
	

	public List<guitarDTO> getListBrand(){
		return list;
	}
}
