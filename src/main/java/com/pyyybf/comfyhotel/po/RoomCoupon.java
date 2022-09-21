package com.pyyybf.comfyhotel.po;

import lombok.Data;

import javax.persistence.*;

/**
 * @program: comfy_hotel
 * @description: entity corresponding to table room_coupon
 * @author: panyue
 * @date: 2022/9/20
 **/
@Data
@Entity
@Table(name = "room_coupon")
public class RoomCoupon {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "room_coupon_id")
    private Long roomCouponId;

    @Column(name = "room_id")
    private Long roomId;

    @Column(name = "coupon_id")
    private Long couponId;

}
