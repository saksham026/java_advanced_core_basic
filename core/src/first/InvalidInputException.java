package first;

public class InvalidInputException extends Exception {

	private String msg;
	InvalidInputException(String msg){
		
		this.msg=msg;
	}
	@Override
	public String toString() {
		return "InvalidInputException [msg=" + msg + "]";
	}
	
	
}
