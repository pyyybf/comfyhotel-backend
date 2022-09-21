package com.pyyybf.comfyhotel.po;

import lombok.Data;

import javax.persistence.*;

/**
 * @program: comfy_hotel
 * @description: entity corresponding to table room_image
 * @author: panyue
 * @date: 2022/9/20
 **/
@Data
@Entity
@Table(name = "room_image")
public class RoomImage {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "room_image_id")
    private Long roomImageId;

    @Column(name = "room_id")
    private Long roomId;

    @Column(name = "url")
    private String url;

}
