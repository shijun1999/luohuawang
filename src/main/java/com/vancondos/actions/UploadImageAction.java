package com.vancondos.actions;

import com.google.gson.Gson;
import com.vancondos.common.Const;
import com.vancondos.entity.BuildingEntity;
import com.vancondos.service.BuildingManager;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import java.io.File;
import java.util.*;

import static com.vancondos.common.Const.INPUT_IMG_DEST;

@ParentPackage("json-default")
@Results({
        @Result(name = "json", type = "json", params = {"root", "jsonStr"})
})
public class UploadImageAction extends UploadImageModel {
    private BuildingManager buildingManager;
    private List<BuildingEntity> buildings;
    private String jsonInString;

    private String jsonStr;

    @SuppressWarnings("unchecked")
    @Action(value = "uploadImage")
    public String uploadImage() {
        String rtnStr = "json";
        Map<String, Object> jsonMap = new HashMap<String, Object>();
        Gson gson = new Gson();

        List<String> imageNameList = new ArrayList<String>();

        Map<String, Object> session = getSession();
        if (session == null){
            jsonMap.put("result", "error");
            jsonStr = gson.toJson(jsonMap);
            return rtnStr;
        }else if ( session.get(Const.INPUT_IMG_DEST_LIST_KEY)!=null){
            imageNameList = (List<String>)session.get(Const.INPUT_IMG_DEST_LIST_KEY);
        }

        try {
            File srcFile = getFile();
            String srcFileName = getFileFileName();
            String suffix = srcFileName.substring(srcFileName.lastIndexOf("."));
            String newName = Calendar.getInstance().getTimeInMillis() + suffix;

            File destFile = new File(projectRoot + INPUT_IMG_DEST + newName);

            FileUtils.copyFile(srcFile, destFile, true);


            jsonMap.put("result", "success");
            jsonMap.put("message", "success");
            jsonStr = gson.toJson(jsonMap);

            imageNameList.add(newName);
            session.put(Const.INPUT_IMG_DEST_LIST_KEY, imageNameList);
        } catch (Exception e) {
            jsonMap.put("result", "error");
            jsonMap.put("message", this.getClass().getName() + ":<br>" + e.getMessage());
            jsonStr = gson.toJson(jsonMap);
        }
        return rtnStr;
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

    public String getJsonStr() {
        return jsonStr;
    }

    public void setJsonStr(String jsonStr) {
        this.jsonStr = jsonStr;
    }
}
