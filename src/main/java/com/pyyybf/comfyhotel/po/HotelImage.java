package com.pyyybf.comfyhotel.po;

import lombok.Data;

import javax.persistence.*;

/**
 * @program: comfy_hotel
 * @description: entity corresponding to table hotel_image
 * @author: panyue
 * @date: 2022/9/20
 **/
@Data
@Entity
@Table(name = "hotel_image")
public class HotelImage {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "hotel_image_id")
    private Long hotelImageId;

    @Column(name = "hotel_id")
    private Long hotelId;

    @Column(name = "url")
    private String url;

}
