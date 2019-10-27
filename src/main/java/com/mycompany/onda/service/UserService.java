/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.onda.service;

import com.mycompany.onda.model.User;

/**
 *
 * @author mac
 */
public interface UserService {
    
    void save(User user);
    
    User findByUsername(String username);
    
}
