/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.onda.model;

import java.util.Set;
import javax.persistence.Entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

/**
 *
 * @author mac
 */

@Entity
@Table(name = "gmap")
public class Maps {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @Column(name = "lat")
    private double lat;
    
    @Column(name = "lon")
    private double lon;
    
    @Column(name = "alt")
    private double alt;
    
    @Column(name = "speed")
    private double speed;
    
    @Column(name = "hdop")
    private double hdop;
    
    @Column(name = "satellites")
    private int sat;
    
    @Column(name = "date")
    private String date;

    
    
    @Column(name = "time")
    private String time;
    //private Set<User> users;
    
    /* Setters and Getters */

    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public double getLat() {
        return lat;
    }

    public void setLat(double lat) {
        this.lat = lat;
    }

    public double getLon() {
        return lon;
    }

    public void setLon(double lon) {
        this.lon = lon;
    }

    public double getAlt() {
        return alt;
    }

    public void setAlt(double alt) {
        this.alt = alt;
    }

    public double getSpeed() {
        return speed;
    }

    public void setSpeed(double speed) {
        this.speed = speed;
    }

    public double getHdop() {
        return hdop;
    }

    public void setHdop(double hdop) {
        this.hdop = hdop;
    }

    public int getSat() {
        return sat;
    }

    public void setSat(int sat) {
        this.sat = sat;
    }
    
    
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Maps(){
        
    }
    public Maps(double lat, double lon, double alt, double speed, double hdop, int sat, String date, String time) {
        this.lat = lat;
        this.lon = lon;
        this.alt = alt;
        this.speed = speed;
        this.hdop = hdop;
        this.sat = sat;
        this.date = date;
        this.time = time;
    }
    
    
    

    
}
