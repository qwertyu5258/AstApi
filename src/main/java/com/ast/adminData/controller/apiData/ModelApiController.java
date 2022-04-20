package com.ast.adminData.controller.apiData;

import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Slf4j
@RestController
@RequestMapping("/dp/ingest/data/models")
@RequiredArgsConstructor
public class ModelApiController {

    private RestService restService;

    //    dpIngestDataModels			get
    @GetMapping(value = {""})
    public Map dpIngestDataModels() {

        Map<String, Object> DataList = restService.getApi("");

        return DataList;
    }

    //    dpIngestDataModelsDt		/{param1}	get
    @GetMapping(value = {"/{param1}"})
    public Map dpIngestDataModelsDt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/" + param1);

        return DataList;
    }

    //    dpIngestDataModelsIdChk		/id/check/{param1}	get
    @GetMapping(value = {"/id/check/{param1}"})
    public Map dpIngestDataModelsIdChk(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/id/check/" + param1);

        return DataList;
    }

    //    dpIngestDataModelsMeta		/meta/{param1}	get
    @GetMapping(value = {"/meta/{param1}"})
    public Map dpIngestDataModelsMeta(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/meta/" + param1);

        return DataList;
    }

    //    dpIngestDataModelsPp		/property/{param1}	get
    @GetMapping(value = {"/property/{param1}"})
    public Map dpIngestDataModelsPp(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/property/" + param1);

        return DataList;
    }

    //    dpIngestDataModelsSave		/save	post
    @GetMapping(value = {"/save"})
    public Map dpIngestDataModelsSave() {

        Map<String, Object> DataList = restService.postApi("/save");

        return DataList;
    }

    //    dpIngestDataModelsUpdate		/update/{param1}	post 중복
    @GetMapping(value = {"/update/{param1}"})
    public Map dpIngestDataModelsUpdate(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/update/" + param1);

        return DataList;
    }

    //    dpIngestDataModelsDelChk		/delete/check/{param1}	get
    @GetMapping(value = {"/delete/check/{param1}"})
    public Map dpIngestDataModelsDelChk(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/delete/check/" + param1);

        return DataList;
    }

    //    dpIngestDataModelsDel		/delete/{param1}	post
    @GetMapping(value = {"/delete/{param1}"})
    public Map dpIngestDataModelsDel(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/delete/" + param1);

        return DataList;
    }

//    //    dpIngestDataModelsUpdate	/update/{param1} post
//    @PostMapping(value = {"/update/{param1}"})
//    public Map dpIngestDataModelsUpdate2(@PathVariable String param1) {
//
//        Map<String, Object> DataList = restService.postApi("/update/" + param1);
//
//        return DataList;
//    }


}
