package com.sweethome.domain;


import lombok.Data;

@Data
public class ReservationDTO {
   private int reservnum;
   private String username;
   private String resvdate;
   private String resvtime;
   private String resvcontents;
}