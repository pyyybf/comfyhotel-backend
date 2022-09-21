package com.example.comfyhotelbackend.po;

import lombok.Data;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * @program: comfy_hotel
 * @description: entity corresponding to table comment
 * @author: panyue
 * @date: 2022/9/20
 **/
@Data
@Entity
@Table(name = "comment")
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "comment_id")
    private Long commentId;

    @Column(name = "reservation_id")
    private Long reservationId;

    @Column(name = "rate")
    private Integer rate;

    @Column(name = "time")
    private Timestamp time;

}
