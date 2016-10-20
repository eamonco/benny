package mvc_course.models;

import java.util.HashSet;
import java.util.Set;

public class Employee {
	
	 int employeeNo;
     String forename;
     String surname;
     String addressLine1;
     String addressLine2;
     String town;
     String county;
     String postcode;
     int departmentId;
     String bankNo;
     double startingSalary;
     String nino;
	
     public static Set<Student> list = new HashSet<Student>();

	   public int getEmployeeNo() {
	        return employeeNo;
	    }

	    public void setEmployeeNo(int employeeNo) {
	        this.employeeNo = employeeNo;
	    }

	    public String getForename() {
	        return forename;
	    }

	    public void setForename(String forename) {
	        this.forename = forename;
	    }

	    public String getSurname() {
	        return surname;
	    }

	    public void setSurname(String surname) {
	        this.surname = surname;
	    }

	    public String getAddressLine1() {
	        return addressLine1;
	    }

	    public void setAddressLine1(String addressLine1) {
	        this.addressLine1 = addressLine1;
	    }

	    public String getAddressLine2() {
	        return addressLine2;
	    }

	    public void setAddressLine2(String addressLine2) {
	        this.addressLine2 = addressLine2;
	    }

	    public String getTown() {
	        return town;
	    }

	    public void setTown(String town) {
	        this.town = town;
	    }

	    public String getCounty() {
	        return county;
	    }

	    public void setCounty(String county) {
	        this.county = county;
	    }

	    public String getPostcode() {
	        return postcode;
	    }

	    public void setPostcode(String postcode) {
	        this.postcode = postcode;
	    }

	    public int getDepartmentId() {
	        return departmentId;
	    }

	    public void setDepartmentId(int departmentId) {
	        this.departmentId = departmentId;
	    }

	    public String getBankNo() {
	        return bankNo;
	    }

	    public void setBankNo(String bankNo) {
	        this.bankNo = bankNo;
	    }

	    public double getStartingSalary() {
	        return startingSalary;
	    }

	    public void setStartingSalary(double startingSalary) {
	        this.startingSalary = startingSalary;
	    }

	    public String getNino() {
	        return nino;
	    }

	    public void setNino(String nino) {
	        this.nino = nino;
		
}
}
