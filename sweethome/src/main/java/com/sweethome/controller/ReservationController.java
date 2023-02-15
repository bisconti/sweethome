package com.sweethome.controller;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sweethome.domain.ReservationDTO;
import com.sweethome.service.ReservationService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/reserv/*")
public class ReservationController {
   @Setter(onMethod_ = @Autowired ) 
   private ReservationService service;
   
   @PostMapping("/checktime")
   public void checktime(@RequestParam("date") String date, Model model, HttpServletResponse resp) throws IOException {
      PrintWriter out = resp.getWriter();
      System.out.println("제발");
      System.out.println(date);
      boolean resv = service.getTimeList(date);
      out.print(resv);
//      model.addAttribute("Reservationlist",service.getTimeList(date));
      System.out.println("갓어?");
   }
   
   @PostMapping("/reservation")
   public String reservation(String name, String date, String time, String content) {
      if(service.reservation(name, date, time, content)) {
      }
      else {
      }
      return "home";
      }
}