package com.vancondos.actions;

import com.google.gson.reflect.TypeToken;
import com.vancondos.service.ImageManager;
import com.vancondos.util.Const;
import com.vancondos.entity.BuildingEntity;

import com.google.gson.Gson;
import com.vancondos.entity.FloorPlanEntity;
import com.vancondos.service.BuildingManager;
import com.vancondos.util.json.GsonTaoFun;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import java.lang.reflect.Type;
import java.util.*;

import static com.vancondos.util.Const.INPUT_IMG_DEST;

@ParentPackage("json-default")
@Results({
        @Result(name = "json", type = "json", params = {"root", "jsonStr"})
})
public class AddOrEditBuildingAction extends BaseAction {
    private BuildingManager buildingManager;

    private ImageManager imageManager;

    private String jsonStr;

    private String jsonFromAddBuilding;

    private String jsonFromAddFloorPlanEntities;

    String RETURN_JSON = "json";

    @Action(value = "editBuildingInit")
    public String editBuildingInit() {
        Map<String, Object> jsonMap = new HashMap<String, Object>();
        Gson gson = new Gson();

        Map<String, Object> session = getSession();
        if (session == null) {
            jsonMap.put("result", "error");
            jsonStr = gson.toJson(jsonMap);
            return RETURN_JSON;
        }

        // if update_building_id is null, the ajax is from Add building web page
        if (session.get(Const.UPDATED_BUILDING_ID_KEY) == null) {
            jsonMap.put("result", "success");
            jsonMap.put("message", "success");
            jsonMap.put("data", new BuildingEntity());
            jsonStr = gson.toJson(jsonMap);
            return RETURN_JSON;
        }

        Integer buildingId = (Integer) getSession().get(Const.UPDATED_BUILDING_ID_KEY);

        try {

            BuildingEntity buildingEntity = buildingManager.getBuildingById(buildingId);

            jsonMap.put("result", "success");
            jsonMap.put("message", "success");
            jsonMap.put("imageUrl", "\\" + INPUT_IMG_DEST);
            jsonMap.put("data", buildingEntity);
            jsonStr = GsonTaoFun.gson.toJson(jsonMap);

            System.out.println("This is success");
        } catch (Exception e) {
            jsonMap.put("result", "error");
            jsonMap.put("message", this.getClass().getName() + ":<br>" + e.getMessage());
            jsonStr = gson.toJson(jsonMap);

            System.out.println("This is error");
        } catch (StackOverflowError t) {
            jsonMap.put("result", "error");
            jsonMap.put("message", this.getClass().getName() + ":<br>" + t.getMessage());
            jsonStr = gson.toJson(jsonMap);

            System.out.println("This is Stack Overflow Error");
        }
        return RETURN_JSON;

    }

    @Action(value = "addEditBuilding")
    public String addEditBuilding() {
        Map<String, Object> jsonMap = new HashMap<String, Object>();
        Map<String, Object> session = getSession();
        try {
            BuildingEntity buildingEntity = GsonTaoFun.gson.fromJson(jsonFromAddBuilding, BuildingEntity.class);

            Type type = new TypeToken<Set<FloorPlanEntity>>() {
            }.getType();

            Set<FloorPlanEntity> floorPlanEntities = GsonTaoFun.gson.fromJson(jsonFromAddFloorPlanEntities, type);


            if (session.get(Const.INPUT_IMG_DEST_LIST_KEY) != null) {
                List<String> imageNameList = (List<String>) session.get(Const.INPUT_IMG_DEST_LIST_KEY);
                imageManager.addImgNamesToBuilding(imageNameList, buildingEntity);
            }

            buildingManager.addOrUpdateBuilding(buildingEntity, floorPlanEntities);

            jsonMap.put("result", "success");
            jsonStr = GsonTaoFun.gson.toJson(jsonMap);

            System.out.println("This is success");
        } catch (Exception e) {
            jsonMap.put("result", "error");
            jsonMap.put("message", this.getClass().getName() + ":<br>" + e.getMessage());
            jsonStr = GsonTaoFun.gson.toJson(jsonMap);

            System.out.println("This is error");
        }
        session.put(Const.INPUT_IMG_DEST_LIST_KEY, null);
        return RETURN_JSON;
    }

    public String getJsonFromAddBuilding() {
        return jsonFromAddBuilding;
    }

    public void setJsonFromAddBuilding(String jsonFromAddBuilding) {
        this.jsonFromAddBuilding = jsonFromAddBuilding;
    }

    public String getJsonFromAddFloorPlanEntities() {
        return jsonFromAddFloorPlanEntities;
    }

    public void setJsonFromAddFloorPlanEntities(String jsonFromAddFloorPlanEntities) {
        this.jsonFromAddFloorPlanEntities = jsonFromAddFloorPlanEntities;
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

    public void setImageManager(ImageManager imageManager) {
        this.imageManager = imageManager;
    }
}
