package com.example.comfyhotelbackend.po;

import lombok.Data;

import javax.persistence.*;

/**
 * @program: comfy_hotel
 * @description: entity corresponding to table hotel
 * @author: panyue
 * @date: 2022/9/20
 **/
@Data
@Entity
@Table(name = "hotel")
public class Hotel {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "hotel_id")
    private Long hotelId;

    @Column(name = "name")
    private String name;

    @Column(name = "description")
    private String description;

    @Column(name = "rate")
    private Double rate;

    @Column(name = "address")
    private String address;

    @Column(name = "city")
    private String city;

    @Column(name = "state")
    private String state;

}
