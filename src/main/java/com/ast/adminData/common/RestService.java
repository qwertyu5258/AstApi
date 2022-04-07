package com.ast.adminData.common;

import com.ast.adminData.configProperties.ConfigProperties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.*;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import java.util.HashMap;
import java.util.Map;

@Component
public class RestService {

    @Autowired
    private ConfigProperties configProperties;

    public Map<String, Object> getApi(final String path) {

        RestTemplate restTemplate = new RestTemplate();

        final ResponseEntity<Map<String, Object>> response = restTemplate.exchange(
                "http://" + configProperties.getUrl() + ":" + configProperties.getPort() + path ,
                HttpMethod.GET,
                null,
                new ParameterizedTypeReference<Map<String, Object>>(){});

        Map<String, Object> dataList = response.getBody();
        return dataList;
    }

    public Map<String, Object> postApi(final String path, Map<String,Object> params) {

        RestTemplate restTemplate = new RestTemplate();

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);

        HttpEntity<Map<String,Object>> entity = new HttpEntity<Map<String,Object>>(params, headers);

//        Map req_payload = new HashMap();
//        req_payload.put("name", "piyush");

        final ResponseEntity<Map<String, Object>> response = restTemplate.exchange(
                "http://" + configProperties.getUrl() + ":" + configProperties.getPort() + path ,
                HttpMethod.POST,
                entity,
                new ParameterizedTypeReference<Map<String, Object>>(){});

        Map<String, Object> dataList = response.getBody();
        return dataList;
    }

    public Map<String, Object> postApi(final String path) {

        RestTemplate restTemplate = new RestTemplate();

        final ResponseEntity<Map<String, Object>> response = restTemplate.exchange(
                "http://" + configProperties.getUrl() + ":" + configProperties.getPort() + path ,
                HttpMethod.POST,
                null,
                new ParameterizedTypeReference<Map<String, Object>>(){});

        Map<String, Object> dataList = response.getBody();
        return dataList;
    }
}
