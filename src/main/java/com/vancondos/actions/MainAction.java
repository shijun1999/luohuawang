package com.vancondos.actions;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.vancondos.entity.BuildingEntity;
import com.vancondos.service.BuildingManager;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import java.util.List;


@Results({
        @Result(name = "success", location = "main.jsp")
})
public class MainAction extends BaseAction {
    private BuildingManager buildingManager;
    private List<BuildingEntity> buildings;
    private String jsonInString;

    public String load() {
        getSession().clear();
        //TODO lang id hard code
        getSession().put("LT_SESSION_KEY_LANGID", "en");
        return SUCCESS;
    }

    @Action(value = "main")
    public String display() throws Exception {
        return SUCCESS;
    }

    public BuildingManager getBuildingManager() {
        return buildingManager;
    }

    public void setBuildingManager(BuildingManager buildingManager) {
        this.buildingManager = buildingManager;
    }

    public List<BuildingEntity> getBuildings() {
        return buildings;
    }

    public void setBuildings(List<BuildingEntity> buildings) {
        this.buildings = buildings;
    }

    public String getJsonInString() {
        return jsonInString;
    }

    public void setJsonInString(String jsonInString) {
        this.jsonInString = jsonInString;
    }
}
