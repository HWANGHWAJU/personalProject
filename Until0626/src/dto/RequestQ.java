package dto;

public class RequestQ {
	private String title;
	private String context;
	private String writer;
	private String pw;
	private String header;
	
	public RequestQ(){
		
	}
	
	public RequestQ(String t, String c, String w, String p, String header){
		this.title = t;
		this.context = c;
		this.writer = w;
		this.pw = p;
		this.header = header;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public void setHeader(String header){
		this.header = header;
	}
	public String getHeader(){
		return header;
	}
	public String getTitle() {
		return title;
	}
	public String getContext() {
		return context;
	}
	public String getWriter() {
		return writer;
	}
	public String getPw() {
		return pw;
	}
	
	
}
