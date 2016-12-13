package com.vancondos.actions;

import com.vancondos.entity.UserEntity;
import com.vancondos.exception.BusinessException;
import com.vancondos.service.UserManager;
import com.vancondos.transfer.LogIn_SignUp;
import com.vancondos.transfer.SignUpObject;
import com.vancondos.util.Const;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import java.util.List;

@Action(results = {
        @Result(name = {"error", "input"}, location = "input-form.jsp"),
        @Result(name = "success", location = "success.jsp")
})
public class AccountUpdateAction extends BaseAction {

    enum AccountStauts {
        BEFORE_CHANGE(0),
        NO_CHANGE(1),
        AFTER_CHANGE(2);

        public Integer status;

        AccountStauts(Integer status) {
            this.status = status;
        }

        public Integer getStatus() {
            return status;
        }
    }

    private UserManager userManager;

    private String lastName;
    private String firstName;
    private String email;
    private String password;
    private String repassword;
    private Integer status = AccountStauts.BEFORE_CHANGE.getStatus();

    @Action(value = "loadAccount",
            results = {
                    @Result(name = "success", location = "accountUpdate.jsp")}
    )
    public String loadAccount() {

        UserEntity userEntity = (UserEntity) getSession().get(Const.LOG_IN_USER_KEY);

        if (userEntity == null) {
            throw new RuntimeException("No user log in");
        }

        setFirstName(userEntity.getFirstName());
        setLastName(userEntity.getLastName());
        setEmail(userEntity.getEmail());
        setPassword(userEntity.getPassword());

        return SUCCESS;
    }

    @Action(value = "saveAccount",
            results = {
                    @Result(name = "success", location = "accountUpdate.jsp")}
    )
    public String saveAccount() throws BusinessException {
        status = AccountStauts.BEFORE_CHANGE.getStatus();

        UserEntity userEntity = (UserEntity) getSession().get(Const.LOG_IN_USER_KEY);

        SignUpObject signUpObject = new SignUpObject();
        signUpObject.setFirstname(getFirstName());
        signUpObject.setLastname(getLastName());
        signUpObject.setEmail(getEmail());
        signUpObject.setPassword(getPassword());
        signUpObject.setRepassword(getRepassword());

        List<String> errorList = signUpObject.validate(LogIn_SignUp.LOGIN);

        if (errorList.isEmpty()) {
            boolean accountUpdated = false;
            setStatus(AccountStauts.NO_CHANGE.getStatus());

            if (!getFirstName().equals(userEntity.getFirstName())) {
                accountUpdated = true;
                userEntity.setFirstName(getFirstName());
            }
            if (!getLastName().equals(userEntity.getLastName())) {
                accountUpdated = true;
                userEntity.setLastName(getLastName());
            }
            if (!getEmail().equals(userEntity.getEmail())) {
                accountUpdated = true;
                userEntity.setEmail(getEmail());
            }
            if (!getPassword().equals(userEntity.getPassword())) {
                accountUpdated = true;
                userEntity.setPassword(getPassword());
            }

            if (accountUpdated) {
                userEntity = userManager.updateUserWithObjectReturn(userEntity);
                getSession().put(Const.LOG_IN_USER_KEY, userEntity);

                setStatus(AccountStauts.AFTER_CHANGE.getStatus());
            }
        }
        return SUCCESS;

    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public UserManager getUserManager() {
        return userManager;
    }

    public void setUserManager(UserManager userManager) {
        this.userManager = userManager;
    }

    public String getRepassword() {
        return repassword;
    }

    public void setRepassword(String repassword) {
        this.repassword = repassword;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
