package com.vancondos.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.vancondos.common.Const;
import com.vancondos.entity.BuildingEntity;

import com.google.gson.Gson;
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
public class AddOrEditBuildingAction extends BaseAction
{
	BuildingManager buildingManager;

	private String jsonStr;

	private String jsonFromAdd;

	String RETURN_JSON = "json";

	@Action(value="addBuilding")
	public String addBuilding(){
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		Gson gson = new Gson();
		try{
			BuildingEntity buildingEntity = gson.fromJson(jsonFromAdd, BuildingEntity.class);

			Map<String, Object> session = getSession();

			if ( session.get(Const.INPUT_IMG_DEST_LIST_KEY)!=null){
				List<String> imageNameList = (List<String>)session.get(Const.INPUT_IMG_DEST_LIST_KEY);
				buildingManager.addimgNamesToBuilding(imageNameList, buildingEntity);
			}

			buildingManager.addBuilding(buildingEntity);

			jsonMap.put("result", "success");
			jsonStr= gson.toJson(jsonMap);

			System.out.println("This is success");
		}catch(Exception e){
			jsonMap.put("result", "error");
			jsonMap.put("message",this.getClass().getName() + ":<br>" + e.getMessage());
			jsonStr= gson.toJson(jsonMap);

			System.out.println("This is error");
		}
		return RETURN_JSON;
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
