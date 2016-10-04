package com.junshi.controller;

import java.util.List;

import org.apache.log4j.Logger;

import com.junshi.entity.LouhuaEntity;
import com.junshi.service.EmployeeManager;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;

public class EditEmployeeAction extends ActionSupport implements Preparable	
{
	private static final long serialVersionUID = 1L;
	
	//Logger configured using log4j
	private static final Logger logger = Logger.getLogger(EditEmployeeAction.class);
	//List of employees; Setter and Getter are below
	private List<LouhuaEntity> employees;
	//Employee object to be added; Setter and Getter are below
	private LouhuaEntity employee;
	
	//Employee manager injected by spring context; This is cool !!
	private EmployeeManager employeeManager;

	//This method return list of employees in database
	public String listEmployees() {
		logger.info("listEmployees method called");
		employees = employeeManager.getAllEmployees();
		return SUCCESS;
	}

	//This method will be called when a employee object is added
	public String addEmployee() {
		logger.info("addLouhua method called");
		employeeManager.addEmployee(employee);
		return SUCCESS;
	}

	//Deletes a employee by it's id passed in path parameter
	public String deleteEmployee() {
		logger.info("deleteEmployee method called");
		employeeManager.deleteEmployee(employee.getId());
		return SUCCESS;
	}
	
	//This method will be called before any of Action method is invoked;
	//So some pre-processing if required.
	@Override
	public void prepare() throws Exception {
		employee = null;
	}

	public void setEmployeeManager(EmployeeManager employeeManager) {
		this.employeeManager = employeeManager;
	}

	public List<LouhuaEntity> getEmployees() {
		return employees;
	}

	public void setEmployees(List<LouhuaEntity> employees) {
		this.employees = employees;
	}

	public LouhuaEntity getEmployee() {
		return employee;
	}

	public void setEmployee(LouhuaEntity employee) {
		this.employee = employee;
	}
}
