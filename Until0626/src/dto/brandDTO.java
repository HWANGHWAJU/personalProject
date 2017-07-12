package dto;

public class brandDTO {
	private String brand_name;
	private String g_type;
	
	public brandDTO(){
		
	}
	public brandDTO(String b, String g){
		this.brand_name = b;
		this.g_type = g;
	}
	
	public String getBrand_name() {
		return brand_name;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	public String getG_type() {
		return g_type;
	}
	public void setG_type(String g_type) {
		this.g_type = g_type;
	}
	
	
}
