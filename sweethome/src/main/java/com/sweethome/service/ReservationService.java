package com.sweethome.service;


public interface ReservationService {

   boolean getTimeList(String date);

   boolean reservation(String name, String date, String time, String content);

}