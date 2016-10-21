package mvc_course.controllers;

import java.util.List;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc_course.models.Employee;
import mvc_course.models.Login;
import mvc_course.models.SalesEmployee;
import mvc_course.models.Student;


@Controller
public class HrController {
	
	@Autowired
	private DataSource dataSource;
	
	@RequestMapping(value="employee.mvc")
	public String addEmployee(){
		
		return "addEmployee";
	
	
	}
	
	
	
	
	
	
	@RequestMapping(value="employeeForm.mvc")
	public String addEmployee(@ModelAttribute("employee2") Employee employee ){
		try{
			Connection c = dataSource.getConnection();
			Statement s = c.createStatement();
			String sql = "insert into Employees" +
                    "(" +
                    "forename," +
                    "surname," +
                    "addressLine1, " +
                    "addressLine2," +
                    "town, " +
                    "county, " +
                    "postcode, " +
                    "nino, " +
                    "bankNo, " +
                    "startingSalary, " +
                    "departmentId) " +
                    "values ("
                    + "\"" + employee.getForename() + "\"" + ","
                    + "\"" + employee.getSurname() + "\"" + ","
                    + "\"" + employee.getAddressLine1() + "\"" + ","
                    + "\"" + employee.getAddressLine2() + "\"" + ","
                    + "\"" + employee.getTown() + "\"" + ","
                    + "\"" + employee.getCounty() + "\"" + ","
                    + "\"" + employee.getPostcode() + "\"" + ","
                    + "\"" + employee.getNino() + "\"" + ","
                    + "\"" + employee.getBankNo() + "\"" + ","
                    + employee.getStartingSalary() + ","
                    + employee.getDepartmentId() + ")";
			
			
			
			System.out.println(employee.getAddressLine1());
			
			
			s.execute(sql);
			
			} catch (Exception e){
				System.out.println(e.getMessage());
		}
		return "hr";
		
		
	
	}
	
	@RequestMapping(value="salesEmployee.mvc")
	public String addSalesEmployee(Model m){
		return "addSalesEmployee";
	}
	
	
	@RequestMapping(value="salesEmployeeForm.mvc")
	public String addEmployee(@ModelAttribute("salesEmployee") SalesEmployee salesEmployee ){
		try{
			int employeeNo = -1;
			Connection c = dataSource.getConnection();
			Statement s = c.createStatement();
			String sql = "insert into Employees" +
                    "(" +
                    "forename," +
                    "surname," +
                    "addressLine1, " +
                    "addressLine2," +
                    "town, " +
                    "county, " +
                    "postcode, " +
                    "nino, " +
                    "bankNo, " +
                    "startingSalary, " +
                    "departmentId) " +
                    "values ("
                    + "\"" + salesEmployee.getForename() + "\"" + ","
                    + "\"" + salesEmployee.getSurname() + "\"" + ","
                    + "\"" + salesEmployee.getAddressLine1() + "\"" + ","
                    + "\"" + salesEmployee.getAddressLine2() + "\"" + ","
                    + "\"" + salesEmployee.getTown() + "\"" + ","
                    + "\"" + salesEmployee.getCounty() + "\"" + ","
                    + "\"" + salesEmployee.getPostcode() + "\"" + ","
                    + "\"" + salesEmployee.getNino() + "\"" + ","
                    + "\"" + salesEmployee.getBankNo() + "\"" + ","
                    + salesEmployee.getStartingSalary() + ","
                    + salesEmployee.getDepartmentId() + ")";
			
			
			s.execute(sql);
	
			sql = "select employeeNo from Employees where nino =\"" +  salesEmployee.getNino() +"\"";
         

            ResultSet results1 = s.executeQuery(sql);

            while (results1.next()) {
                employeeNo = results1.getInt("employeeNo");

            }

            System.out.println(salesEmployee.getCommissionRate() + "hello" + salesEmployee.getTotalSales());
            
            String sql2 = "insert into Sales (employeeNo, commissionRate, totalSales) values ("+employeeNo+","+salesEmployee.getCommissionRate()+","+salesEmployee.getTotalSales()+")";

			
			s.execute(sql2);
			
			} catch (Exception e){
				System.out.println(e.getMessage());
		}
		return "hr";
		
		
	
	}
	
	
	@RequestMapping(value="hrReport.mvc")
	public String showHr(Model m){
		
		try{
			Connection c = dataSource.getConnection();
			Statement s = c.createStatement();
		
		
		String sql = "select Departments.name, count(*) as 'EmployeesPerDepartment' from (Employees left join Departments on Employees.departmentId = Departments.id) " +
                "group by Employees.departmentId";

        ResultSet rs = s.executeQuery(sql);
        
        List<String[]> rows = new ArrayList<String[]>();
		
		while(rs.next()){
			String[] row = {
					rs.getString(1),
					rs.getString(2)};
			rows.add(row);
			}
		m.addAttribute("rows", rows);
        
		} catch (Exception e){
			System.out.println(e.getMessage());
	}
        
        
		return "showHr";
	}
	
	
}
