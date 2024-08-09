package com.example.demo;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class VersionController {
    @RequestMapping(method = RequestMethod.GET, value = "/version")
    public ResponseEntity<String> getVersion(){
        return ResponseEntity.ok("v3");
    }
}
