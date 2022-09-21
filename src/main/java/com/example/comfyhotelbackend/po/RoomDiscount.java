package com.example.comfyhotelbackend.po;

import lombok.Data;

import javax.persistence.*;

/**
 * @program: comfy_hotel
 * @description: entity corresponding to table room_discount
 * @author: panyue
 * @date: 2022/9/20
 **/
@Data
@Entity
@Table(name = "room_discount")
public class RoomDiscount {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "room_discount_id")
    private Long roomDiscountId;

    @Column(name = "room_id")
    private Long roomId;

    @Column(name = "discount_id")
    private Long discountId;

}
