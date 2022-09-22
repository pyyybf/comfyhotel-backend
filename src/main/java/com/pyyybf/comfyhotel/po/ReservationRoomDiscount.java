package com.pyyybf.comfyhotel.po;

import lombok.Data;

import javax.persistence.*;

/**
 * @program: comfy_hotel
 * @description: entity corresponding to table reservation_room_discount
 * @author: panyue
 * @date: 2022/9/20
 **/
@Data
@Entity
@Table(name = "reservation_room_discount")
public class ReservationRoomDiscount {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "reservation_room_discount_id")
    private Long reservationRoomDiscountId;

    @Column(name = "reservation_room_id")
    private Long reservationRoomId;

    @Column(name = "discount_id")
    private Long discountId;

}
