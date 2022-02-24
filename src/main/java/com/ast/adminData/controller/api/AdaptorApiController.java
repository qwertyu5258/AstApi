package com.ast.adminData.controller.api;


import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.Map;


@Slf4j
@RestController
@RequestMapping("/dp/ingest/adaptor")
@RequiredArgsConstructor
public class AdaptorApiController {

    private final RestService restService;

    //    dpIngestMetaTbl	/dp/ingest/meta/tables	get
    @GetMapping(value = {""})
    public String dpIngestMetaTbl() {

        Map<String, Object> DataList = restService.getApi("");

        return DataList.toString();
    }

    //    dpIngestAdaptor	/dp/ingest/adaptor		get
    @GetMapping(value = {"/dp/ingest/adaptor"})
    public String dpIngestAdaptor() {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/adaptor");

        return DataList.toString();
    }

    //    dpIngestAdaptorSave		/save	post
    @PostMapping(value = {"/save"})
    public String dpIngestAdaptorSave() {

        Map<String, Object> DataList = restService.postApi("/save");

        return DataList.toString();
    }

    //    dpIngestAdaptorIdChk		/id/check/{param1}	get
    @GetMapping(value = {"/id/check/{param1}"})
    public String dpIngestAdaptorIdChk(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/id/check/" + param1);

        return DataList.toString();
    }

    //    dpIngestAdaptorItIdChk		/instance/id/check/{param1}	get
    @GetMapping(value = {"/instance/id/check/{param1}"})
    public String dpIngestAdaptorItIdChk(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/instance/id/check/" + param1);

        return DataList.toString();
    }

    //    dpIngestAdaptorDt		/{param1}	get
    @GetMapping(value = {"/{param1}"})
    public String dpIngestAdaptorDt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/" + param1);

        return DataList.toString();
    }

    //    dpIngestAdaptorIt		/instance/{param1}	get
    @GetMapping(value = {"/instance/{param1}"})
    public String dpIngestAdaptorIt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/instance/" + param1);

        return DataList.toString();
    }

    //    dpIngestAdaptorDel		/delete/{param1}	post
    @PostMapping(value = {"/delete/{param1}"})
    public String dpIngestAdaptorDel(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/delete/" + param1);

        return DataList.toString();
    }

    //    dpIngestAdaptorUpdate		/update/{param1}	post
    @PostMapping(value = {"/update/{param1}"})
    public String dpIngestAdaptorUpdate(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/update/" + param1);

        return DataList.toString();
    }

    //    dpIngestAdaptorItSave		/instance/save	post
    @PostMapping(value = {"/instance/save"})
    public String dpIngestAdaptorItSave() {

        Map<String, Object> DataList = restService.postApi("/instance/save");

        return DataList.toString();
    }

    //    dpIngestAdaptorItDel		/instance/delete/{param1}	post
    @PostMapping(value = {"/instance/delete/{param1}"})
    public String dpIngestAdaptorItDel(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/instance/delete/" + param1);

        return DataList.toString();
    }

    //    dpIngestAdaptorItUpdate		/instance/update/{param1}	post
    @PostMapping(value = {"/instance/update/{param1}"})
    public String dpIngestAdaptorItUpdate(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/instance/update/" + param1);

        return DataList.toString();
    }
// 중복 주소(from 엑셀API)
//    //    dpIngestAdaptorItDt		/instance2/{param1}	get
//    @GetMapping(value = {"/instance2/{param1}"})
//    public String dpIngestAdaptorItDt(@PathVariable String param1) {
//
//        Map<String, Object> DataList = restService.getApi("/instance/" + param1);
//
//        return DataList.toString();
//    }

    //    dpIngestAdaptorItPp		/instance/property/{param1}	get
    @GetMapping(value = {"/instance/property/{param1}"})
    public String dpIngestAdaptorItPp(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/instance/property/" + param1);

        return DataList.toString();
    }
}
