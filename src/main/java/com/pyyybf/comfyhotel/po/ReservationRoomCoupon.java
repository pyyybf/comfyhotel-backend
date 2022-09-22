package com.pyyybf.comfyhotel.po;

import lombok.Data;

import javax.persistence.*;

/**
 * @program: comfy_hotel
 * @description: entity corresponding to table reservation_room_coupon
 * @author: panyue
 * @date: 2022/9/20
 **/
@Data
@Entity
@Table(name = "reservation_room_coupon")
public class ReservationRoomCoupon {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "reservation_room_coupon_id")
    private Long reservationRoomCouponId;

    @Column(name = "reservation_room_id")
    private Long reservationRoomId;

    @Column(name = "coupon_id")
    private Long couponId;

}
