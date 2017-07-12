package dto;

public class memberDTO {
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_gender;
	private String m_birth;
	private String m_email;
	private String m_phone;
	private String m_postcode;
	private String m_roadAddress;
	private String m_jibunAddress;
	
	public memberDTO (String id, String pw, String n, String s, String b, String e, String p, String post, String road, String jibun){
		this.m_id = id;
		this.m_pw = pw;
		this.m_name = n;
		this.m_gender = s;
		this.m_birth = b;
		this.m_email = e;
		this.m_phone = p;
		this.m_postcode = post;
		this.m_roadAddress = road;
		this.m_jibunAddress = jibun;
	}
	
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}
	public void setM_birth(String m_birth) {
		this.m_birth = m_birth;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	public void setM_postcode(String m_postcode) {
		this.m_postcode = m_postcode;
	}
	public void setM_roadAddress(String m_roadAddress){
		this.m_roadAddress = m_roadAddress;
	}
	public void setM_jibunAddress(String m_jibunAddress){
		this.m_jibunAddress = m_jibunAddress;
	}
	public String getM_id() {
		return m_id;
	}
	public String getM_pw() {
		return m_pw;
	}
	public String getM_name() {
		return m_name;
	}
	public String getM_gender() {
		return m_gender;
	}
	public String getM_birth() {
		return m_birth;
	}
	public String getM_email() {
		return m_email;
	}
	public String getM_phone() {
		return m_phone;
	}
	public String getM_postcode() {
		return m_postcode;
	}
	public String getM_roadAddress(){
		return m_roadAddress;
	}
	public String getM_jibunAddress(){
		return m_jibunAddress;
	}
	
	
}
