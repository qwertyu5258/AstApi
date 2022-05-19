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
@RequiredArgsConstructor
public class InstanceApiController {

    private final RestService restService;

    //    dpIngestAdaptorIdChk		/id/check/{param1}	get
    @PostMapping(value = {"/dp/ingest/instance/id/check"})
    public Map dpIngestAdaptorIdChk(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/instance/id/check/", params);

        return DataList;
    }

    //    dpIngestItSearch	/search	get
    @PostMapping(value = {"/dp/ingest/instance/search"})
    public Map dpIngestItSearch(@RequestBody Map<String,Object> params) throws UnsupportedEncodingException {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/instance/search", params);

        return DataList;
    }

    //    dpIngestItPpDelChk		/property/delete/check	get
    @PostMapping(value = {"/dp/ingest/instance/property/delete/check"})
    public Map dpIngestItPpDelChk(@RequestBody Map<String,Object> params) throws UnsupportedEncodingException {

//        Map<String, Object> DataList = restService.postApi(request.getServletPath() + "?" + URLDecoder.decode(request.getQueryString(), "UTF-8"));
        Map<String, Object> DataList = restService.postApi("/dp/ingest/instance/search", params);

        return DataList;
    }

    //    dpIngestItPpInfoDelChk		/property/info/delete/check	get
    @PostMapping(value = {"/dp/ingest/instance/property/info/delete/check"})
    public Map dpIngestItPpInfoDelChk(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/instance/property/info/delete/check", params);

        return DataList;
    }

    //    dpIngestItPpGpDt		/property/{param1}/{param2}	get
    @PostMapping(value = {"/dp/ingest/instance/property/{param1}/{param2}"})
    public Map dpIngestItPpGpDt(@RequestBody Map<String,Object> params) {

//        Map<String, Object> DataList = restService.postApi("/dp/ingest/instance/property/" + param1 + "/dp/ingest/instance/" + param2);
        Map<String, Object> DataList = restService.postApi("/dp/ingest/instance/search", params);
        return DataList;
    }

    //    dpIngestItPpDelGpDt		/property/delete/{param1}/{param1}	post
    @PostMapping(value = {"/dp/ingest/instance/property/delete"})
    public Map dpIngestItPpDelGpDt(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/instance/property/delete", params);

        return DataList;
    }

    //    dpIngestItPpSaveGpDt		/property/save/{param1}/{param1}	post
    @PostMapping(value = {"/dp/ingest/instance/property/save"})
    public Map dpIngestItPpSaveGpDt(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/instance/property/save", params);

        return DataList;
    }

    //    dpIngestItPpInfoDelGpDt		/property/info/delete/{param1}/{param1}	post
    @PostMapping(value = {"/dp/ingest/instance/property/info/delete"})
    public Map dpIngestItPpInfoDelGpDt(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/instance/property/info/delete", params);

        return DataList;
    }

    //    dpIngestItPpInfoSaveGpDt		/property/info/save/{param1}/{param1}	post
    @PostMapping(value = {"/dp/ingest/instance/property/info/save"})
    public Map dpIngestItPpInfoSaveGpDt(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/instance/property/info/save", params);

        return DataList;
    }

    @PostMapping(value = {"/dp/ingest/instance/property/info"})
    public Map dp_ingest_it_pp_info(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/instance/property/info", params);

        return DataList;
    }

    //    dpIngestItPp	/instance/property/{param1}/{param2}	get
//    @PostMapping(value = {"/dp/ingest/instance/property/{param1}/{param2}"})
//    public Map dpIngestItPp(@RequestBody Map<String,Object> params, @PathVariable String param2) {
//
//        Map<String, Object> DataList = restService.postApi("/dp/ingest/instance/instance/property/" + param1 + "/dp/ingest/instance/" + param2);
//
//        return DataList;
//    }

//    dp_ingest_it_pp_type	접속유형 항목관리 리스트 조회	get	/dp/ingest/instance/property/type

    @PostMapping(value = {"/dp/ingest/instance/property/type"})
    public Map dp_ingest_it_pp_type(@RequestBody Map<String,Object> params) throws UnsupportedEncodingException {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/instance/property/type", params);

        return DataList;
    }

    @GetMapping(value = {"/dp/ingest/instance/property/info/id/check"})
    public Map dp_ingest_it_pp_info_id_chk() throws UnsupportedEncodingException {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/instance/property/info/id/check");

        return DataList;
    }
}
