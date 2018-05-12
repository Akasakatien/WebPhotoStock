package photostock.helper;

import java.util.Date;

public class BuyerHelper {
	private String username;
	private String birthday;
	public BuyerHelper() {
		
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public BuyerHelper(String username, String birthday) {
		
		this.username = username;
		this.birthday = birthday;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	

}
