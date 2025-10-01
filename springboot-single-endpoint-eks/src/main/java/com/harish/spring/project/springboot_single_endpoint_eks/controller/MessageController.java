package com.harish.spring.project.springboot_single_endpoint_eks.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MessageController {

    @GetMapping("/message")
    public String message(){
        return "Hello World";
    }
}
