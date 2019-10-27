/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.onda.controller;


import com.mycompany.onda.model.Maps;
import com.mycompany.onda.service.MapsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.beans.factory.annotation.Autowired;


/**
 *
 * @author mac
 */
@Controller
public class MapsController {
    
    
    
    @RequestMapping(value = "/maps",method = RequestMethod.GET)
    public String mMaps(final ModelMap pModel,
            @RequestParam(value="MAPS", required = false) String aMaps) {
        pModel.addAttribute("MAPS", aMaps);
        return "maps";
    }
    
    
    

}
