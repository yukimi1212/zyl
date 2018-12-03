package com.zucc.smart.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {

    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public void helloworld(/*Map<String, Object> map*/) {
    	System.out.println("enter hello");
//    	map.put("name", "hello");
//    	map.put("data", "Milly");
//        return "Hello Milly";
    }
    
    @RequestMapping(value = {"/", "/view"})
    public String view(Map<String, Object> map) {
        map.put("name", "SpringBoot");
        map.put("date", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
        return "index";
    }

}
