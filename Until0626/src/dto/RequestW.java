package dto;

public class RequestW {
	private String title;
	private String context;


	
	public RequestW(String t, String c){
		this.title = t;
		this.context = c;

	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	public void setContext(String context) {
		this.context = context;
	}

	public String getTitle() {
		return title;
	}
	public String getContext() {
		return context;
	}

	
	
}
