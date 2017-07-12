package service;

import java.util.List;

import dto.fileDTO;

public class ListFile {
	private List<fileDTO> list;
	
	public ListFile(List<fileDTO> f){
		this.list = f;
	}
	
	public List<fileDTO> getListFile(){
		return list;
	}
}
