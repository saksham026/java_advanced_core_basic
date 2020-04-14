package first;

class Loan
{
	static int series=0;
	protected int loanid;	
	protected int loanAmount;
	protected int loanTenure;
	
	public Loan(int loanAmount, int loanTenure) {
		this.loanid = series++;
		this.loanAmount = loanAmount;
		this.loanTenure = loanTenure;
	}
	
}

class PropertyLoan extends Loan implements LoanServices
{

	protected int rate;
	protected int asset;
	
	public PropertyLoan(int loanAmount, int loanTenure,int asset) {
		super(loanAmount, loanTenure);
		this.rate=8;
		this.asset=asset;
	}
	
	public float emiCalculation()
	{
		return ((rate*(loanAmount-asset)*loanTenure)/100);
	}
}

class HomeLoan extends Loan implements LoanServices
{
	protected int rate;
	
	public HomeLoan(int loanAmount, int loanTenure) {
		super(loanAmount, loanTenure);
		this.rate=10;	
	}
	
	public float emiCalculation()
	{
		return ((rate*loanAmount*loanTenure)/100);
	}
}

public class entry1 {

	public static void main(String[] args) {

		LoanServices l=new PropertyLoan(10000, 20, 1000);
		System.out.println(l.emiCalculation());
		
		l=new HomeLoan(2000,10);
		System.out.println(l.emiCalculation());
	}

}
