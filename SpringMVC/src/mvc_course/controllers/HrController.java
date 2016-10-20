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
import mvc_course.models.Student;


@Controller
public class HrController {
	
	@Autowired
	private DataSource dataSource;
	
	@RequestMapping(value="employee.mvc")
	public String addEmployee(@ModelAttribute("employee") Employee employee ){
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
			
			
			
			
			
			
			s.execute(sql);
			
			} catch (Exception e){
				System.out.println(e.getMessage());
		}
		return "redirect:hr.mvc";
		
		
	
	}
	
	@RequestMapping(value="salesEmployee.mvc")
	public String addSalesEmployee(Model m){
		return "addSalesEmployee";
	}
	
	@RequestMapping(value="hrReport.mvc")
	public String showHr(Model m){
		return "showHr";
	}
	
	
	
	
	

}
