package first;

public class User {

	String userName;
	String passWord;

//getter for userName
	public String getUserName() {
	return userName;
}

//setter for userName
public void setUserName(String userName) {
	this.userName = userName;
}

//getter for password
public String getPassWord() {
	return passWord;
}

//setter for password
public void setPassWord(String passWord) {
	this.passWord = passWord;
}

//checking user credentials
boolean validateUser(String pswd,String usr)
{
	if(pswd==passWord&&userName==usr)
	{
		return true;
	}
	return false;
}

	public static void main(String[] args) {
		
		User u=new User();
		u.setUserName("saksham");
		u.setPassWord("qwerty");
		
		String pswd="qwerty";
		String usr="saksham";
		
		//passing user attributes to check
		boolean allowed= u.validateUser(pswd,usr);
		if(allowed)
		{
			System.out.println("welcome "+u.getUserName());
		}
		else
		{
			System.out.println("wrong credentials");
		}
	}

}
