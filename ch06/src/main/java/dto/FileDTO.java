package dto;

public class FileDTO {
	private int no;
	private String TITLE;
	private String NAME;
	private String oNAME;
	private String sNAME;
	private String RDATE;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTITLE() {
		return TITLE;
	}
	public void setTITLE(String tITLE) {
		TITLE = tITLE;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public String getoNAME() {
		return oNAME;
	}
	public void setoNAME(String oNAME) {
		this.oNAME = oNAME;
	}
	public String getsNAME() {
		return sNAME;
	}
	public void setsNAME(String sNAME) {
		this.sNAME = sNAME;
	}
	public String getRDATE() {
		return RDATE;
	}
	public void setRDATE(String rDATE) {
		RDATE = rDATE;
	}
	
	@Override
	public String toString() {
		return "FileDTO [no=" + no + ", TITLE=" + TITLE + ", NAME=" + NAME + ", oNAME=" + oNAME + ", sNAME=" + sNAME
				+ ", RDATE=" + RDATE + "]";
	}

}
