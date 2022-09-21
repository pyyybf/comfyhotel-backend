package com.pyyybf.comfyhotel.po;

import lombok.Data;

import javax.persistence.*;

/**
 * @program: comfy_hotel
 * @description: entity corresponding to table manager
 * @author: panyue
 * @date: 2022/9/20
 **/
@Data
@Entity
@Table(name = "manager")
public class Manager {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "manager_id")
    private Long managerId;

    @Column(name = "username")
    private String username;

    @Column(name = "hotel_id")
    private Long hotelId;

    @Column(name = "password")
    private String password;

    @Column(name = "role")
    private Integer role;

}
