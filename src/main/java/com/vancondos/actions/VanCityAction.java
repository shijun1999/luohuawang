//ladichan.com
package com.vancondos.actions;

import com.vancondos.entity.VanCityEntity;
import com.vancondos.service.VanCityManager;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import static com.vancondos.util.Const.INPUT_VAN_CITY_IMG_DEST;

public class VanCityAction extends BaseAction {
    private VanCityManager vanCityManager;
    private String vanCityId;
    private VanCityEntity vanCity;

    @Action(value = "vancity",
            results = {
                    @Result(name = "success", location = "vancity.jsp")}
    )
    public String getVanCityById() {
            Integer id = Integer.parseInt(getVanCityId());
            vanCity = vanCityManager.getVanCityById(id);
            vanCity.setPicture("\\" + INPUT_VAN_CITY_IMG_DEST + vanCity.getPicture());
        vanCityId = "vanCityIdPPP";

        return SUCCESS;
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

    public void setVanCity(VanCityEntity vanCity) {
        this.vanCity = vanCity;
    }

    public VanCityEntity getVanCity() {
        return vanCity;
    }
}
