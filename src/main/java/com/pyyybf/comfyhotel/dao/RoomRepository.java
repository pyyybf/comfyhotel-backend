package com.pyyybf.comfyhotel.dao;

import com.pyyybf.comfyhotel.po.Hotel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 * @program: comfy_hotel
 * @description: jpa repository about table room
 * @author: panyue
 * @date: 2022/9/27
 **/
public interface RoomRepository extends JpaRepository<Hotel, Long> {

    @Query("SELECT MIN(r.price) FROM Room r WHERE r.hotelId=:hotelId")
    Double getMinPriceByHotelId(Long hotelId);

}
