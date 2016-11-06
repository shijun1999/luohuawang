package com.vancondos.actions;

import java.util.List;
import java.util.Map;

import com.vancondos.util.Const;
import org.apache.log4j.Logger;

import com.vancondos.entity.BuildingEntity;
import com.vancondos.service.BuildingManager;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Actions;
import org.apache.struts2.convention.annotation.Result;

public class ListBuildingAction extends BaseAction {
    private static final long serialVersionUID = 1L;

    private static final String ADD_UPDATE = "addOrUpdate";
    //Logger configured using log4j
    private static final Logger logger = Logger.getLogger(ListBuildingAction.class);
    //List of buildings; Setter and Getter are below
    private List<BuildingEntity> buildings;
    //Building object to be added; Setter and Getter are below
    private BuildingEntity building;

    //Building manager injected by spring context; This is cool !!
    private BuildingManager buildingManager;

    @Action(value = "list",
            results = {
                    @Result(name = "success", location = "listBuilding.jsp")}
    )
    public String listBuildings() {
        logger.info("listBuildings method called");
        buildings = buildingManager.getAllBuildings();
        return SUCCESS;
    }
//
//	@Action(value="add",
//			results={@Result(name="success", location="list", type="redirect")}
//	)
//	public String addOrUpdateBuilding() {
//		logger.info("addOrUpdateBuilding method called");
//		buildingManager.addOrUpdateBuilding(building);
//		return SUCCESS;
//	}

    @Action(value = "delete",
            results = {@Result(name = "success", location = "list", type = "redirect")}
    )

    public String deleteBuilding() {
        logger.info("deleteImageEntity method called");
        buildingManager.deleteBuilding(building.getId());
        return SUCCESS;
    }

    @Actions({
            @Action(value = "add", results = {@Result(name = ADD_UPDATE, location = "addOrEditBuilding.jsp")}),
            @Action(value = "update", results = {@Result(name = ADD_UPDATE, location = "addOrEditBuilding.jsp")})
    })
    public String addOrUpdate() {
        Map<String, Object> session = getSession();
        if (building != null) {
            session.put(Const.UPDATED_BUILDING_ID_KEY, building.getId());
        }else if (session.get(Const.UPDATED_BUILDING_ID_KEY)!=null){
            session.put(Const.UPDATED_BUILDING_ID_KEY, null);
        }
        return ADD_UPDATE;
    }

    //This method will be called before any of Action method is invoked;
    //So some pre-processing if required.
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
