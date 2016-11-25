package com.vancondos.actions;

import com.vancondos.common.AjaxHandleException;
import com.vancondos.service.ImageManager;
import com.vancondos.util.Const;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.convention.annotation.Action;

import java.io.File;
import java.util.*;

import static com.vancondos.util.Const.INPUT_IMG_DEST;

public class ManipulateImageAction extends ManipulateImageModel {
    private ImageManager imageManager;

    @SuppressWarnings("unchecked")
    @Action(value = "uploadBuildingImage")
    public String uploadBuildingImage() {
        List<String> imageNameList = new ArrayList<String>();
        Map<String, Object> session = getSession();
        try{
        if (session == null){
            throw new AjaxHandleException("The session is not existing");
        }else if ( session.get(Const.INPUT_BUILDING_IMG_DEST_LIST_KEY)!=null){
            imageNameList = (List<String>)session.get(Const.INPUT_BUILDING_IMG_DEST_LIST_KEY);
        }

            File srcFile = getFile();
            String srcFileName = getFileFileName();
            String suffix = srcFileName.substring(srcFileName.lastIndexOf("."));
            String newName = Calendar.getInstance().getTimeInMillis() + suffix;

            File destFile = new File(projectRoot + INPUT_IMG_DEST + newName);

            FileUtils.copyFile(srcFile, destFile, true);

            imageNameList.add(newName);
            session.put(Const.INPUT_BUILDING_IMG_DEST_LIST_KEY, imageNameList);

            return handleJsonSuccess();
        } catch (Exception e) {
            return handleException(e);
        }
    }


    @SuppressWarnings("unchecked")
    @Action(value = "uploadVanCityImage")
    public String uploadVanCityImage() {
        try {
            File srcFile = getFile();
            String srcFileName = getFileFileName();
            String suffix = srcFileName.substring(srcFileName.lastIndexOf("."));
            String newName = Calendar.getInstance().getTimeInMillis() + suffix;

            File destFile = new File(projectRoot + Const.INPUT_VAN_CITY_IMG_DEST + newName);

            FileUtils.copyFile(srcFile, destFile, true);

            HashMap<String, Object> jsonMap = new HashMap<String, Object>();
            jsonMap.put("result", "success");
            jsonMap.put("message", "success");
            jsonMap.put("copyFile", newName);
            jsonMap.put("imageUrl", "\\" + Const.INPUT_VAN_CITY_IMG_DEST);
            jsonStr = gson.toJson(jsonMap);

            return RETURN_JSON;

        } catch (Exception e) {
            return handleException(e);
        }
    }

    @Action(value="deleteImage")
    public String deleteImage() {
        try {
            String imageId = getImageId();
            Integer imageIdInt = Integer.parseInt(imageId);
            imageManager.deleteImage(imageIdInt);

            return handleJsonSuccess();

        } catch (Exception e) {
            return handleException(e);
        }
    }

    public ImageManager getImageManager() {
        return imageManager;
    }

    public void setImageManager(ImageManager imageManager) {
        this.imageManager = imageManager;
    }
}
