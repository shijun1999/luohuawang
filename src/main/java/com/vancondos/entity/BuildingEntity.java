package com.vancondos.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.OneToMany;
import javax.persistence.FetchType;

@Entity
@Table(name="BUILDING")
public class BuildingEntity {

    private Integer  id;

    private String name;

    private String lat;

    private String lng;

    private String shortName;

    private String longName;

    private String shortDesc;

    private String longDesc;

    private String priceRange;

    private String address;

    private String city;

    private String area;

    private String unitNumber;

    private String stroys;

    private String styleOfUnits;

    private String construction;

    private String features;

    private String onsiteAmenities;

    private String publicTransportation;

    private String nearbyAmenities;

    private Set<FloorPlanEntity> floorPlanEntities= new HashSet<FloorPlanEntity>();

    @Id
    @Column(name="ID", unique = true, nullable = false)
    @GeneratedValue
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }

    @Column(name="NAME")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name="LAT")
    public String getLat() {
        return lat;
    }

    public void setLat(String lat) {
        this.lat = lat;
    }

    @Column(name="LNG")
    public String getLng() {
        return lng;
    }

    public void setLng(String lng) {
        this.lng = lng;
    }

    @Column(name="SHORT_NAME")
    public String getShortName() {
        return shortName;
    }

    public void setShortName(String shortName) {
        this.shortName = shortName;
    }

    @Column(name="LONG_NAME")
    public String getLongName() {
        return longName;
    }

    public void setLongName(String longName) {
        this.longName = longName;
    }

    @Column(name="SHORT_DESC")
    public String getShortDesc() {
        return shortDesc;
    }

    public void setShortDesc(String shortDesc) {
        this.shortDesc = shortDesc;
    }

    @Column(name="LONG_DESC")
    public String getLongDesc() {
        return longDesc;
    }

    public void setLongDesc(String longDesc) {
        this.longDesc = longDesc;
    }

    @Column(name="PRICE_RANGE")
    public String getPriceRange() {
        return priceRange;
    }

    public void setPriceRange(String priceRange) {
        this.priceRange = priceRange;
    }

    @Column(name="ADDRESS")
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Column(name="CITY")
    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @Column(name="AREA")
    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    @Column(name="UNIT_NUMBER")
    public String getUnitNumber() {
        return unitNumber;
    }

    public void setUnitNumber(String unitNumber) {
        this.unitNumber = unitNumber;
    }

    @Column(name="STROYS")
    public String getStroys() {
        return stroys;
    }

    public void setStroys(String stroys) {
        this.stroys = stroys;
    }

    @Column(name="STYLE_OF_UNITS")
    public String getStyleOfUnits() {
        return styleOfUnits;
    }

    public void setStyleOfUnits(String styleOfUnits) {
        this.styleOfUnits = styleOfUnits;
    }

    @Column(name="CONSTRUCTION")
    public String getConstruction() {
        return construction;
    }

    public void setConstruction(String construction) {
        this.construction = construction;
    }

    public String getFeatures() {
        return features;
    }

    @Column(name="FEATURES")
    public void setFeatures(String features) {
        this.features = features;
    }

    @Column(name="ONSITE_AMENITIES")
    public String getOnsiteAmenities() {
        return onsiteAmenities;
    }

    public void setOnsiteAmenities(String onsiteAmenities) {
        this.onsiteAmenities = onsiteAmenities;
    }

    @Column(name="PUBLIC_TRANSPORTATION")
    public String getPublicTransportation() {
        return publicTransportation;
    }

    public void setPublicTransportation(String publicTransportation) {
        this.publicTransportation = publicTransportation;
    }

    @Column(name="NEARBY_AMENITIES")
    public String getNearbyAmenities() {
        return nearbyAmenities;
    }

    public void setNearbyAmenities(String nearbyAmenities) {
        this.nearbyAmenities = nearbyAmenities;
    }

    @JsonIgnore
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "buildingEntity")
    @Cascade({CascadeType.SAVE_UPDATE, CascadeType.DELETE})
    public Set<FloorPlanEntity> getFloorPlanEntities() {
        return floorPlanEntities;
    }

    public void setFloorPlanEntities(Set<FloorPlanEntity> floorPlanEntities) {
        this.floorPlanEntities = floorPlanEntities;
        if (this.floorPlanEntities!=null){
            for (FloorPlanEntity floorPlanEntity :floorPlanEntities){
                floorPlanEntity.setBuildingEntity(this);
            }
        }
    }
}