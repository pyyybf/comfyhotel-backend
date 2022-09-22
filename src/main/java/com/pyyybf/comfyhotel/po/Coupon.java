package com.pyyybf.comfyhotel.po;

import lombok.Data;

import javax.persistence.*;
import java.sql.Date;

/**
 * @program: comfy_hotel
 * @description: entity corresponding to table coupon
 * @author: panyue
 * @date: 2022/9/20
 **/
@Data
@Entity
@Table(name = "coupon")
public class Coupon {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "coupon_id")
    private Long couponId;

    @Column(name = "name")
    private String name;

    @Column(name = "type")
    private Integer type;

    @Column(name = "start_date")
    private Date startDate;

    @Column(name = "end_date")
    private Date endDate;

    @Column(name = "status")
    private Integer status;

    @Column(name = "target_money")
    private Double targetMoney;

    @Column(name = "rebate")
    private Double rebate;

    @Column(name = "discounts")
    private Integer discounts;

}
