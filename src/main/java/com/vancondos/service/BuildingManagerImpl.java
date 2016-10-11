package com.vancondos.service;


import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.vancondos.dao.BuildingDAO;
import com.vancondos.entity.BuildingEntity;

public class LouhuaManagerImpl implements LouhuaManager {
    //Louhua dao injected by Spring context
    private BuildingDAO buildingDAO;

    //This method will be called when a louhua object is added
    @Override
    @Transactional
    public void addLouhua(BuildingEntity louhua) {
        buildingDAO.addLouhua(louhua);
    }

    //This method return list of louhuas in database
    @Override
    @Transactional
    public List<BuildingEntity> getAllLouhuas() {
        return buildingDAO.getAllLouhuas();
    }
    //Deletes a louhua by it's id
    @Override
    @Transactional
    public void deleteLouhua(Integer louhuaId) {
        buildingDAO.deleteLouhua(louhuaId);
    }

    //This setter will be used by Spring context to inject the dao's instance
    public void setBuildingDAO(BuildingDAO buildingDAO) {
        this.buildingDAO = buildingDAO;
    }
}
