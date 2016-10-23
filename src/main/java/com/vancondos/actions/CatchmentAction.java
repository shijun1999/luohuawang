package com.vancondos.actions;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

@Results({
		@Result(name="success",location="catchment.jsp")
})
public class CatchmentAction extends BaseAction
{
	public String load() {
		getSession().clear();
		//TODO lang id hard code
		getSession().put("LT_SESSION_KEY_LANGID", "en");
		return "success";
	}

	@Action(value="catchment")
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
