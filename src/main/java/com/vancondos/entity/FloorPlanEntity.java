package com.vancondos.entity;

import javax.persistence.*;

@Entity
@Table(name="FLOOR_PLAN")
public class FloorPlanEntity {


    private Integer id;

    private BuildingEntity buildingEntity;

    private String level;

    private String interiorArea;

    private String exteriorArea;

    private String totalArea;

    private String floorPlanPic;

    @Id
    @Column(name="ID")
    @GeneratedValue
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "BUILD_ID", nullable = false)
    public BuildingEntity getBuildingEntity() {
        return buildingEntity;
    }

    public void setBuildingEntity(BuildingEntity buildingEntity) {
        this.buildingEntity = buildingEntity;
    }

    @Column(name="LEVEL")
    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    @Column(name="INTERIOR_AREA")
    public String getInteriorArea() {
        return interiorArea;
    }

    public void setInteriorArea(String interiorArea) {
        this.interiorArea = interiorArea;
    }

    @Column(name="EXTERIOR_AREA")
    public String getExteriorArea() {
        return exteriorArea;
    }

    public void setExteriorArea(String exteriorArea) {
        this.exteriorArea = exteriorArea;
    }

    @Column(name="TOTAL_AREA")
    public String getTotalArea() {
        return totalArea;
    }

    public void setTotalArea(String totalArea) {
        this.totalArea = totalArea;
    }

    @Column(name="FLOOR_PLAN_PIC")
    public String getFloorPlanPic() {
        return floorPlanPic;
    }

    public void setFloorPlanPic(String floorPlanPic) {
        this.floorPlanPic = floorPlanPic;
    }
}
