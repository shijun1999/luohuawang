package com.vancondos.transfer;

import com.vancondos.entity.UserEntity;
import org.apache.commons.lang3.StringUtils;

import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import java.util.ArrayList;
import java.util.List;

public class SignUpObject {
    private String firstname;
    private  String lastname;
    private  String email;
    private String password;
    private String repassword;

    public List<String> validate(LogIn_SignUp ls) {
        List<String> list = new ArrayList<String>();
        if (LogIn_SignUp.SIGNUP.equals(ls)) {
            if (StringUtils.isEmpty(firstname)) {
                list.add("First Name is required");
            }
            if (StringUtils.isEmpty(lastname)) {
                list.add("Last Name is required");
            }
        }

        if (StringUtils.isEmpty(email)) {
            list.add("Email is required");
        } else {
            try {
                InternetAddress internetAddress = new InternetAddress(email);
                internetAddress.validate();
            } catch (AddressException ae) {
                list.add("Invalid Email Address");
            }
        }

        if (StringUtils.isEmpty(password) || StringUtils.isEmpty(repassword)) {
            if (StringUtils.isEmpty(password)) {
                list.add("Password is required");
            }

            if (StringUtils.isEmpty(repassword) && (LogIn_SignUp.SIGNUP.equals(ls))) {
                list.add("Re-Password is required");
            }

        } else if (LogIn_SignUp.SIGNUP.equals(ls)) {
            if (!password.equals(repassword)) {
                list.add("Comfirm Password");
            }
        }

        return list;
    }

    public UserEntity convertToEntity() {
        UserEntity userEntity = new UserEntity();
        userEntity.setFirstName(firstname);
        userEntity.setLastName(lastname);
        userEntity.setEmail(email);
        userEntity.setPassword(password);
        return userEntity;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
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

    public String getRepassword() {
        return repassword;
    }

    public void setRepassword(String repassword) {
        this.repassword = repassword;
    }
}
