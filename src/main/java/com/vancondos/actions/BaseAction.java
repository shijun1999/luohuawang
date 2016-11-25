package com.vancondos.actions;

import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.json.annotations.JSON;
import org.apache.struts2.util.ServletContextAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;

import static org.apache.struts2.ServletActionContext.getServletContext;

public class BaseAction extends ActionSupport
        implements Preparable, ServletRequestAware, ServletResponseAware, ServletContextAware, SessionAware {

    private Map<String, Object> session;
    private HttpServletRequest request;
    private HttpServletResponse response;
    private ServletContext context;

    static public String projectRoot = getServletContext().getRealPath("/");

    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public void setServletRequest(HttpServletRequest request) {
        this.request = request;
    }

    public void setServletResponse(HttpServletResponse response) {
        this.response = response;
    }

    public void setServletContext(ServletContext context) {
        this.context = context;
    }

    @JSON(serialize = false)
    public Map<String, Object> getSession() {
        return session;
    }

    @JSON(serialize = false)
    public HttpServletRequest getRequest() {
        return request;
    }

    @JSON(serialize = false)
    public HttpServletResponse getResponse() {
        return response;
    }

    @JSON(serialize = false)
    public ServletContext getContext() {
        return context;
    }

    //This method will be called before any of Action method is invoked;
    //So some pre-processing if required.
    @Override
    public void prepare() throws Exception {
    }
}
