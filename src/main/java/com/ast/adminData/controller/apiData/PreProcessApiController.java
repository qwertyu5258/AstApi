package com.ast.adminData.controller.apiData;

import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Slf4j
@RestController
@RequiredArgsConstructor
public class PreProcessApiController {

    private final RestService restService;

    @PostMapping(value = {"/dp/ingest/pre/id/delete/check"})
    public Map dp_ingest_pre_id_del_chk(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/pre/id/delete/check", params);

        return DataList;
    }

    @PostMapping(value = {"/dp/ingest/pre/delete"})
    public Map dp_ingest_pre_del(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/pre/delete", params);

        return DataList;
    }

    @PostMapping(value = {"/dp/ingest/pre/save"})
    public Map dp_ingest_pre_save(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/pre/save", params);

        return DataList;
    }

//    //    dpIngestProIdDelChk		/id/delete/check/	get
//    @PostMapping(value = {"/id/delete/check"})
//    public Map dpIngestProIdDelChk(HttpServletRequest request) {
//
////        Map<String, Object> DataList = restService.postApi("/id/delete/check");
//        Map<String, Object> DataList = restService.postApi(request.getServletPath() + "?" + request.getQueryString());
//
//        return DataList;
//    }

}
