package com.sweethome.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sweethome.mapper.ReservationMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ReservationServiceImpl implements ReservationService {

   @Setter(onMethod_ = @Autowired)
   private ReservationMapper mapper;

   @Override
   public boolean getTimeList(String date) {
      System.out.println("옴?");
      System.out.println(mapper.getTimeList(date));
      return mapper.getTimeList(date) == 1;
   }

   @Override
   public boolean reservation(String name, String date, String time, String content) {

      return mapper.reservation(name, date, time, content) == 1;
   }

}