package mvc_course.models;

/**
 * Created by benl on 13/10/2016.
 */
public class SalesEmployee extends Employee {

    public SalesEmployee() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SalesEmployee(String forename, String surname, String addressLine1, String addressLine2, String town,
			String county, String postcode, int departmentId, String bankNo, double startingSalary, String nino) {
		super(forename, surname, addressLine1, addressLine2, town, county, postcode, departmentId, bankNo, startingSalary,
				nino);
		// TODO Auto-generated constructor stub
	}

	private double commissionRate;
    private double totalSales;

    //Default Constructor for no values
    
    

    public SalesEmployee(String forename, String surname, String addressLine1, String addressLine2, String town, String county, String postcode, int departmentId, String bankNo, double startingSalary, String nino, double commissionRate, double totalSales) {
        super(forename, surname, addressLine1, addressLine2, town, county, postcode, departmentId, bankNo, startingSalary, nino);

        this.commissionRate = commissionRate;
        this.totalSales = totalSales;

    }

    public double getCommissionRate() {
        return commissionRate;
    }

    public void setCommissionRate(double commissionRate) {
        this.commissionRate = commissionRate;
    }

    public double getTotalSales() {
        return totalSales;
    }

    public void setTotalSales(double totalSales) {
        this.totalSales = totalSales;
    }
}
