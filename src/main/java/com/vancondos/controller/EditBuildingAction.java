package com.vancondos.controller;

import java.util.List;

import org.apache.log4j.Logger;

import com.vancondos.entity.BuildingEntity;
import com.vancondos.service.BuildingManager;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;

public class EditBuildingAction extends ActionSupport implements Preparable	
{
	private static final long serialVersionUID = 1L;
	
	//Logger configured using log4j
	private static final Logger logger = Logger.getLogger(EditBuildingAction.class);
	//List of buildings; Setter and Getter are below
	private List<BuildingEntity> buildings;
	//Building object to be added; Setter and Getter are below
	private BuildingEntity building;
	
	//Building manager injected by spring context; This is cool !!
	private BuildingManager buildingManager;

	//This method return list of buildings in database
	public String listBuildings() {
		logger.info("listBuildings method called");
		buildings = buildingManager.getAllBuildings();
		return SUCCESS;
	}

	//This method will be called when a building object is added
	public String addBuilding() {
		logger.info("addBuilding method called");
		buildingManager.addBuilding(building);
		return SUCCESS;
	}

	//Deletes a building by it's id passed in path parameter
	public String deleteBuilding() {
		logger.info("deleteBuilding method called");
		buildingManager.deleteBuilding(building.getId());
		return SUCCESS;
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
