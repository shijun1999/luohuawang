package com.vancondos.dao;

import com.vancondos.entity.BuildingEntity;
import com.vancondos.entity.VanCityEntity;

import java.util.List;

public interface VanCityDAO{

    public void addOrUpdateBuilding(VanCityEntity vanCityEntity);

    public List<VanCityEntity> getAllVanCitys();

    public void deleteVanCity(Integer vanCityId);

    public VanCityEntity getVanCityById(Integer vanCityId);
}