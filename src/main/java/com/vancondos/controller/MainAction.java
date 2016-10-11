package com.vancondos.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.vancondos.entity.BuildingEntity;
import com.vancondos.service.BuildingManager;

import java.util.List;



public class MainAction extends BaseAction
{
	//Building manager injected by spring context; This is cool !!
	private BuildingManager buildingManager;
	private List<BuildingEntity> buildings;
	private String jsonInString;

	public String load() {
		getSession().clear();
		//TODO lang id hard code
		getSession().put("LT_SESSION_KEY_LANGID", "en");
		return "success";
	}

	public String display() throws Exception {
		ObjectMapper mapper = new ObjectMapper();
		buildings = buildingManager.getAllBuildings();
		jsonInString = mapper.writeValueAsString(buildings);
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
