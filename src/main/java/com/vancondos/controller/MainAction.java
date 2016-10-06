package com.vancondos.actions;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.vancondos.entity.LouhuaEntity;
import com.vancondos.service.LouhuaManager;

import java.util.List;



public class MainAction extends BaseAction
{
	//Louhua manager injected by spring context; This is cool !!
	private LouhuaManager louhuaManager;
	private List<LouhuaEntity> louhuas;
	private String jsonInString;

	public String load() {
		getSession().clear();
		//TODO lang id hard code
		getSession().put("LT_SESSION_KEY_LANGID", "en");
		return "success";
	}

	public String execute() throws Exception {
		ObjectMapper mapper = new ObjectMapper();
		louhuas = louhuaManager.getAllLouhuas();
		jsonInString = mapper.writeValueAsString(louhuas);
		return SUCCESS;
}

	public LouhuaManager getLouhuaManager() {
		return louhuaManager;
	}

	public void setLouhuaManager(LouhuaManager louhuaManager) {
		this.louhuaManager = louhuaManager;
	}

	public List<LouhuaEntity> getLouhuas() {
		return louhuas;
	}

	public void setLouhuas(List<LouhuaEntity> louhuas) {
		this.louhuas = louhuas;
	}

	public String getJsonInString() {
		return jsonInString;
	}

	public void setJsonInString(String jsonInString) {
		this.jsonInString = jsonInString;
	}
}
