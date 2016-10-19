package com.vancondos.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.vancondos.entity.BuildingEntity;

import com.google.gson.Gson;
import com.vancondos.service.BuildingManager;
import java.util.HashMap;
import java.util.Map;


public class AddOrEditBuildingAction extends ActionSupport
{
	BuildingManager buildingManager;

	private String jsonStr;

	private String jsonFromAdd;

	String rtnStr = "json";

	public String load() {
//		logger.info("listBuildings method called");
//		buildings = buildingManager.getAllBuildings();
		return SUCCESS;
	}
	public String addBuilding(){
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		Gson gson = new Gson();
		try{
			BuildingEntity buildingEntity = gson.fromJson(jsonFromAdd, BuildingEntity.class);
			buildingManager.addBuilding(buildingEntity);

			jsonMap.put("result", "success");
			jsonStr= gson.toJson(jsonMap);

			System.out.println("This is success");
			return SUCCESS;
		}catch(Exception e){
			jsonMap.put("result", "error");
			jsonMap.put("message",this.getClass().getName() + ":<br>" + e.getMessage());
			jsonStr= gson.toJson(jsonMap);

			System.out.println("This is error");
			return ERROR;
		}
	}

	public String getJsonFromAdd() {
		return jsonFromAdd;
	}

	public void setJsonFromAdd(String jsonFromAdd) {
		this.jsonFromAdd = jsonFromAdd;
	}

	public String getJsonStr() {
		return jsonStr;
	}

	public void setJsonStr(String jsonStr) {
		this.jsonStr = jsonStr;
	}

	public void setBuildingManager(BuildingManager buildingManager) {
		this.buildingManager = buildingManager;
	}

}
