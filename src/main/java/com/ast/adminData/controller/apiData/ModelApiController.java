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
    public String dpIngestDataModels() {

        Map<String, Object> DataList = restService.getApi("");

        return DataList.toString();
    }

    //    dpIngestDataModelsDt		/{param1}	get
    @GetMapping(value = {"/{param1}"})
    public String dpIngestDataModelsDt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/" + param1);

        return DataList.toString();
    }

    //    dpIngestDataModelsIdChk		/id/check/{param1}	get
    @GetMapping(value = {"/id/check/{param1}"})
    public String dpIngestDataModelsIdChk(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/id/check/" + param1);

        return DataList.toString();
    }

    //    dpIngestDataModelsMeta		/meta/{param1}	get
    @GetMapping(value = {"/meta/{param1}"})
    public String dpIngestDataModelsMeta(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/meta/" + param1);

        return DataList.toString();
    }

    //    dpIngestDataModelsPp		/property/{param1}	get
    @GetMapping(value = {"/property/{param1}"})
    public String dpIngestDataModelsPp(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/property/" + param1);

        return DataList.toString();
    }

    //    dpIngestDataModelsSave		/save	post
    @GetMapping(value = {"/save"})
    public String dpIngestDataModelsSave() {

        Map<String, Object> DataList = restService.postApi("/save");

        return DataList.toString();
    }

    //    dpIngestDataModelsUpdate		/update/{param1}	post ??????
    @GetMapping(value = {"/update/{param1}"})
    public String dpIngestDataModelsUpdate(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/update/" + param1);

        return DataList.toString();
    }

    //    dpIngestDataModelsDelChk		/delete/check/{param1}	get
    @GetMapping(value = {"/delete/check/{param1}"})
    public String dpIngestDataModelsDelChk(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/delete/check/" + param1);

        return DataList.toString();
    }

    //    dpIngestDataModelsDel		/delete/{param1}	post
    @GetMapping(value = {"/delete/{param1}"})
    public String dpIngestDataModelsDel(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/delete/" + param1);

        return DataList.toString();
    }

//    //    dpIngestDataModelsUpdate	/update/{param1} post
//    @PostMapping(value = {"/update/{param1}"})
//    public String dpIngestDataModelsUpdate2(@PathVariable String param1) {
//
//        Map<String, Object> DataList = restService.postApi("/update/" + param1);
//
//        return DataList.toString();
//    }


}
