package com.vancondos.actions;

import com.google.gson.Gson;
import com.vancondos.entity.BuildingEntity;
import com.vancondos.service.BuildingManager;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@ParentPackage("json-default")
@Results({
		@Result(name = "json", type="json", params={"root", "jsonStr"})
})
public class MainAjaxAction extends BaseAction
{
	static String RTN_STR = "json";
	private BuildingManager buildingManager;
	private List<BuildingEntity> buildings;
	private String jsonStr;

	@Action(value="loadBuildingOnMap")
	public String loadBuilding() {
		try {

			buildings = buildingManager.getAllBuildings();

			populateJsonString(SUCCESS,SUCCESS,buildings);

		}catch(Exception e){
			populateJsonString(ERROR,this.getClass().getName() + ":<br>" + e.getMessage(),buildings);
		}
		return RTN_STR;
}

private void populateJsonString(String status,String message,Object data){
	Map<String, Object> jsonMap = new HashMap<String, Object>();
	Gson gson = new Gson();

	jsonMap.put("result", status);
	jsonMap.put("message", message);
	jsonMap.put("data", data);

	jsonStr = gson.toJson(jsonMap);
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

	public String getJsonStr() {
		return jsonStr;
	}

	public void setJsonStr(String jsonStr) {
		this.jsonStr = jsonStr;
	}
}
