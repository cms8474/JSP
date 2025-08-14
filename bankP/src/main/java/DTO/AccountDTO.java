package DTO;

public class AccountDTO {
	
	private String	accNo;
	private String	accType;
	private String	accName;
	private String	accCid;
	private int		accBalance;
	private String	accDate;
	
	
	public String getAccNo() {
		return accNo;
	}
	public void setAccNo(String accNo) {
		this.accNo = accNo;
	}
	public String getAccType() {
		return accType;
	}
	public void setAccType(String accType) {
		this.accType = accType;
	}
	public String getAccName() {
		return accName;
	}
	public void setAccName(String accName) {
		this.accName = accName;
	}
	public String getAccCid() {
		return accCid;
	}
	public void setAccCid(String accCid) {
		this.accCid = accCid;
	}
	public int getAccBalance() {
		return accBalance;
	}
	public void setAccBalance(int accBalance) {
		this.accBalance = accBalance;
	}
	public String getAccDate() {
		return accDate;
	}
	public void setAccDate(String accDate) {
		this.accDate = accDate;
	}
	
	@Override
	public String toString() {
		return "accountDTO [accNo=" + accNo + ", accType=" + accType + ", accName=" + accName + ", accCid=" + accCid
				+ ", accBalance=" + accBalance + ", accDate=" + accDate + "]";
	}
	
}
