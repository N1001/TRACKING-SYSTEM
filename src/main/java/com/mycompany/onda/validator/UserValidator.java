/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.onda.validator;

import com.mycompany.onda.model.User;
import com.mycompany.onda.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
/**
 *
 * @author mac
 */
public class UserValidator implements Validator{
    
    @Autowired
    private UserService userService;

    @Override
    public boolean supports(Class<?> type) {
        
        return User.class.equals(type);

    }

    @Override
    public void validate(Object o, Errors errors) {
        
        User user = (User) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "NotEmpty");
        if (user.getUsername().length() < 6 || user.getUsername().length() > 32) {
            errors.rejectValue("username", "Size.REGISTRATION.username");
        }
        if (userService.findByUsername(user.getUsername()) != null) {
            errors.rejectValue("username", "Duplicate.REGISTRATION.username");
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
        if (user.getPassword().length() < 8 || user.getPassword().length() > 32) {
            errors.rejectValue("password", "Size.REGISTRATION.password");
        }

        /*if (!user.getPass_confirm().equals(user.getPassword())) {
            errors.rejectValue("passwordConfirm", "Diff.REGISTRATION.passwordConfirm");
        }*/

    }
    
}
