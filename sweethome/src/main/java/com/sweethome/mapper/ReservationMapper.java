package com.sweethome.mapper;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;


@Mapper
public interface ReservationMapper {
   int getTimeList(String date);
   int reservation(@Param("name")String name, @Param("date")String date, @Param("time")String time, @Param("content")String content);
}