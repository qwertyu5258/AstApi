package com.ast.adminData.controller.apiData;

import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
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

        return DataList;
    }

    //    dpIngestItSearch	/search	get
    @GetMapping(value = {"/search"})
    public Map dpIngestItSearch(HttpServletRequest request) throws UnsupportedEncodingException {

//        Map<String, Object> DataList = restService.getApi("/search");
        Map<String, Object> DataList = restService.getApi(request.getServletPath() + "?" + URLDecoder.decode(request.getQueryString(), "UTF-8"));

        return DataList;
    }

    //    dpIngestItPpDelChk		/property/delete/check	get
    @GetMapping(value = {"/property/delete/check"})
    public Map dpIngestItPpDelChk(HttpServletRequest request) throws UnsupportedEncodingException {

        Map<String, Object> DataList = restService.getApi(request.getServletPath() + "?" + URLDecoder.decode(request.getQueryString(), "UTF-8"));

        return DataList;
    }

    //    dpIngestItPpInfoDelChk		/property/info/delete/check	get
    @GetMapping(value = {"/property/info/delete/check"})
    public Map dpIngestItPpInfoDelChk() {

        Map<String, Object> DataList = restService.getApi("/property/info/delete/check");

        return DataList;
    }

    //    dpIngestItPpGpDt		/property/{param1}/{param2}	get
    @GetMapping(value = {"/property/{param1}/{param2}"})
    public Map dpIngestItPpGpDt(@PathVariable String param1, @PathVariable String param2) {

        Map<String, Object> DataList = restService.getApi("/property/" + param1 + "/" + param2);

        return DataList;
    }

    //    dpIngestItPpDelGpDt		/property/delete/{param1}/{param1}	post
    @PostMapping(value = {"/property/delete/{param1}/{param2}"})
    public Map dpIngestItPpDelGpDt(@PathVariable String param1, @PathVariable String param2, @RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/property/delete/" + param1 + "/" + param2, params);

        return DataList;
    }

    //    dpIngestItPpSaveGpDt		/property/save/{param1}/{param1}	post
    @PostMapping(value = {"/property/save/{param1}/{param2}"})
    public Map dpIngestItPpSaveGpDt(@PathVariable String param1, @PathVariable String param2, @RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/property/save/" + param1 + "/" + param2, params);

        return DataList;
    }

    //    dpIngestItPpInfoDelGpDt		/property/info/delete/{param1}/{param1}	post
    @PostMapping(value = {"/property/info/delete/{param1}/{param2}"})
    public Map dpIngestItPpInfoDelGpDt(@PathVariable String param1, @PathVariable String param2, @RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/property/info/delete/" + param1 + "/" + param2, params);

        return DataList;
    }

    //    dpIngestItPpInfoSaveGpDt		/property/info/save/{param1}/{param1}	post
    @PostMapping(value = {"/property/info/save/{param1}/{param2}"})
    public Map dpIngestItPpInfoSaveGpDt(@PathVariable String param1, @PathVariable String param2, @RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/property/info/save/" + param1 + "/" + param2, params);

        return DataList;
    }

    //    dpIngestItPp	/instance/property/{param1}/{param2}	get
//    @GetMapping(value = {"/property/{param1}/{param2}"})
//    public Map dpIngestItPp(@PathVariable String param1, @PathVariable String param2) {
//
//        Map<String, Object> DataList = restService.getApi("/instance/property/" + param1 + "/" + param2);
//
//        return DataList;
//    }

//    dp_ingest_it_pp_type	접속유형 항목관리 리스트 조회	get	/dp/ingest/instance/property/type

    @GetMapping(value = {"/property/type"})
    public Map dp_ingest_it_pp_type(HttpServletRequest request) throws UnsupportedEncodingException {

        Map<String, Object> DataList = restService.getApi(request.getServletPath());

        return DataList;
    }
}
