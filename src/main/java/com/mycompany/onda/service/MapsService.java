/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.onda.service;

import com.mycompany.onda.model.Maps;

/**
 *
 * @author mac
 */
public interface MapsService {
    

    Maps findTopByOrderByIdDesc();
    
}
