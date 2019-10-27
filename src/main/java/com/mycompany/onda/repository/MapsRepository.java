/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.onda.repository;

import com.mycompany.onda.model.Maps;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author mac
 */
public interface MapsRepository extends JpaRepository <Maps ,Long>{
    
    Maps findTopByOrderByIdDesc();
    
}
