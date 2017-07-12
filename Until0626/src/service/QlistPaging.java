package service;

import java.util.List;

import dao.*;
import dto.*;


public class QlistPaging {
	public qandaDAO dao;
	private int totalQ;
	private int size = 10;
	private int totalpage;
	private int startpage;
	private int endpage;
	private int currentpage;
	private List<qandaDTO> list;
	
	
	public QlistPaging(int total, int curr, List<qandaDTO> q){
		this.totalQ = total;
		this.currentpage = curr;
		this.list = q;
		
		if(totalQ==0){ // 전체 게시글 개수가 0이면 
			totalQ =0;
			startpage=0;
			endpage=0;
		}else{ // 0 초과면 
			totalpage = totalQ/size;
			
			if(totalQ % size > 0) totalpage++;
			
			int molVal = currentpage % 5;
			startpage = currentpage / 5 * 5 + 1;
			if(molVal != 0 ) startpage -= 5;
			
			endpage = startpage + 4;
			if(endpage > totalpage) endpage = totalpage;
			
			System.out.println("molVal :"+molVal+"current page :"+currentpage+"total 개수 :"+totalQ +" totalPage :"+totalpage+"   start page: "+startpage+"  endpage :"+endpage);
	
		}
			}
	
	public int getTotal(){	return totalQ;	}
	public boolean hasQ(){ System.out.println("start page :"+startpage);return totalQ > 0; }
	public boolean hasNoQ() { return totalQ == 0;}
	public int getstartpage() {return startpage;}
	public int getendpage() {return endpage;}
	public int getcurrentpage() {return currentpage;}
	public int gettotalpage(){return totalpage;}
	
	
	
	public List<qandaDTO> getList(){
		return list;
	}
}
