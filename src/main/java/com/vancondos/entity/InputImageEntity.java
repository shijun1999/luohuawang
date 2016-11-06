package com.vancondos.entity;

import com.vancondos.util.json.GsonExclusion;
import org.hibernate.annotations.*;

import javax.persistence.*;
import javax.persistence.Entity;
import javax.persistence.Table;
import org.hibernate.annotations.CascadeType;

@Entity
@Table(name="INPUT_IMAGE")
public class InputImageEntity {

    private Integer id;

    @GsonExclusion
    private BuildingEntity buildingEntity;

    private String name;

    private int sort;

    @Id
    @Column(name="ID")
    @GeneratedValue
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.EAGER)

    @JoinColumn(name = "BUILDING_ID", nullable = false)
    @Cascade(value={CascadeType.ALL})
    public BuildingEntity getBuildingEntity() {
        return buildingEntity;
    }

    public void setBuildingEntity(BuildingEntity buildingEntity) {
        this.buildingEntity = buildingEntity;
    }

    @Column(name="NAME")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name="SORT")
    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }
}
