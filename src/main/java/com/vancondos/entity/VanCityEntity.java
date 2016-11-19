package com.vancondos.entity;


import org.hibernate.annotations.Type;

import javax.persistence.*;

@Entity
@Table(name="VAN_CITY")
public class VanCityEntity {
    private Integer  id;

    private String cityNameE;

    private String cityNameC;

    private String description;

    private String picture;

    private Integer order;

    private Boolean onTopbar;

    @Id
    @Column(name="ID", unique = true, nullable = false)
    @GeneratedValue
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Column(name="CITY_NAME_E")
    public String getCityNameE() {
        return cityNameE;
    }

    public void setCityNameE(String cityNameE) {
        this.cityNameE = cityNameE;
    }

    @Column(name="CITY_NAME_C")
    public String getCityNameC() {
        return cityNameC;
    }

    public void setCityNameC(String cityNameC) {
        this.cityNameC = cityNameC;
    }

    @Column(name="DESCRIPTION")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Column(name="PICTURE")
    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    @Column(name="ORDER_BY")
    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }

    @Column(name="ON_TOPBAR",columnDefinition = "TINYINT")
    @Type(type = "org.hibernate.type.NumericBooleanType")
    public Boolean getOnTopbar() {
        return onTopbar;
    }

    public void setOnTopbar(Boolean onTopbar) {
        this.onTopbar = onTopbar;
    }
}
