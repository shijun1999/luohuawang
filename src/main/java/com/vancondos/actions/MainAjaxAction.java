package com.vancondos.actions;

import com.vancondos.entity.BuildingEntity;
import com.vancondos.service.BuildingManager;
import org.apache.struts2.convention.annotation.Action;

import java.util.List;

public class MainAjaxAction extends AjaxAction {
    private BuildingManager buildingManager;
    private List<BuildingEntity> buildings;

    @Action(value = "loadBuildingOnMap")
    public String loadBuilding() {
        try {
            buildings = buildingManager.getAllBuildings();

            return handleJsonSuccess(buildings);
        } catch (Exception e) {
            return handleJsonError(e);
        }
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
