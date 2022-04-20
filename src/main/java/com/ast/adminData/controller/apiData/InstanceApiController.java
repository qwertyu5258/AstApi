package com.ast.adminData.controller.apiData;

import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Slf4j
@RestController
@RequestMapping("/dp/ingest/instance")
@RequiredArgsConstructor
public class InstanceApiController {

    private final RestService restService;

    //    dpIngestAdaptorIdChk		/id/check/{param1}	get
    @GetMapping(value = {"/id/check/{param1}"})
    public Map dpIngestAdaptorIdChk(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/id/check/" + param1);

        return DataList.toString();
    }

    //    dpIngestItSearch	/search	get
    @GetMapping(value = {"/search"})
    public Map dpIngestItSearch() {

        Map<String, Object> DataList = restService.getApi("/search");

        return DataList.toString();
    }

    //    dpIngestItPpDelChk		/property/delete/check	get
    @GetMapping(value = {"/property/delete/check"})
    public Map dpIngestItPpDelChk() {

        Map<String, Object> DataList = restService.getApi("/property/delete/check");

        return DataList.toString();
    }

    //    dpIngestItPpInfoDelChk		/property/info/delete/check	get
    @GetMapping(value = {"/property/info/delete/check"})
    public Map dpIngestItPpInfoDelChk() {

        Map<String, Object> DataList = restService.getApi("/property/info/delete/check");

        return DataList.toString();
    }

    //    dpIngestItPpGpDt		/property/{param1}/{param2}	get
    @GetMapping(value = {"/property/{param1}/{param2}"})
    public Map dpIngestItPpGpDt(@PathVariable String param1, @PathVariable String param2) {

        Map<String, Object> DataList = restService.getApi("/property/" + param1 + "/" + param2);

        return DataList.toString();
    }

    //    dpIngestItPpDelGpDt		/property/delete/{param1}/{param1}	post
    @PostMapping(value = {"/property/delete/{param1}/{param2}"})
    public Map dpIngestItPpDelGpDt(@PathVariable String param1, @PathVariable String param2) {

        Map<String, Object> DataList = restService.postApi("/property/delete/" + param1 + "/" + param2);

        return DataList.toString();
    }

    //    dpIngestItPpSaveGpDt		/property/save/{param1}/{param1}	post
    @PostMapping(value = {"/property/save/{param1}/{param2}"})
    public Map dpIngestItPpSaveGpDt(@PathVariable String param1, @PathVariable String param2) {

        Map<String, Object> DataList = restService.postApi("/property/save/" + param1 + "/" + param2);

        return DataList.toString();
    }

    //    dpIngestItPpInfoDelGpDt		/property/info/delete/{param1}/{param1}	post
    @PostMapping(value = {"/property/info/delete/{param1}/{param2}"})
    public Map dpIngestItPpInfoDelGpDt(@PathVariable String param1, @PathVariable String param2) {

        Map<String, Object> DataList = restService.postApi("/property/info/delete/" + param1 + "/" + param2);

        return DataList.toString();
    }

    //    dpIngestItPpInfoSaveGpDt		/property/info/save/{param1}/{param1}	post
    @PostMapping(value = {"/property/info/save/{param1}/{param2}"})
    public Map dpIngestItPpInfoSaveGpDt(@PathVariable String param1, @PathVariable String param2) {

        Map<String, Object> DataList = restService.postApi("/property/info/save/" + param1 + "/" + param2);

        return DataList.toString();
    }

    //    dpIngestItPp	/instance/property/{param1}/{param2}	get
    @GetMapping(value = {"/instance/property/{param1}/{param2}"})
    public Map dpIngestItPp(@PathVariable String param1, @PathVariable String param2) {

        Map<String, Object> DataList = restService.getApi("/instance/property/" + param1 + "/" + param2);

        return DataList.toString();
    }
}
