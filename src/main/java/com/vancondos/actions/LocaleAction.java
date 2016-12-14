//ladichan.com
package com.vancondos.actions;

import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import java.util.Locale;

public class LocaleAction extends AjaxAction {

    @Action(value = "locale")
    public String locale() {
      //  Locale locale = new Locale(getLanguage(), getCountry());
      //  ActionContext.getContext().setLocale(locale);

        return handleJsonSuccess(null);
    }
}
