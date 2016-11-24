//ladichan.com
package com.vancondos.actions;

import com.vancondos.entity.BuildingEntity;
import com.vancondos.service.BuildingManager;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import java.util.List;


public class MainAction extends BaseAction {
    private BuildingManager buildingManager;
    private List<BuildingEntity> buildings;

    public String load() {
        getSession().clear();
        //TODO lang id hard code
        getSession().put("LT_SESSION_KEY_LANGID", "en");
        return SUCCESS;
    }

    @Action(value = "main",
            results = {
                    @Result(name = "success", location = "main.jsp")}
    )
    public String main() throws Exception {
        return SUCCESS;
    }

    @Action(value = "morgagecalculate",
            results = {
                    @Result(name = "success", location = "commontools/morgagecalculate.jsp")}
    )
    public String morgagecalculate() throws Exception {
        return SUCCESS;
    }

    @Action(value = "affordablepayment",
            results = {
                    @Result(name = "success", location = "commontools/affordablepayment.jsp")}
    )
    public String affordablepayment() throws Exception {
        return SUCCESS;
    }

    @Action(value = "realestateterm",
            results = {
                    @Result(name = "success", location = "commontools/realestateterm.jsp")}
    )
    public String realestateterm() throws Exception {
        return SUCCESS;
    }

    @Action(value = "affordabilityCalculatorWidget",
            results = {
                    @Result(name = "success", location = "commontools/AffordabilityCalculatorWidget.jsp")}
    )
    public String affordabilityCalculatorWidget() throws Exception {
        return SUCCESS;
    }

    @Action(value = "vancities",
            results = {
                    @Result(name = "success", location = "vancities.jsp")}
    )
    public String vancities() throws Exception {
        return SUCCESS;
    }

    @Action(value = "test",
            results = {
                    @Result(name = "success", location = "test/template.jsp")}
    )
    public String test() throws Exception {
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
}
