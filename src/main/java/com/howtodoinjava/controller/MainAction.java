package com.howtodoinjava.controller;

import com.howtodoinjava.entity.EmployeeEntity;
import com.howtodoinjava.service.EmployeeManager;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;
import org.apache.log4j.Logger;

import java.util.List;

public class MainAction extends BaseAction
{
	public String load() {
		getSession().clear();
		//TODO lang id hard code
		getSession().put("LT_SESSION_KEY_LANGID", "en");
		return "success";
	}

	public String execute() throws Exception {
    System.out.println("Inside action....");
    return "success";
}
	public String logout() {
		getSession().clear();
		//TODO lang id hard code
		getSession().put("LT_SESSION_KEY_LANGID", "en");
		return "success";
	}
}
