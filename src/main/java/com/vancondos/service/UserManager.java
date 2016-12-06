package com.vancondos.service;

import com.vancondos.entity.UserEntity;

public interface UserManager {

    public void addOrUpdateUser(UserEntity userEntity);

    public void deleteUser(Integer userId);

    public UserEntity getUserById(Integer userId);
}
