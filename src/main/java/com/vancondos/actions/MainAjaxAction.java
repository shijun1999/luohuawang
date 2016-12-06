package com.vancondos.actions;

import com.vancondos.entity.BuildingEntity;
import com.vancondos.entity.UserEntity;
import com.vancondos.service.BuildingManager;
import com.vancondos.service.UserManager;
import com.vancondos.util.json.GsonTaoFun;
import org.apache.struts2.convention.annotation.Action;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;

import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;

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
            List<String> errorList = signUpObject.validate();
            if (errorList.isEmpty()) {
                UserEntity userEntity = signUpObject.convertToEntity();
                userManager.addOrUpdateUser(userEntity);

                return handleJsonSuccess(userEntity);
            }else {
                return handleJsonErrorList(errorList);
            }
        } catch (Exception e) {
            return handleException(e);
        }
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

    private class SignUpObject {
        String firstname;
        String lastname;
        String signupemail;
        String signuppassword;
        String resignuppassword;

        List<String> validate(){
            List<String> list = new ArrayList<String>();
            if (StringUtils.isEmpty(firstname)){
                list.add("First Name is required");
            }
            if (StringUtils.isEmpty(lastname)){
                list.add("Last Name is required");
            }

            if (StringUtils.isEmpty(signupemail)){
                list.add("Email is required");
            }else{
                try {
                    InternetAddress internetAddress = new InternetAddress(signupemail);
                    internetAddress.validate();
                }catch(AddressException ae){
                    list.add("Invalid Email Address");
                }
            }

            if (StringUtils.isEmpty(signuppassword)||StringUtils.isEmpty(resignuppassword)) {
                if (StringUtils.isEmpty(signuppassword)) {
                    list.add("Password is required");
                }

                if (StringUtils.isEmpty(resignuppassword)) {
                    list.add("Re-Password is required");
                }

            }else{
                if (!signuppassword.equals(resignuppassword)){
                    list.add("Comfirm Password");
                }
            }

            return list;
        }

        UserEntity convertToEntity(){
            UserEntity userEntity = new UserEntity();
            userEntity.setFirstName(firstname);
            userEntity.setLastName(lastname);
            userEntity.setEmail(signupemail);
            userEntity.setPassword(signuppassword);
            return userEntity;
        }
    }
}
