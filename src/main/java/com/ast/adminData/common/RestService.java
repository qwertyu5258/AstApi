package com.ast.adminData.common;

import com.ast.adminData.configProperties.ConfigProperties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import java.util.Map;


public class RestService {

    @Autowired
    private static ConfigProperties configProperties;

    public static Map<String, Object> getApi(final String path) {

        RestTemplate restTemplate = new RestTemplate();

        final ResponseEntity<Map<String, Object>> response = restTemplate.exchange(
                configProperties.getUrl() + ":" + configProperties.getPort() + path ,
                HttpMethod.GET,
                null,
                new ParameterizedTypeReference<Map<String, Object>>(){});

        Map<String, Object> dataList = response.getBody();
        return dataList;
    }
}
