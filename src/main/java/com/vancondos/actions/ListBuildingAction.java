package com.vancondos.actions;

import java.util.List;
import java.util.Map;

import com.vancondos.util.Const;

import com.vancondos.entity.BuildingEntity;
import com.vancondos.service.BuildingManager;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Actions;
import org.apache.struts2.convention.annotation.Result;

public class ListBuildingAction extends BaseAction {

    private static final String ADD_UPDATE = "addOrUpdate";
    private List<BuildingEntity> buildings;
    private BuildingEntity building;

    //Building manager injected by spring context;
    private BuildingManager buildingManager;

    @Action(value = "listBuilding",
            results = {
                    @Result(name = "success", location = "listBuilding.jsp")}
    )
    public String listBuildings() {
        buildings = buildingManager.getAllBuildings();
        return SUCCESS;
    }

    @Action(value = "deleteBuilding",
            results = {@Result(name = "success", location = "list", type = "redirect")}
    )
    public String deleteBuilding() {
        buildingManager.deleteBuilding(building.getId());
        return SUCCESS;
    }


    @Actions({
            @Action(value = "addBuilding", results = {@Result(name = ADD_UPDATE, location = "addOrEditBuilding.jsp")}),
            @Action(value = "updateBuilding", results = {@Result(name = ADD_UPDATE, location = "addOrEditBuilding.jsp")})
    })
    public String addOrUpdateBuilding() {
        Map<String, Object> session = getSession();
        if (building != null) {
            session.put(Const.UPDATED_BUILDING_ID_KEY, building.getId());
        }else if (session.get(Const.UPDATED_BUILDING_ID_KEY)!=null){
            session.put(Const.UPDATED_BUILDING_ID_KEY, null);
        }
        return ADD_UPDATE;
    }

    @Override
    public void prepare() throws Exception {
        building = null;
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

    public BuildingEntity getBuilding() {
        return building;
    }

    public void setBuilding(BuildingEntity building) {
        this.building = building;
    }
}
