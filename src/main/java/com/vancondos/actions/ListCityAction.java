package com.vancondos.actions;

import com.vancondos.entity.BuildingEntity;
import com.vancondos.entity.VanCityEntity;
import com.vancondos.service.BuildingManager;
import com.vancondos.service.VanCityManager;
import com.vancondos.util.Const;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Actions;
import org.apache.struts2.convention.annotation.Result;

import java.util.List;
import java.util.Map;

public class ListCityAction extends BaseAction {

    private static final String ADD_UPDATE = "addOrUpdate";

    private List<VanCityEntity> vanCities;
    private VanCityEntity vanCity;

    private VanCityManager vanCityManager;

    @Action(value = "listCity",
            results = {
                    @Result(name = "success", location = "listCity.jsp")}
    )
    public String listCity() {
        vanCities = vanCityManager.getAllVanCities();
        return SUCCESS;
    }

    @Action(value = "deleteVanCity",
            results = {@Result(name = "success", location = "list", type = "redirect")}
    )
    public String deleteVanCity() {
        vanCityManager.deleteVanCity(vanCity.getId());
        return SUCCESS;
    }

    @Actions({
            @Action(value = "addVanCity", results = {@Result(name = ADD_UPDATE, location = "addOrEditVanCity.jsp")}),
            @Action(value = "updateVanCity", results = {@Result(name = ADD_UPDATE, location = "addOrEditVanCity.jsp")})
    })
    public String addOrUpdateVanCity() {
        Map<String, Object> session = getSession();
        if (vanCity != null) {
            session.put(Const.UPDATED_VAN_CITY_ID_KEY,vanCity.getId());
        }else if (session.get(Const.UPDATED_VAN_CITY_ID_KEY)!=null){
            session.put(Const.UPDATED_VAN_CITY_ID_KEY, null);
        }
        return ADD_UPDATE;
    }

    @Override
    public void prepare() throws Exception {
        vanCities = null;
    }

    public void setVanCityManager(VanCityManager vanCityManager) {
        this.vanCityManager = vanCityManager;
    }

    public List<VanCityEntity> getVanCities() {
        return vanCities;
    }

    public void setVanCities(List<VanCityEntity> vanCities) {
        this.vanCities = vanCities;
    }

    public VanCityEntity getVanCity() {
        return vanCity;
    }

    public void setVanCity(VanCityEntity vanCity) {
        this.vanCity = vanCity;
    }
}
