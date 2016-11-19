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

import java.util.HashMap;
import java.util.Map;

@ParentPackage("json-default")
@Results({
        @Result(name = "json", type = "json", params = {"root", "jsonStr"})
})
public class AddOrEditVanCityAction extends BaseAction {

    private VanCityManager vanCityManager;
    private String jsonStr;
    private String jsonFromWeb;

    String RETURN_JSON = "json";

    @Action(value = "editVanCityInit")
    public String editVanCityInit() {
        Map<String, Object> jsonMap = new HashMap<String, Object>();
        Gson gson = new Gson();

        Map<String, Object> session = getSession();
        if (session == null) {
            jsonMap.put("result", "error");
            jsonStr = gson.toJson(jsonMap);
            return RETURN_JSON;
        }

        // if update_building_id is null, the ajax is from Add building web page
        if (session.get(Const.UPDATED_VAN_CITY_ID_KEY) == null) {
            jsonMap.put("result", "success");
            jsonMap.put("message", "success");
            jsonMap.put("data", new VanCityEntity());
            jsonStr = gson.toJson(jsonMap);
            return RETURN_JSON;
        }

        Integer vanCityId = (Integer) getSession().get(Const.UPDATED_VAN_CITY_ID_KEY);

        try {
            VanCityEntity vanCityEntity = vanCityManager.getVanCityById(vanCityId);

            jsonMap.put("result", "success");
            jsonMap.put("message", "success");
            jsonMap.put("data", vanCityEntity);

            jsonStr = GsonTaoFun.gson.toJson(jsonMap);

            System.out.println("This is success");
        } catch (Exception e) {
            jsonMap.put("result", "error");
            jsonMap.put("message", this.getClass().getName() + ":<br>" + e.getMessage());
            jsonStr = gson.toJson(jsonMap);

            System.out.println("This is error");
        } catch (StackOverflowError t) {
            jsonMap.put("result", "error");
            jsonMap.put("message", this.getClass().getName() + ":<br>" + t.getMessage());
            jsonStr = gson.toJson(jsonMap);

            System.out.println("This is Stack Overflow Error");
        }
        return RETURN_JSON;
    }

    @Action(value = "addEditVanCity")
    public String addEditVanCity() {
        Map<String, Object> jsonMap = new HashMap<String, Object>();
        try {
            VanCityEntity vanCityEntity = GsonTaoFun.gson.fromJson(jsonFromWeb, VanCityEntity.class);

            vanCityManager.addOrUpdateVanCity(vanCityEntity);

            jsonMap.put("result", "success");
            jsonStr = GsonTaoFun.gson.toJson(jsonMap);

            System.out.println("This is success");
        } catch (Exception e) {
            jsonMap.put("result", "error");
            jsonMap.put("message", this.getClass().getName() + ":<br>" + e.getMessage());
            jsonStr = GsonTaoFun.gson.toJson(jsonMap);

            System.out.println("This is error");
        }
        return RETURN_JSON;
    }

    public VanCityManager getVanCityManager() {
        return vanCityManager;
    }

    public void setVanCityManager(VanCityManager vanCityManager) {
        this.vanCityManager = vanCityManager;
    }

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
}
