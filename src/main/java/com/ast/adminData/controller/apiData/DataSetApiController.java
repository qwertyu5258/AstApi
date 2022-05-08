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
    @PostMapping(value = {"/dataset"})
    public Map dpIngestMetaDset() {

        Map<String, Object> DataList = restService.postApi("/dataset");

        return DataList;
    }

    //    dpIngestMetaDsetDt		/dataset/{param1}	get
    @PostMapping(value = {"/detail/{param1}"})
    public Map dpIngestMetaDsetDt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/detail/" + param1);

        return DataList;
    }

    //    dpIngestMetaDsetUpdate		/dataset/update/{param1}	post
    @PostMapping(value = {"/dataset/update/{param1}"})
    public Map dpIngestMetaDsetUpdate(@PathVariable String param1, @RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dataset/update/{param1}" + param1, params);

        return DataList;
    }

    //    dpIngestMetaDsetDel		/dataset/delete/{param1}	post
    @PostMapping(value = {"/dataset/delete/{param1}"})
    public Map dpIngestMetaDsetDel(@PathVariable String param1, @RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dataset/delete/" + param1, params);

        return DataList;
    }


}
