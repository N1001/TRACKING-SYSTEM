/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.onda.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


/**
 *
 * @author mac
 */
@Controller
public class WelcomController {
    
    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String welcome(final ModelMap pModel,
            @RequestParam(value="WELCOME", required = false) final String aWelcome) {
        pModel.addAttribute("WELCOME", aWelcome);
        return "welcome";
    }
    
    
    @RequestMapping(value = "/redirect", method = RequestMethod.GET)
   public String redirect() {
      return "login";
   }

}
