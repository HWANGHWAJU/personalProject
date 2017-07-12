package dto;

public class qandaDTO {
	private int article_num;
	private String article_title;
	private String article_content;
	private String article_wrtier;
	private String article_pass;
	private String date;
	private int re_ref;
	private int re_lev;
	private int re_seq;
	private String ans_tag;
	private String article_cat;
	
	public qandaDTO() {
	}
	
	public qandaDTO(int n, String t, String c, String w, String p, String d, int ref, int lev, int seq, String an, String cat){
		this.article_num = n;
		this.article_title = t;
		this.article_content = c;
		this.article_wrtier = w;
		this.article_pass = p;
		this.date = d;
		this.re_ref = ref;
		this.re_lev = lev;
		this.re_seq = seq;
		this.ans_tag = an;
		this.article_cat=cat;
	}
	
	public void setArticle_num(int article_num) {
		this.article_num = article_num;
	}
	public void setArticle_title(String article_title) {
		this.article_title = article_title;
	}
	public void setArticle_content(String article_content) {
		this.article_content = article_content;
	}
	public void setArticle_wrtier(String article_wrtier) {
		this.article_wrtier = article_wrtier;
	}
	public void setArticle_pass(String article_pass) {
		this.article_pass = article_pass;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void setRe_ref(int re_ref) {
		this.re_ref = re_ref;
	}
	public void setRe_lev(int re_lev) {
		this.re_lev = re_lev;
	}
	public void setRe_seq(int re_seq) {
		this.re_seq = re_seq;
	}
	public void setAns_tag(String ans_tag) {
		this.ans_tag = ans_tag;
	}
	public void setArticle_cat(String cat){
		this.article_cat=cat;
	}
	public int getArticle_num() {
		return article_num;
	}
	public String getArticle_title() {
		return article_title;
	}
	public String getArticle_content() {
		return article_content;
	}
	public String getArticle_wrtier() {
		return article_wrtier;
	}
	public String getArticle_pass() {
		return article_pass;
	}
	public String getDate() {
		return date;
	}
	public int getRe_ref() {
		return re_ref;
	}
	public int getRe_lev() {
		return re_lev;
	}
	public int getRe_seq() {
		return re_seq;
	}
	public String getAns_tag() {
		return ans_tag;
	}
	public String getArticle_cat(){
		return article_cat;
	}
	
	
}
