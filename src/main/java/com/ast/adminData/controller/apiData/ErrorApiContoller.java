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
    @GetMapping(value = {""})
    public String dpIngestErrors() {

        Map<String, Object> DataList = restService.getApi("");

        return DataList.toString();
    }

    //    dpIngestErrorsDt	/{param1}	get
    @GetMapping(value = {"/{param1}"})
    public String dpIngestErrorsDt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/" + param1);

        return DataList.toString();
    }

    //    dpIngestErrorsInstant	/instant	post
    @PostMapping(value = {"/instant"})
    public String dpIngestErrorsInstant() {

        Map<String, Object> DataList = restService.postApi("/instant");

        return DataList.toString();

    }
}