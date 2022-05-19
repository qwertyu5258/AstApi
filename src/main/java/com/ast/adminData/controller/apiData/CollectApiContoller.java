package com.ast.adminData.controller.apiData;

import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@Slf4j
@RestController
@RequiredArgsConstructor
public class CollectApiContoller {

    private final RestService restService;

    //    dpIngestErrors	/		get
    @PostMapping(value = {"/dp/ingest/errors"})
    public Map dpIngestErrors(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/errors", params);

        return DataList;
    }

    //    dpIngestErrorsDt	/{param1}	get
    @PostMapping(value = {"/dp/ingest/errors/{param1}"})
    public Map dpIngestErrorsDt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/errors" + param1);

        return DataList;
    }

    //    dpIngestErrorsInstant	/instant	post
    @PostMapping(value = {"/dp/ingest/errors/instant"})
    public Map dpIngestErrorsInstant(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/errors/instant" , params);

        return DataList;

    }
    @PostMapping(value = {"/dp/ingest/errors/detail"})
    public Map dp_ingest_errors_dt(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/errors/detail" , params);

        return DataList;

    }
}