package first;

public class AlphabetExceptions extends Exception{

	private String msg;

	public AlphabetExceptions(String msg) {
		super();
		this.msg = msg;
	}

	@Override
	public String toString() {
		return "AlphabetExceptions [msg=" + msg + "]";
	}
	
	
}
