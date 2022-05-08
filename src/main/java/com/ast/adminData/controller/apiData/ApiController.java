package com.ast.adminData.controller.apiData;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@Slf4j
@RestController
@RequiredArgsConstructor
public class ApiController {

    @PostMapping("/test")
    public ResponseEntity<Map<String, Object>> testApi() {
        Map<String, Object> map = new HashMap<String,Object>();
        map.put("name", "jihye");
        map.put("id", "20171105");
        return ResponseEntity.ok(map);
    }

    @PostMapping("/testjsp")
    public String testApiTest() {
        Map<String, Object> map = new HashMap<String,Object>();
        map.put("name", "jihye");
        map.put("id", "20171105");
        return "hello";
    }
}
