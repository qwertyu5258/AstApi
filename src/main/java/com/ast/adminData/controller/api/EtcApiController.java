package com.ast.adminData.controller.api;

import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Slf4j
@RestController
@RequiredArgsConstructor
public class EtcApiController {

    private final RestService restService;

    //    dpIngestMetaTblUpdate	/dp/ingest/meta/table/update/{param1}		post
    @PostMapping(value = {"/dp/ingest/meta/table/update/{param1}"})
    public String dpIngestMetaTblUpdate(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/table/update/" + param1);

        return DataList.toString();
    }

    //    dpIngestAdaptorItPre	/dp/ingest/adaptor/instance/pre		get
    @GetMapping(value = {"/dp/ingest/adaptor/instance/pre"})
    public String dpIngestAdaptorItPre() {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/adaptor/instance/pre");

        return DataList.toString();
    }
}
