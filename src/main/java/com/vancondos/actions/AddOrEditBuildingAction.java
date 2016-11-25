package com.vancondos.actions;

import com.google.gson.reflect.TypeToken;
import com.vancondos.common.AjaxHandleException;
import com.vancondos.entity.InputImageEntity;
import com.vancondos.service.ImageManager;
import com.vancondos.util.Const;
import com.vancondos.entity.BuildingEntity;
import com.vancondos.entity.FloorPlanEntity;
import com.vancondos.service.BuildingManager;
import com.vancondos.util.json.GsonTaoFun;
import org.apache.struts2.convention.annotation.Action;

import java.lang.reflect.Type;
import java.util.*;

import static com.vancondos.util.Const.INPUT_IMG_DEST;

public class AddOrEditBuildingAction extends AjaxAction {
    private BuildingManager buildingManager;

    private ImageManager imageManager;
    private String jsonFromAddFloorPlanEntities;

    @Action(value = "editBuildingInit")
    public String editBuildingInit() {
        Map<String, Object> session = getSession();
        try {
            if (session == null) {
                throw new AjaxHandleException("The session is not existing");
            }

            // if update_building_id is null, the ajax is from Add building web page
            if (session.get(Const.UPDATED_BUILDING_ID_KEY) == null) {
                return handleJsonSuccess(new BuildingEntity());
            }

            Integer buildingId = (Integer) getSession().get(Const.UPDATED_BUILDING_ID_KEY);
            BuildingEntity buildingEntity = buildingManager.getBuildingById(buildingId);


            Set<InputImageEntity> inputImageEntities= buildingEntity.getInputImageEntities();
            for (InputImageEntity inputImageEntity: inputImageEntities){
                inputImageEntity.setName("\\"+INPUT_IMG_DEST +inputImageEntity.getName());
            }

            return handleJsonSuccess(buildingEntity);
        } catch (Exception e) {
            return handleException(e);
        } catch (StackOverflowError t) {
            return handleException(t);
        }
    }

    @Action(value = "addEditBuilding")
    public String addEditBuilding() {
        Map<String, Object> session = getSession();
        try {
            BuildingEntity buildingEntity = GsonTaoFun.gson.fromJson(jsonFromWeb, BuildingEntity.class);

            Type type = new TypeToken<Set<FloorPlanEntity>>() {
            }.getType();

            Set<FloorPlanEntity> floorPlanEntities = GsonTaoFun.gson.fromJson(jsonFromAddFloorPlanEntities, type);

            if (session.get(Const.INPUT_BUILDING_IMG_DEST_LIST_KEY) != null) {
                List<String> imageNameList = (List<String>) session.get(Const.INPUT_BUILDING_IMG_DEST_LIST_KEY);
                session.put(Const.INPUT_BUILDING_IMG_DEST_LIST_KEY, null);
                imageManager.addImgNamesToBuilding(imageNameList, buildingEntity);
            }

            buildingManager.addOrUpdateBuilding(buildingEntity, floorPlanEntities);

            return handleJsonSuccess();
        } catch (Exception e) {
            return handleException(e);
        }
    }

    public String getJsonFromAddFloorPlanEntities() {
        return jsonFromAddFloorPlanEntities;
    }

    public void setJsonFromAddFloorPlanEntities(String jsonFromAddFloorPlanEntities) {
        this.jsonFromAddFloorPlanEntities = jsonFromAddFloorPlanEntities;
    }

    public void setBuildingManager(BuildingManager buildingManager) {
        this.buildingManager = buildingManager;
    }

    public void setImageManager(ImageManager imageManager) {
        this.imageManager = imageManager;
    }
}
