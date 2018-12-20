package com.zucc.smart.controller;


import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.zucc.smart.domain.MyProperties1;
import com.zucc.smart.domain.User;
import com.zucc.smart.service.UserService;

import net.sf.json.JSONObject;

import org.springframework.web.bind.annotation.RequestBody;


@RestController
@RequestMapping("/login")
public class LoginController {

    private static final Logger log = LoggerFactory.getLogger(LoginController.class);
    
    @Autowired
    UserService userService;

    
/*    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public Map<String,Object> loginUser(String user_id, String user_pwd) {
        log.info("/login/user/" + user_id);
    	Map<String,Object> map = new HashMap<String,Object>();
    	String user_name = userService.checkUser(user_id, user_pwd);
        map.put("user_name", user_name);
        return map;
    }*/
    
    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public Map<String,Object> loginUser(String user_id, String user_pwd) {
        log.info("/login/user/" + user_id);
    	Map<String,Object> map = new HashMap<String,Object>();
    	User user = userService.checkUser(user_id, user_pwd);
        map.put("user", user);
        return map;
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public Map<String,Object> addUser (@RequestParam("user_id") String user_id, @RequestParam("user_name") String user_name,
    		@RequestParam("user_pwd") String user_pwd, @RequestParam("user_gender") String user_gender,
    		@RequestParam("user_age") String user_age, @RequestParam("user_phone") String user_phone) {
    	Map<String,Object> map = new HashMap<String,Object>();
        log.info("/login/register/" + user_id);
        User adduser = new User();
        adduser.setUser_id(user_id);
        adduser.setUser_name(user_name);
        adduser.setUser_pwd(user_pwd);
        adduser.setUser_gender(user_gender);
        if(user_age != null)
        	adduser.setUser_age(Integer.parseInt(user_age));
        adduser.setUser_phone(user_phone);
    	boolean flag = userService.addUser(adduser);
    	User user = userService.getUserById(user_id);
        map.put("user", user);
        return map;
    }
   
}