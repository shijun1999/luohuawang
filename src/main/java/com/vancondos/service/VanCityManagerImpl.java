package com.vancondos.service;

import com.vancondos.dao.VanCityDAO;
import com.vancondos.entity.VanCityEntity;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public class VanCityManagerImpl implements VanCityManager{
    //VanCity dao injected by Spring context
    private VanCityDAO vanCityDAO;

    @Override
    @Transactional
    public void addOrUpdateVanCity(VanCityEntity vanCityEntity){
        vanCityDAO.addOrUpdateBuilding(vanCityEntity);
    }

    @Override
    @Transactional
    public List<VanCityEntity> getAllVanCities(){
        return vanCityDAO.getAllVanCitys();
    }

    @Override
    @Transactional
    public VanCityEntity getVanCityById(Integer vanCityId){
        return vanCityDAO.getVanCityById(vanCityId);
    }


    @Override
    @Transactional
    public void deleteVanCity(Integer vanCityId){
        vanCityDAO.deleteVanCity(vanCityId);
    }

    public void setVanCityDAO(VanCityDAO vanCityDAO) {
        this.vanCityDAO = vanCityDAO;
    }
}
