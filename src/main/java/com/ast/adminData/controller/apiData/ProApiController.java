package com.ast.adminData.controller.apiData;

import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Slf4j
@RestController
@RequestMapping("/dp/ingest/pro")
@RequiredArgsConstructor
public class ProApiController {

    private final RestService restService;

    //    dpIngestPro	/dp/ingest/pro		get
    @GetMapping(value = {""})
    public Map dpIngestAdaptorItIdChk() {

        Map<String, Object> DataList = restService.getApi("");

        return DataList;
    }

    //    dpIngestProDt		/{param1}	get
    @GetMapping(value = {"/{param1}"})
    public Map dpIngestProDt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/" + param1);

        return DataList;
    }

    //    dpIngestProIdChk		/id/check/{param1}	get
    @GetMapping(value = {"/id/check/{param1}"})
    public Map dpIngestProIdChk(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/id/check/" + param1);

        return DataList;
    }

    //    dpIngestProIdDelChk		/id/delete/check/	get
    @GetMapping(value = {"/id/delete/check"})
    public Map dpIngestProIdDelChk() {

        Map<String, Object> DataList = restService.getApi("/id/delete/check");

        return DataList;
    }

    //    dpIngestProSave		/save	post
    @PostMapping(value = {"/save"})
    public Map dpIngestProSave(@RequestBody Map<String, Object> params) {

        Map<String, Object> DataList = restService.postApi("/save", params);

        return DataList;
    }

    //    dpIngestProDel		/delete/{param1}	post
    @PostMapping(value = {"/delete/{param1}"})
    public Map dpIngestProDel(@PathVariable String param1, @RequestBody Map<String, Object> params) {

        Map<String, Object> DataList = restService.postApi("/delete/" + param1, params);

        return DataList;
    }

    //    dpIngestProUpdate		/update/{param1}	post
    @PostMapping(value = {"/update/{param1}"})
    public Map dpIngestProUpdate(@PathVariable String param1, @RequestBody Map<String, Object> params) {

        Map<String, Object> DataList = restService.postApi("/update/" + param1, params);

        return DataList;
    }
}
