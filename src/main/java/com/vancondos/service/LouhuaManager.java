package com.junshi.service;

import java.util.List;

import com.junshi.entity.LouhuaEntity;

public interface LouhuaManager {

    public void addLouhua(LouhuaEntity louhua);

    public List<LouhuaEntity> getAllLouhuas();

    public void deleteLouhua(Integer louhuaId);
}
