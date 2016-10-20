package mvc_course.controllers;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

public class FinanceController {
	@RequestMapping(value="financeReport.mvc")
	public String cityList(Model m){
		try{
			Connection c = dataSource.getConnection();
			Statement s = c.createStatement();
			String sql = "Select Employees.employeeNo, ifnull(concat(Employees.forename, Employees.surname), 'No Employee') as 'Employee', ifnull((Employees.startingSalary + (Sales.totalSales / 100 * Sales.commissionRate)), Employees.StartingSalary) as 'GrossPay' from Employees LEFT JOIN Sales On Employees.employeeNo = Sales.employeeNo";
			ResultSet rs = s.executeQuery(sql);
			List<String[]> rows = new ArrayList<String[]>();
			
			while(rs.next()){
				String[] row = {
						rs.getString(1),
						rs.getString(2),
						rs.getString(3)  };
				rows.add(row);
				}
			m.addAttribute("rows", rows);
			} catch (Exception e){
				System.out.println(e.getMessage());
		}
		return "financeReport";
	}
}

