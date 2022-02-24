package com.ast.adminData.common;

import com.ast.adminData.configProperties.ConfigProperties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import java.util.Map;

@Component
public class RestService {

    @Autowired
    private ConfigProperties configProperties;

    public Map<String, Object> getApi(final String path) {

        RestTemplate restTemplate = new RestTemplate();

        final ResponseEntity<Map<String, Object>> response = restTemplate.exchange(
                configProperties.getUrl() + ":" + configProperties.getPort() + path ,
                HttpMethod.GET,
                null,
                new ParameterizedTypeReference<Map<String, Object>>(){});

        Map<String, Object> dataList = response.getBody();
        return dataList;
    }

    public Map<String, Object> postApi(final String path) {

        RestTemplate restTemplate = new RestTemplate();

        final ResponseEntity<Map<String, Object>> response = restTemplate.exchange(
                configProperties.getUrl() + ":" + configProperties.getPort() + path ,
                HttpMethod.POST,
                null,
                new ParameterizedTypeReference<Map<String, Object>>(){});

        Map<String, Object> dataList = response.getBody();
        return dataList;
    }
}
