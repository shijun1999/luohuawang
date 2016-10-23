package com.vancondos.actions;

import java.util.List;

import org.apache.log4j.Logger;

import com.vancondos.entity.BuildingEntity;
import com.vancondos.service.BuildingManager;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

public class EditBuildingAction extends ActionSupport implements Preparable	
{
	private static final long serialVersionUID = 1L;

	private static final String ADD_UPDATE= "addOrUpdate";
	//Logger configured using log4j
	private static final Logger logger = Logger.getLogger(EditBuildingAction.class);
	//List of buildings; Setter and Getter are below
	private List<BuildingEntity> buildings;
	//Building object to be added; Setter and Getter are below
	private BuildingEntity building;
	
	//Building manager injected by spring context; This is cool !!
	private BuildingManager buildingManager;

	@Action(value="list",
			results={
					@Result(name="success", location="editBuildingList.jsp")}
	)
	public String listBuildings() {
		logger.info("listBuildings method called");
		buildings = buildingManager.getAllBuildings();
		return SUCCESS;
	}

	@Action(value="add",
			results={@Result(name="success", location="list", type="redirect")}
	)
	public String addBuilding() {
		logger.info("addBuilding method called");
		buildingManager.addBuilding(building);
		return SUCCESS;
	}

	@Action(value="delete",
			results={@Result(name="success", location="list", type="redirect")}
	)
	public String deleteBuilding() {
		logger.info("deleteBuilding method called");
		buildingManager.deleteBuilding(building.getId());
		return SUCCESS;
	}

	@Action(value="addOrUpdate",
			results={@Result(name=ADD_UPDATE, location="addOrEditBuilding_nowizard.jsp")}
	)
	public String addOrUpdate() {
//		logger.info("listBuildings method called");
//		buildings = buildingManager.getAllBuildings();
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
