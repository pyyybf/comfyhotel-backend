package com.pyyybf.comfyhotel.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.pyyybf.comfyhotel.po.Hotel;

/**
 * @program: comfy_hotel
 * @description: jpa repository of hotel
 * @author: panyue
 * @date: 2022/9/21
 **/
public interface HotelRepository extends JpaRepository<Hotel, Long> {
}
