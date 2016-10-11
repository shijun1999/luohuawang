package com.vancondos.service;

import java.util.List;

import com.vancondos.entity.BuildingEntity;

public interface LouhuaManager {

    public void addLouhua(BuildingEntity louhua);

    public List<BuildingEntity> getAllLouhuas();

    public void deleteLouhua(Integer louhuaId);
}
