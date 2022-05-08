package com.ast.adminData.controller.apiData;

import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.Map;

@Slf4j
@RestController
@RequiredArgsConstructor
public class EtcApiController {

    private final RestService restService;

    //    dpIngestMetaTblUpdate	/dp/ingest/meta/table/update/{param1}		post
    @PostMapping(value = {"/dp/ingest/meta/table/update"})
    public String dpIngestMetaTblUpdate(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/table/update", params);

        return DataList.toString();
    }

    @PostMapping(value = {"/dp/ingest/pre"})
    public Map dp_ingest_pre(@RequestBody Map<String,Object> params) {
        Map<String, Object> DataList = restService.postApi("/dp/ingest/pre", params);

        return DataList;
    }

    @PostMapping(value = {"/dp/ingest/property/type"})
    public Map dp_ingest_it_pp_type(@RequestBody Map<String,Object> params) throws UnsupportedEncodingException {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/property/type", params);

        return DataList;
    }

    @GetMapping(value = {"/dp/ingest/property/info/id/check"})
    public Map dp_ingest_adapter_type() {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/property/info/id/check");

        return DataList;
    }

    @PostMapping(value = {"/dp/ingest/property/info"})
    public Map dp_ingest_pp_info(@RequestBody Map<String,Object> params) throws UnsupportedEncodingException {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/property/info", params);

        return DataList;
    }
    @PostMapping(value = {"/dp/ingest/property/info/delete/check"})
    public Map dp_ingest_pp_info_del_chk(@RequestBody Map<String,Object> params) throws UnsupportedEncodingException {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/property/info/delete/check", params);

        return DataList;
    }
    @PostMapping(value = {"/dp/ingest/property/info/delete"})
    public Map dp_ingest_pp_info_del(@RequestBody Map<String,Object> params) throws UnsupportedEncodingException {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/property/info/delete", params);

        return DataList;
    }
    @PostMapping(value = {"/dp/ingest/property/info/save"})
    public Map dp_ingest_pp_info_save(@RequestBody Map<String,Object> params) throws UnsupportedEncodingException {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/property/info/save", params);

        return DataList;
    }

}
