package dto;

public class userDTO {
	private String m_id;
	private String m_name;
	private String m_pw;
	
	public userDTO(){
		
	}
	
	public userDTO(String id, String name, String m_pw){
		this.m_id = id;
		this.m_name = name;
		this.m_pw = m_pw;
	}
	
	public String getM_id() {
		return m_id;
	}
	public String getM_name() {
		return m_name;
	}
	public String getM_pw(){
		return m_pw;
	}
	public void setM_pw(String m_pw){
		this.m_pw = m_pw;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	
	
}
