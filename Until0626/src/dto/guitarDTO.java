package dto;

public class guitarDTO {
	private Integer g_item_num;
	private String g_brand;
	private String g_cord;
	private int g_price;
	private int g_point;
	private String g_ex;
	private int g_redcnt;
	private int g_ordercnt;
	private String g_type;
	private String g_item_name;
	private String update_date;
	
	
	public guitarDTO(Integer g_item,String b, String c, int pr, int po, String ex, int red, int or, String ty, String it_na, String udate){
		this.g_item_num = g_item;
		this.g_brand = b;
		this.g_cord = c;
		this.g_price = pr;
		this.g_point = po;
		this.g_ex = ex;
		this.g_redcnt = red;
		this.g_ordercnt = or;
		this.g_type = ty;
		this.g_item_name=it_na;
		this.update_date = udate;
	}
	
	public int getG_item_num() {
		return g_item_num;
	}
	public String getG_brand() {
		return g_brand;
	}
	public String getG_cord() {
		return g_cord;
	}
	public int getG_price() {
		return g_price;
	}
	public int getG_point() {
		return g_point;
	}
	public String getG_ex() {
		return g_ex;
	}
	public int getG_redcnt() {
		return g_redcnt;
	}
	public int getG_ordercnt() {
		return g_ordercnt;
	}
	public String getG_type() {
		return g_type;
	}
	public String getG_item_name(){
		return g_item_name;
	}
	public String getUpdate_date(){
		return update_date;
	}
	
	
	
}
