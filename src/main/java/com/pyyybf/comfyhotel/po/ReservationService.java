package com.pyyybf.comfyhotel.po;

import lombok.Data;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * @program: comfy_hotel
 * @description: entity corresponding to table reservation_service
 * @author: panyue
 * @date: 2022/9/20
 **/
@Data
@Entity
@Table(name = "reservation_service")
public class ReservationService {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "reservation_service_id")
    private Long reservationServiceId;

    @Column(name = "reservation_id")
    private Long reservationId;

    @Column(name = "service_id")
    private Long serviceId;

    @Column(name = "time")
    private Timestamp time;

}
