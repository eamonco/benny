package mvc_course.models;

import java.util.HashSet;
import java.util.Set;

public class Login {

	
	String username;
	String password;
	
	public static Set<Login> list = new HashSet<Login>();
	
	public String getUsername() {
		return username;
	}
	public void setFirstName(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
