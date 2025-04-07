package com.sonnguyen.base.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/test")

public class TestController {
    @PostMapping
    public InstantWrapper ok(@RequestBody InstantWrapper instant){
        return instant;
    }
}