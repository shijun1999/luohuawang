package com.vancondos.actions;

import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import java.util.Locale;

/**
 * Created by jun shi on 2016/12/13.
 */
public class LocAction  extends BaseAction {


    @Action(value = "localee",
            results = {
                    @Result(name = "success", location = "locale.jsp")}
    )
    public String execute() {
      //  Locale locale = new Locale("zh", "CN");
      //  ActionContext.getContext().setLocale(locale);
        Locale locale = ActionContext.getContext().getLocale();
        System.out.println(locale.toString());

        return SUCCESS;
    }


}
