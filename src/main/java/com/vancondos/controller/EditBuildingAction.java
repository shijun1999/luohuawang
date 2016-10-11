package com.vancondos.controller;

import java.util.List;

import org.apache.log4j.Logger;

import com.vancondos.entity.BuildingEntity;
import com.vancondos.service.LouhuaManager;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;

public class EditLouhuaAction extends ActionSupport implements Preparable	
{
	private static final long serialVersionUID = 1L;
	
	//Logger configured using log4j
	private static final Logger logger = Logger.getLogger(EditLouhuaAction.class);
	//List of louhuas; Setter and Getter are below
	private List<BuildingEntity> louhuas;
	//Louhua object to be added; Setter and Getter are below
	private BuildingEntity louhua;
	
	//Louhua manager injected by spring context; This is cool !!
	private LouhuaManager louhuaManager;

	//This method return list of louhuas in database
	public String listLouhuas() {
		logger.info("listLouhuas method called");
		louhuas = louhuaManager.getAllLouhuas();
		return SUCCESS;
	}

	//This method will be called when a louhua object is added
	public String addLouhua() {
		logger.info("addLouhua method called");
		louhuaManager.addLouhua(louhua);
		return SUCCESS;
	}

	//Deletes a louhua by it's id passed in path parameter
	public String deleteLouhua() {
		logger.info("deleteLouhua method called");
		louhuaManager.deleteLouhua(louhua.getId());
		return SUCCESS;
	}
	
	//This method will be called before any of Action method is invoked;
	//So some pre-processing if required.
	@Override
	public void prepare() throws Exception {
		louhua = null;
	}

	public void setLouhuaManager(LouhuaManager louhuaManager) {
		this.louhuaManager = louhuaManager;
	}

	public List<BuildingEntity> getLouhuas() {
		return louhuas;
	}

	public void setLouhuas(List<BuildingEntity> louhuas) {
		this.louhuas = louhuas;
	}

	public BuildingEntity getLouhua() {
		return louhua;
	}

	public void setLouhua(BuildingEntity louhua) {
		this.louhua = louhua;
	}
}
