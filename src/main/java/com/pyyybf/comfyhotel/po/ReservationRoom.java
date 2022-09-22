package com.pyyybf.comfyhotel.po;

import lombok.Data;

import javax.persistence.*;

/**
 * @program: comfy_hotel
 * @description: entity corresponding to table reservation_room
 * @author: panyue
 * @date: 2022/9/20
 **/@Data
@Entity
@Table(name = "reservation_room")
public class ReservationRoom {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "reservation_room_id")
    private Long reservationRoomId;

    @Column(name = "reservation_id")
    private Long reservationId;

    @Column(name = "room_id")
    private Long roomId;

    @Column(name = "number")
    private Integer number;

    @Column(name = "unit_price")
    private Double unitPrice;

}
