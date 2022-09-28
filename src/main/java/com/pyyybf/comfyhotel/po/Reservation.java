package com.pyyybf.comfyhotel.po;

import lombok.Data;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Timestamp;

/**
 * @program: comfy_hotel
 * @description: entity corresponding to table reservation
 * @author: panyue
 * @date: 2022/9/20
 **/
@Data
@Entity
@Table(name = "reservation")
public class Reservation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "reservation_id")
    private Long reservationId;

    @Column(name = "user_id")
    private Long userId;

    @Column(name = "hotel_id")
    private Long hotelId;

    @Column(name = "time")
    private Timestamp time;

    @Column(name = "check_in_date")
    private Date checkInDate;

    @Column(name = "check_out_date")
    private Date checkOutDate;

    @Column(name = "tax")
    private Double tax;

    @Column(name = "destination")
    private Double destination;

    @Column(name = "total_cost")
    private Double totalCost;

}
