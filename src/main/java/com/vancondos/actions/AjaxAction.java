package com.vancondos.actions;

import com.google.gson.Gson;
import com.vancondos.entity.VanCityEntity;
import com.vancondos.service.VanCityManager;
import com.vancondos.util.Const;
import com.vancondos.util.json.GsonTaoFun;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.vancondos.util.json.GsonTaoFun;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@ParentPackage("json-default")
@Results({
        @Result(name = "json", type = "json", params = {"root", "jsonStr"})
})
public class AjaxAction extends BaseAction {

    protected String jsonStr;
    protected String jsonFromWeb;
    protected String RETURN_JSON = "json";
    protected Gson gson = GsonTaoFun.gson;

    public String getJsonStr() {
        return jsonStr;
    }

    public void setJsonStr(String jsonStr) {
        this.jsonStr = jsonStr;
    }

    public String getJsonFromWeb() {
        return jsonFromWeb;
    }

    public void setJsonFromWeb(String jsonFromWeb) {
        this.jsonFromWeb = jsonFromWeb;
    }

    protected String handleException(Exception e){
        return handleJsonError(e);
    }

    protected String handleException(RuntimeException e){
        return handleJsonError(e);
    }

    protected String handleException(Error e){
        return handleJsonError(e);
    }

    protected String handleJsonError(Throwable e) {
        HashMap<String, Object> jsonMap = new HashMap<String, Object>();
        jsonMap.put("result", "error");
        jsonMap.put("message", this.getClass().getName() + ":<br>" + e.getMessage());
        jsonStr = gson.toJson(jsonMap);

        return RETURN_JSON;
    }

    protected String handleJsonSuccess() {
        return handleJsonSuccess(new Object());
    }

    protected String handleJsonSuccess(Object obj) {
        HashMap<String, Object> jsonMap = new HashMap<String, Object>();
        jsonMap.put("result", "success");
        jsonMap.put("message", "success");
        jsonMap.put("data", obj);
        jsonStr = gson.toJson(jsonMap);

        return RETURN_JSON;
    }
}