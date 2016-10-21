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
public class ManagerController {
	
	
	@Autowired
	private DataSource dataSource;
	
	@RequestMapping(value="salesMan.mvc")
	public String salesManReport(Model m){
		
		try{
			Connection c = dataSource.getConnection();
			Statement s = c.createStatement();
			String sql = "select concat(Employees.forename,SPACE(1),Employees.surname) as 'Name' , Sales.totalSales as 'Total Sales' from Sales join Employees on Sales.employeeNo = Employees.employeeNo order by Sales.totalSales desc limit 1";
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
		

		
		return "salesManager";
	
	}
	
	
	
	
	
}
