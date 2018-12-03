package com.zucc.smart.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.zucc.smart.domain.MyProperties1;
import com.zucc.smart.domain.MyProperties2;

import org.springframework.web.bind.annotation.RequestBody;

@RequestMapping("/properties")
@RestController
public class PropertiesController {

    private static final Logger log = LoggerFactory.getLogger(PropertiesController.class);

    private final MyProperties1 myProperties1;
    private final MyProperties2 myProperties2;

    @Autowired
    public PropertiesController(MyProperties1 myProperties1, MyProperties2 myProperties2) {
        this.myProperties1 = myProperties1;
        this.myProperties2 = myProperties2;
    }

    @GetMapping("/1/{name}")
    public String myProperties1(@PathVariable("name") String name) {
        log.info("=================================================================================================");
        log.info(myProperties1.toString());
        log.info("=================================================================================================");
        String result = name + "\r\n" + myProperties1.toString();
        return result;
    }
    
    @GetMapping("/2")
    public String myProperties2(@RequestParam("id") int id, @RequestParam("name") String name) {
        log.info("=================================================================================================");
        log.info(myProperties2.toString());
        log.info("=================================================================================================");
        String result = id + "+" + name + "\n" + myProperties2.toString();
        return result;
    }

    @PostMapping("/2")
    public boolean myProperties3(@RequestBody MyProperties1 myProperties1) {
        log.info("=================================================================================================");
        log.info(myProperties2.toString());
        log.info("=================================================================================================");
        System.out.println(myProperties1.toString());;
        return true;
    }
}