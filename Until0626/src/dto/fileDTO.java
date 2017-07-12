package dto;

public class fileDTO {
	private String board;
	private int num;
	private int b_num;
	private String savename;
	private String originalname;
	private int size;
	
	public fileDTO(){
		
	}
	public fileDTO(String b, int bn, String save, String original, int size){
		this.board = b;
		this.b_num = bn;
		this.savename = save;
		this.originalname = original;
		this.size = size;
	}
	
	public String getSavename(){
		return savename;
	}
	public String getOriginalname(){
		return originalname;
	}
	public int getSize(){
		return size;
	}
	public String getBoard() {
		return board;
	}
	public int getNum() {
		return num;
	}
	public int getB_num() {
		return b_num;
	}
	public void setBoard(String board) {
		this.board = board;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public void setB_num(int b_num) {
		this.b_num = b_num;
	}
	public void setSavename(String sn){
		this.savename = sn;
	}
	public void setOriginalname(String on){
		this.originalname = on;
	}
	public void setSize(int size){
		this.size=size;
	}
	
	
}
