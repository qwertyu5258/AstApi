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
@ResponseBody
public class AdapterApiController {

    private final RestService restService;

    //    dpIngestadapter	/		get
    @PostMapping(value = {"/dp/ingest/adapter"})
    public Map dpIngestAdapter(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter", params);

        return DataList;
    }
    //    dpIngestadapterSave		/save	post
    @PostMapping(value = {"/dp/ingest/adapter/save"})
    public Map dpIngestadapterSave(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/save", params);

        return DataList;
    }

    //    dpIngestadapterIdChk		/id/check	get
    @PostMapping(value = {"/dp/ingest/adapter/id/check"})
    public Map dpIngestadapterIdChk(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/id/check", params);

        return DataList;
    }
    // 33 // get 으로 변경 안됨
    @GetMapping(value = {"/dp/ingest/adapter/instance/id/check"})
    public Map dpIngestadapterItIdChk() {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/adapter/instance/id/check");

        return DataList;
    }
    // 34
    @PostMapping(value = {"/dp/ingest/adapter/detail"})
    public Map dpIngestadapterDt(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter", params);

        return DataList;
    }

    //get 방식으로 그대로임
    @GetMapping(value = {"/dp/ingest/adapter/type"})
    public Map dp_ingest_adapter_type() {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/adapter/type");

        return DataList;
    }

    //    dpIngestadapterItIdChk		/instance/id/check	get


    //    dpIngestadapterDt			get


    //    dpIngestadapterIt		/instance	get
    @PostMapping(value = {"/dp/ingest/adapter/instance"})
    public Map dpIngestadapterIt(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/instance", params);

        return DataList;
    }

    //    dpIngestadapterDel		/delete	post
    @PostMapping(value = {"/dp/ingest/adapter/delete"})
    public Map dpIngestadapterDel(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/delete", params);

        return DataList;
    }

    //    dpIngestadapterUpdate		/update	post
    @PostMapping(value = {"/dp/ingest/adapter/update"})
    public Map dpIngestadapterUpdate(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/update", params);

        return DataList;
    }

    //    dpIngestadapterItSave		/instance/save	post
    @PostMapping(value = {"/dp/ingest/adapter/instance/save"})
    public Map dpIngestadapterItSave(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/instance/save", params);

        return DataList;
    }

    //    dpIngestadapterItDel		/instance/delete	post
    @PostMapping(value = {"/dp/ingest/adapter/instance/delete"})
    public Map dpIngestadapterItDel(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/instance/delete", params);

        return DataList;
    }

    //    dpIngestadapterItUpdate		/instance/update	post
    @PostMapping(value = {"/dp/ingest/adapter/instance/update"})
    public Map dpIngestadapterItUpdate(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/instance/update", params);

        return DataList;
    }
    //    dpIngestadapterItPp		/instance/property	get
    @PostMapping(value = {"/dp/ingest/adapter/instance/property"})
    public Map dpIngestadapterItPp(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/instance/property", params);

        return DataList;
    }

    //    dpIngestadapterItMatch	/instance/match    get
    @PostMapping(value = {"/dp/ingest/adapter/instance/match"})
    public Map dpIngestadapterItMatch(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/instance/match", params);

        return DataList;
    }

    //    dpIngestadapterItPre		/instance/pre   get
    @PostMapping(value = {"/dp/ingest/adapter/instance/pre"})
    public Map dpIngestadapterItPre(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/instance/pre", params);

        return DataList;
    }

    //    dpIngestadapterItSource		/instance/source   get
    @PostMapping(value = {"/dp/ingest/adapter/instance/source"})
    public Map dpIngestadapterItSource(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/instance/source", params);

        return DataList;
    }

    //    dpIngestadapterItMatchSave		/instance/match/save   post
    @PostMapping(value = {"/dp/ingest/adapter/instance/match/save"})
    public Map dpIngestadapterItMatchSave(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/instance/match/save", params);

        return DataList;
    }

    //    dpIngestadapterOperation	/dp/ingest/adapter	/operation	get
    @PostMapping(value = {"/dp/ingest/adapter/operation"})
    public Map dpIngestadapterOperation(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/operation", params);

        return DataList;
    }

    //    dpIngestadapterOperationIt	/dp/ingest/adapter	/operation/instance	get
    @PostMapping(value = {"/dp/ingest/adapter/operation/instance"})
    public Map dpIngestadapterOperationIt(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/operation/instance", params);

        return DataList;
    }

    //    dpIngestadapterStatus		/status	post
    @PostMapping(value = {"/dp/ingest/adapter/status"})
    public Map dpIngestadapterStatus(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/status", params);

        return DataList;
    }

    //    dpIngestadapterItStatus		/instance/status	post
    @PostMapping(value = {"/dp/ingest/adapter/instance/status"})
    public Map dpIngestadapterItStatus(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/instance/status", params);

        return DataList;
    }

    //    dpIngestadapterStart		/start	post
    @PostMapping(value = {"/dp/ingest/adapter/start"})
    public Map dpIngestadapterStart(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/start", params);

        return DataList;
    }

    //    dpIngestadapterStop		/stop	post
    @PostMapping(value = {"/dp/ingest/adapter/stop"})
    public Map dpIngestadapterStop(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/stop", params);

        return DataList;
    }

    //    dpIngestadapterItStart		/instance/start	post
    @PostMapping(value = {"/dp/ingest/adapter/instance/start"})
    public Map dpIngestadapterItStart(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/instance/start", params);

        return DataList;
    }

    //    dpIngestadapterItStop		/instance/stop	post
    @PostMapping(value = {"/dp/ingest/adapter/instance/stop"})
    public Map dpIngestadapterItStop(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/instance/stop", params);

        return DataList;
    }
    // dpIngestadapterItPpSave   /instance/property/save post
    @PostMapping(value = {"/dp/ingest/adapter/instance/property/save"})
    public Map dpIngestadapterItPpSave(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/instance/property/save", params);

        return DataList;
    }

    @PostMapping(value = {"/dp/ingest/adapter/instance/detail"})
    public Map dp_ingest_adapter_it_dt(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/instance/detail", params);

        return DataList;
    }

}
