package com.vancondos.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="LOUHUA")
public class LouhuaEntity {
     
    @Id
    @Column(name="ID")
    @GeneratedValue
    private Integer id;
     
    @Column(name="NAME")
    private String name;
 
    @Column(name="LAT")
    private String lat;
 
    @Column(name="LNG")
    private String lng;

    @Column(name="SHORT_NAME")
    private String shortName;

    @Column(name="LONG_NAME")
    private String longName;

    @Column(name="SHORT_DESC")
    private String shortDesc;

    @Column(name="LONG_DESC")
    private String longDesc;

    @Column(name="PRICE_FROM")
    private int priceFrom;

    @Column(name="PRICE_TO")
    private int priceTo;

    @Column(name="ADDRESS")
    private String address;

    @Column(name="UNIT_NUMBER")
    private int unitNumber;

    @Column(name="STROYS")
    private int stroys;

    @Column(name="STYLE_OF_UNITS")
    private String styleOfUnits;

    @Column(name="CONSTRUCTION")
    private String construction;

    @Column(name="FEATURES")
    private String features;

    @Column(name="ONSITE_AMENITIES")
    private String onsiteAmenities;

    @Column(name="PUBLIC_TRANSPORTATION")
    private String publicTransportation;

    @Column(name="NEARBY_AMENITIES")
    private String nearbyAmenities;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLat() {
        return lat;
    }

    public void setLat(String lat) {
        this.lat = lat;
    }

    public String getLng() {
        return lng;
    }

    public void setLng(String lng) {
        this.lng = lng;
    }

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }

    public String getShortName() {
        return shortName;
    }

    public void setShortName(String shortName) {
        this.shortName = shortName;
    }

    public String getLongName() {
        return longName;
    }

    public void setLongName(String longName) {
        this.longName = longName;
    }

    public String getShortDesc() {
        return shortDesc;
    }

    public void setShortDesc(String shortDesc) {
        this.shortDesc = shortDesc;
    }

    public String getLongDesc() {
        return longDesc;
    }

    public void setLongDesc(String longDesc) {
        this.longDesc = longDesc;
    }

    public int getPriceFrom() {
        return priceFrom;
    }

    public void setPriceFrom(int priceFrom) {
        this.priceFrom = priceFrom;
    }

    public int getPriceTo() {
        return priceTo;
    }

    public void setPriceTo(int priceTo) {
        this.priceTo = priceTo;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getUnitNumber() {
        return unitNumber;
    }

    public void setUnitNumber(int unitNumber) {
        this.unitNumber = unitNumber;
    }

    public int getStroys() {
        return stroys;
    }

    public void setStroys(int stroys) {
        this.stroys = stroys;
    }

    public String getStyleOfUnits() {
        return styleOfUnits;
    }

    public void setStyleOfUnits(String styleOfUnits) {
        this.styleOfUnits = styleOfUnits;
    }

    public String getConstruction() {
        return construction;
    }

    public void setConstruction(String construction) {
        this.construction = construction;
    }

    public String getFeatures() {
        return features;
    }

    public void setFeatures(String features) {
        this.features = features;
    }

    public String getOnsiteAmenities() {
        return onsiteAmenities;
    }

    public void setOnsiteAmenities(String onsiteAmenities) {
        this.onsiteAmenities = onsiteAmenities;
    }

    public String getPublicTransportation() {
        return publicTransportation;
    }

    public void setPublicTransportation(String publicTransportation) {
        this.publicTransportation = publicTransportation;
    }

    public String getNearbyAmenities() {
        return nearbyAmenities;
    }

    public void setNearbyAmenities(String nearbyAmenities) {
        this.nearbyAmenities = nearbyAmenities;
    }
}