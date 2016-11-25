package com.vancondos.actions;

import com.vancondos.common.AjaxHandleException;
import com.vancondos.entity.VanCityEntity;
import com.vancondos.service.VanCityManager;
import com.vancondos.util.Const;
import com.vancondos.util.json.GsonTaoFun;
import org.apache.struts2.convention.annotation.Action;

import java.util.List;
import java.util.Map;

public class ManipulateVanCityAction extends AjaxAction {

    private VanCityManager vanCityManager;
    private String vanCityId;


    @Action(value = "listVanCityInit")
    public String listVanCityInit() {

        try {
            List<VanCityEntity> vanCityEntityList = vanCityManager.getAllVanCities();

            for (VanCityEntity vanCityEntity : vanCityEntityList) {
                resetVanCityPic(vanCityEntity);
            }

            return handleJsonSuccess(vanCityEntityList);
        } catch (Exception e) {
            return handleException(e);
        }
    }

    @Action(value = "editVanCityInit")
    public String editVanCityInit() {
        Map<String, Object> session = getSession();
        try {
            if (session == null) {
                throw new AjaxHandleException("The session is not existing");
            }

            // if update_building_id is null, the ajax is requested for new building added
            if (session.get(Const.UPDATED_VAN_CITY_ID_KEY) == null) {
                return handleJsonSuccess(new VanCityEntity());
            }

            Integer vanCityId = (Integer) getSession().get(Const.UPDATED_VAN_CITY_ID_KEY);

            VanCityEntity vanCityEntity = vanCityManager.getVanCityById(vanCityId);
            resetVanCityPic(vanCityEntity);

            return handleJsonSuccess(vanCityEntity);
       } catch (AjaxHandleException e) {
            return handleException(e);
        } catch (StackOverflowError t) {
            return handleException(t);
        }
    }

    @Action(value = "addEditVanCity")
    public String addEditVanCity() {
        try {
            VanCityEntity vanCityEntity = GsonTaoFun.gson.fromJson(jsonFromWeb, VanCityEntity.class);
            vanCityManager.addOrUpdateVanCity(vanCityEntity);

            return handleJsonSuccess(vanCityEntity);
        } catch (Exception e) {
            return handleException(e);
        }
    }

    private void resetVanCityPic(VanCityEntity vanCityEntity) {
        String pic = vanCityEntity.getPicture();
        if (pic != null && !pic.isEmpty()) {
            vanCityEntity.setPicture("/upload/images/vanCity/" + pic);
        }
    }

    public VanCityManager getVanCityManager() {
        return vanCityManager;
    }

    public void setVanCityManager(VanCityManager vanCityManager) {
        this.vanCityManager = vanCityManager;
    }

    public String getVanCityId() {
        return vanCityId;
    }

    public void setVanCityId(String vanCityId) {
        this.vanCityId = vanCityId;
    }
}
