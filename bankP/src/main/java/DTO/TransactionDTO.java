package DTO;

public class TransactionDTO {
	
	private int		tNo;
	private String	tAcc;
	private int 	tType;
	private int		tAmount;
	private String	tDate;
	
	
	public int gettNo() {
		return tNo;
	}
	public void settNo(int tNo) {
		this.tNo = tNo;
	}
	public String gettAcc() {
		return tAcc;
	}
	public void settAcc(String tAcc) {
		this.tAcc = tAcc;
	}
	public int gettType() {
		return tType;
	}
	public void settType(int tType) {
		this.tType = tType;
	}
	public int gettAmount() {
		return tAmount;
	}
	public void settAmount(int tAmount) {
		this.tAmount = tAmount;
	}
	public String gettDate() {
		return tDate;
	}
	public void settDate(String tDate) {
		this.tDate = tDate;
	}
	
	
	@Override
	public String toString() {
		return "TransactionDTO [tNo=" + tNo + ", tAcc=" + tAcc + ", tType=" + tType + ", tAmount=" + tAmount
				+ ", tDate=" + tDate + "]";
	}
	
	
	
}
