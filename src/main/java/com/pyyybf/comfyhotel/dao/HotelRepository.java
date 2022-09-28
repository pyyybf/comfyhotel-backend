package com.pyyybf.comfyhotel.dao;

import com.pyyybf.comfyhotel.po.Hotel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @program: comfy_hotel
 * @description: jpa repository of hotel
 * @author: panyue
 * @date: 2022/9/21
 **/
public interface HotelRepository extends JpaRepository<Hotel, Long> {

    @Query(value = "SELECT h.* " +
            "FROM Hotel h " +
            "LEFT JOIN Reservation re ON h.hotel_id=re.hotel_id " +
            "WHERE re.time BETWEEN :startDate AND :endDate " +
            "GROUP BY h.hotel_id " +
            "ORDER BY COUNT(h.hotel_id) DESC " +
            "LIMIT 2",
            nativeQuery = true)
    List<Hotel> getTop2HotelByReservationNum(String startDate, String endDate);

}
