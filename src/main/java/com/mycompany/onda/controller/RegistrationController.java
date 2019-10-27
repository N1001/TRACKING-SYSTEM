/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.onda.controller;


import com.mycompany.onda.model.User;
import com.mycompany.onda.service.UserService;
import com.mycompany.onda.validator.UserValidator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;



/**
 *
 * @author mac
 */
@Controller
public class RegistrationController {
    
   
    
    @RequestMapping(value = "/registration",method = RequestMethod.GET)
    public String mRegistration(final ModelMap pModel) {
        pModel.addAttribute("REGISTRATION", new User());
        return "registration";
    }
    
    
    
    
    
    

}
