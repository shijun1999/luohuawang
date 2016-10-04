package com.junshi.dao;

import java.util.List;
import com.junshi.entity.Louhua;

public interface EmployeeDAO 
{
	//This method will be called when a employee object is added
    public void addEmployee(Louhua employee);
    //This method return list of employees in database
    public List<Louhua> getAllEmployees();
    //Deletes a employee by it's id
    public void deleteEmployee(Integer employeeId);
}