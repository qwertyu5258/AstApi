package com.ast.adminData.controller.apiData;


import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Slf4j
@RestController
@RequestMapping("/dp/ingest/meta")
@RequiredArgsConstructor
public class DataSetApiController {

    private final RestService restService;

    //    dpIngestMetaDset		/dataset	get
    @GetMapping(value = {"/dataset"})
    public String dpIngestMetaDset() {

        Map<String, Object> DataList = restService.getApi("/dataset");

        return DataList.toString();
    }

    //    dpIngestMetaDsetDt		/dataset/{param1}	get
    @GetMapping(value = {"/detail/{param1}"})
    public String dpIngestMetaDsetDt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/detail/" + param1);

        return DataList.toString();
    }

    //    dpIngestMetaDsetUpdate		/dataset/update/{param1}	post
    @PostMapping(value = {"/dataset/update/{param1}"})
    public String dpIngestMetaDsetUpdate(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/dataset/update/{param1}" + param1);

        return DataList.toString();
    }

    //    dpIngestMetaDsetDel		/dataset/delete/{param1}	post
    @PostMapping(value = {"/dataset/delete/{param1}"})
    public String dpIngestMetaDsetDel(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/dataset/delete/" + param1);

        return DataList.toString();
    }


}
