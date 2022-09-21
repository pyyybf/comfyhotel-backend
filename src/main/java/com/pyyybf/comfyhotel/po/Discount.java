package com.pyyybf.comfyhotel.po;

import lombok.Data;

import javax.persistence.*;
import java.sql.Date;

/**
 * @program: comfy_hotel
 * @description: entity corresponding to table discount
 * @author: panyue
 * @date: 2022/9/20
 **/
@Data
@Entity
@Table(name = "discount")
public class Discount {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "discount_id")
    private Long discountId;

    @Column(name = "discounts")
    private Integer discounts;

    @Column(name = "start_date")
    private Date startDate;

    @Column(name = "end_date")
    private Date endDate;

}
