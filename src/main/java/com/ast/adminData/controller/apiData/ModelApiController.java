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
    @PostMapping(value = {""})
    public Map dpIngestDataModels() {

        Map<String, Object> DataList = restService.postApi("");

        return DataList;
    }

    //    dpIngestDataModelsDt		/{param1}	get
    @PostMapping(value = {"/{param1}"})
    public Map dpIngestDataModelsDt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/" + param1);

        return DataList;
    }

    //    dpIngestDataModelsIdChk		/id/check/{param1}	get
    @PostMapping(value = {"/id/check/{param1}"})
    public Map dpIngestDataModelsIdChk(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/id/check/" + param1);

        return DataList;
    }

    //    dpIngestDataModelsMeta		/meta/{param1}	get
    @PostMapping(value = {"/meta/{param1}"})
    public Map dpIngestDataModelsMeta(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/meta/" + param1);

        return DataList;
    }

    //    dpIngestDataModelsPp		/property/{param1}	get
    @PostMapping(value = {"/property/{param1}"})
    public Map dpIngestDataModelsPp(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/property/" + param1);

        return DataList;
    }

    //    dpIngestDataModelsSave		/save	post
    @PostMapping(value = {"/save"})
    public Map dpIngestDataModelsSave() {

        Map<String, Object> DataList = restService.postApi("/save");

        return DataList;
    }

    //    dpIngestDataModelsUpdate		/update/{param1}	post 중복
    @PostMapping(value = {"/update/{param1}"})
    public Map dpIngestDataModelsUpdate(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/update/" + param1);

        return DataList;
    }

    //    dpIngestDataModelsDelChk		/delete/check/{param1}	get
    @PostMapping(value = {"/delete/check/{param1}"})
    public Map dpIngestDataModelsDelChk(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/delete/check/" + param1);

        return DataList;
    }

    //    dpIngestDataModelsDel		/delete/{param1}	post
    @PostMapping(value = {"/delete/{param1}"})
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
