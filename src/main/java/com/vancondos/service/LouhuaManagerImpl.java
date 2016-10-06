package com.junshi.service;


import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.junshi.dao.LouhuaDAO;
import com.junshi.entity.LouhuaEntity;

public class LouhuaManagerImpl implements LouhuaManager {
    //Louhua dao injected by Spring context
    private LouhuaDAO louhuaDAO;

    //This method will be called when a louhua object is added
    @Override
    @Transactional
    public void addLouhua(LouhuaEntity louhua) {
        louhuaDAO.addLouhua(louhua);
    }

    //This method return list of louhuas in database
    @Override
    @Transactional
    public List<LouhuaEntity> getAllLouhuas() {
        return louhuaDAO.getAllLouhuas();
    }
    //Deletes a louhua by it's id
    @Override
    @Transactional
    public void deleteLouhua(Integer louhuaId) {
        louhuaDAO.deleteLouhua(louhuaId);
    }

    //This setter will be used by Spring context to inject the dao's instance
    public void setLouhuaDAO(LouhuaDAO louhuaDAO) {
        this.louhuaDAO = louhuaDAO;
    }
}
