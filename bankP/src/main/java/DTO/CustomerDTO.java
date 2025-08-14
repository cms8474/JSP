package DTO;

public class CustomerDTO {
	
	private String	cId;
	private String	cName;
	private int		cType;
	private String	cHp;
	private String	cAddr;
	
	public String getcId() {
		return cId;
	}
	public void setcId(String cId) {
		this.cId = cId;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public int getcType() {
		return cType;
	}
	public void setcType(int cType) {
		this.cType = cType;
	}
	public String getcHp() {
		return cHp;
	}
	public void setcHp(String cHp) {
		this.cHp = cHp;
	}
	public String getcAddr() {
		return cAddr;
	}
	public void setcAddr(String cAddr) {
		this.cAddr = cAddr;
	}
	
	@Override
	public String toString() {
		return "CustomerDTO [cId=" + cId + ", cName=" + cName + ", cType=" + cType + ", cHp=" + cHp + ", cAddr=" + cAddr
				+ "]";
	}
	
	
}
