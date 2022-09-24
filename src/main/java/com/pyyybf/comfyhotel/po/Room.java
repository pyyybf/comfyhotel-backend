package com.pyyybf.comfyhotel.po;

import lombok.Data;

import javax.persistence.*;

/**
 * @program: comfy_hotel
 * @description: entity corresponding to table room
 * @author: panyue
 * @date: 2022/9/20
 **/
@Data
@Entity
@Table(name = "room")
public class Room {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "room_id")
    private Long roomId;

    @Column(name = "hotel_id")
    private Long hotelId;

    @Column(name = "name")
    private String name;

    @Column(name = "description")
    private String description;

    @Column(name = "total")
    private Integer total;

    @Column(name = "remaining")
    private Integer remaining;

    @Column(name = "facility")
    private String facility;

    @Column(name = "price")
    private Double price;

    @Column(name = "bed_number")
    private Integer bedNumber;

}
