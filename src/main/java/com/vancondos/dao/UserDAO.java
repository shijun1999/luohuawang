package com.vancondos.dao;

import com.vancondos.entity.UserEntity;

public interface UserDAO {

    public void addOrUpdateUser(UserEntity userEntity);

    public void deleteUser(Integer userId);

    public UserEntity getUserById(Integer userId);
}