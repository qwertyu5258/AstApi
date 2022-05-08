package com.ast.adminData.controller.apiData;

import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Slf4j
@RestController
@RequestMapping("/dp/ingest/errors")
@RequiredArgsConstructor
public class ErrorApiContoller {

    private final RestService restService;

    //    dpIngestErrors	/		get
    @PostMapping(value = {""})
    public String dpIngestErrors() {

        Map<String, Object> DataList = restService.postApi("");

        return DataList.toString();
    }

    //    dpIngestErrorsDt	/{param1}	get
    @PostMapping(value = {"/{param1}"})
    public String dpIngestErrorsDt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/" + param1);

        return DataList.toString();
    }

    //    dpIngestErrorsInstant	/instant	post
    @PostMapping(value = {"/instant"})
    public String dpIngestErrorsInstant(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/instant" , params);

        return DataList.toString();

    }
}