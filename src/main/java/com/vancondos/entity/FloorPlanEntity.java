package com.vancondos.entity;

import javax.persistence.*;

@Entity
@Table(name="FLOOR_PLAN")
public class FloorPlan {

    @Id
    @Column(name="ID")
    @GeneratedValue
    private Integer id;

    @Column(name="BUILD_ID")
    private int buildId;

    @Column(name="LEVEL")
    private String level;

    @Column(name="INTERIOR_AREA")
    private String interiorArea;

    @Column(name="EXTERIOR_AREA")
    private String exteriorArea;

    @Column(name="TOTAL_AREA")
    private String totalArea;

    @Column(name="FLOOR_PLAN_PIC")
    private String floorPlanPic;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getBuildId() {
        return buildId;
    }

    public void setBuildId(int buildId) {
        this.buildId = buildId;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getInteriorArea() {
        return interiorArea;
    }

    public void setInteriorArea(String interiorArea) {
        this.interiorArea = interiorArea;
    }

    public String getExteriorArea() {
        return exteriorArea;
    }

    public void setExteriorArea(String exteriorArea) {
        this.exteriorArea = exteriorArea;
    }

    public String getTotalArea() {
        return totalArea;
    }

    public void setTotalArea(String totalArea) {
        this.totalArea = totalArea;
    }

    public String getFloorPlanPic() {
        return floorPlanPic;
    }

    public void setFloorPlanPic(String floorPlanPic) {
        this.floorPlanPic = floorPlanPic;
    }
}
