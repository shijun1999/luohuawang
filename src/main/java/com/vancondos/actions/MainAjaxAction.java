package com.vancondos.actions;

import com.vancondos.entity.BuildingEntity;
import com.vancondos.entity.UserEntity;
import com.vancondos.service.BuildingManager;
import com.vancondos.service.UserManager;
import com.vancondos.transfer.LogIn_SignUp;
import com.vancondos.transfer.SignUpObject;
import com.vancondos.util.Const;
import com.vancondos.util.json.GsonTaoFun;
import org.apache.struts2.convention.annotation.Action;

import java.util.List;

public class MainAjaxAction extends AjaxAction {
    private BuildingManager buildingManager;
    private UserManager userManager;
    private List<BuildingEntity> buildings;

    @Action(value = "loadBuildingOnMap")
    public String loadBuilding() {
        try {
            buildings = buildingManager.getAllBuildings();

            return handleJsonSuccess(buildings);
        } catch (Exception e) {
            return handleJsonError(e);
        }
    }

    @Action(value = "signUp")
    public String signUp() {
        try {
            SignUpObject signUpObject = GsonTaoFun.gson.fromJson(jsonFromWeb, SignUpObject.class);
            List<String> errorList = signUpObject.validate(LogIn_SignUp.SIGNUP);
            if (errorList.isEmpty()) {
                UserEntity userEntity = signUpObject.convertToEntity();
                userManager.addOrUpdateUser(userEntity);

                return handleJsonSuccess(userEntity);
            } else {
                return handleJsonErrorList(errorList);
            }
        } catch (Exception e) {
            return handleException(e);
        }
    }

    @Action(value = "logIn")
    public String logIn() {
        try {
            SignUpObject signUpObject = GsonTaoFun.gson.fromJson(jsonFromWeb, SignUpObject.class);
            List<String> errorList = signUpObject.validate(LogIn_SignUp.LOGIN);
            if (errorList.isEmpty()) {
                UserEntity userEntity = userManager.getUserFromLogIn(signUpObject);
                getSession().put(Const.LOG_IN_USER_KEY, userEntity);

                return handleJsonSuccess(userEntity);
            } else {
                return handleJsonErrorList(errorList);
            }
        } catch (Exception e) {
            return handleException(e);
        }
    }

    @Action(value = "logOut")
    public String logOut() {
        getSession().put(Const.LOG_IN_USER_KEY,null);
        return RETURN_JSON;
    }

    public BuildingManager getBuildingManager() {
        return buildingManager;
    }

    public void setBuildingManager(BuildingManager buildingManager) {
        this.buildingManager = buildingManager;
    }

    public UserManager getUserManager() {
        return userManager;
    }

    public void setUserManager(UserManager userManager) {
        this.userManager = userManager;
    }

    public List<BuildingEntity> getBuildings() {
        return buildings;
    }

    public void setBuildings(List<BuildingEntity> buildings) {
        this.buildings = buildings;
    }

}
