/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.onda.service;

import com.mycompany.onda.model.Maps;
import com.mycompany.onda.repository.MapsRepository;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author mac
 */
public class MapsServiceImpl implements MapsService{
    
    @Autowired
    private MapsRepository mapsRepository;

    

    @Override
    public Maps findTopByOrderByIdDesc() {
        return mapsRepository.findTopByOrderByIdDesc();
    }

   
    
}
