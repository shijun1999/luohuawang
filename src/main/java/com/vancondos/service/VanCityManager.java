package com.vancondos.service;

import com.vancondos.entity.VanCityEntity;

import java.util.List;

public interface VanCityManager {

    public void addOrUpdateVanCity(VanCityEntity vanCityEntity);

    public List<VanCityEntity> getAllVanCities();

    public VanCityEntity getVanCityById(Integer vanCityId);

    public void deleteVanCity(Integer vanCityId);
}
