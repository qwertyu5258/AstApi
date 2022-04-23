package com.ast.adminData.controller.apiData;


import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;


@Slf4j
@RestController
@RequestMapping("/dp/ingest/adapter")
@RequiredArgsConstructor
@ResponseBody
public class AdapterApiController {

    private final RestService restService;

    //    dpIngestadapter	/		get
    @GetMapping(value = {"", "/"})
    public Map dpIngestAdapter(HttpServletRequest request) {

        Map<String, Object> DataList = restService.getApi(request.getServletPath() + "?" + request.getQueryString());

        return DataList;
    }
    //    dpIngestadapterSave		/save	post
    @PostMapping(value = {"/save"})
    public Map dpIngestadapterSave(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/save", params);

        return DataList;
    }

    //    dpIngestadapterIdChk		/id/check	get
    @GetMapping(value = {"/id/check"})
    public Map dpIngestadapterIdChk() {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/adapter/id/check");

        return DataList;
    }
    @GetMapping(value = {"/type"})
    public Map dp_ingest_adapter_type() {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/adapter/type");

        return DataList;
    }

    //    dpIngestadapterItIdChk		/instance/id/check/{param1}	get
    @GetMapping(value = {"/instance/id/check"})
    public Map dpIngestadapterItIdChk() {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/adapter/instance/id/check");

        return DataList;
    }

    //    dpIngestadapterDt		/{param1}	get
    @GetMapping(value = {"/{param1}"})
    public Map dpIngestadapterDt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/adapter/" + param1);

        return DataList;
    }

    //    dpIngestadapterIt		/instance/{param1}	get
    @GetMapping(value = {"/instance/{param1}"})
    public Map dpIngestadapterIt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/adapter/instance/" + param1);

        return DataList;
    }

    //    dpIngestadapterDel		/delete/{param1}	post
    @PostMapping(value = {"/delete/{param1}"})
    public Map dpIngestadapterDel(@PathVariable String param1, @RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/delete/" + param1, params);

        return DataList;
    }

    //    dpIngestadapterUpdate		/update/{param1}	post
    @PostMapping(value = {"/update/{param1}"})
    public Map dpIngestadapterUpdate(@PathVariable String param1, @RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/update/" + param1, params);

        return DataList;
    }

    //    dpIngestadapterItSave		/instance/save	post
    @PostMapping(value = {"/instance/save"})
    public Map dpIngestadapterItSave(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/instance/save", params);

        return DataList;
    }

    //    dpIngestadapterItDel		/instance/delete/{param1}	post
    @PostMapping(value = {"/instance/delete/{param1}"})
    public Map dpIngestadapterItDel(@PathVariable String param1, @RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/instance/delete/" + param1, params);

        return DataList;
    }

    //    dpIngestadapterItUpdate		/instance/update/{param1}	post
    @PostMapping(value = {"/instance/update/{param1}"})
    public Map dpIngestadapterItUpdate(@PathVariable String param1, @RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/instance/update/" + param1, params);

        return DataList;
    }
// 중복 주소(from 엑셀API)
//    //    dpIngestadapterItDt		/instance2/{param1}	get
//    @GetMapping(value = {"/instance2/{param1}"})
//    public Map dpIngestadapterItDt(@PathVariable String param1) {
//
//        Map<String, Object> DataList = restService.getApi("/instance/" + param1);
//
//        return DataList;
//    }

    //    dpIngestadapterItPp		/instance/property/{param1}	get
    @GetMapping(value = {"/instance/property/{param1}"})
    public Map dpIngestadapterItPp(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/adapter/instance/property/" + param1);

        return DataList;
    }

    //    dpIngestadapterItMatch	/instance/match/{param1}    get
    @GetMapping(value = {"/instance/match/{param1}"})
    public Map dpIngestadapterItMatch(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/adapter/instance/match/" + param1);

        return DataList;
    }

    //    dpIngestadapterItPre		/instance/pre   get
    @GetMapping(value = {"/instance/pre"})
    public Map dpIngestadapterItPre() {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/adapter/instance/pre");

        return DataList;
    }

    //    dpIngestadapterItSource		/instance/source/{param1}   get
    @GetMapping(value = {"/instance/source/{param1}"})
    public Map dpIngestadapterItSource(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/adapter/instance/source/" + param1);

        return DataList;
    }

    //    dpIngestadapterItMatchSave		/instance/match/save/{param1}   post
    @PostMapping(value = {"/instance/match/save/{param1}"})
    public Map dpIngestadapterItMatchSave(@PathVariable String param1, @RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/instance/match/save/" + param1, params);

        return DataList;
    }

    //    dpIngestadapterOperation	/dp/ingest/adapter	/operation/{param1}	get
    @GetMapping(value = {"/operation/{param1}"})
    public Map dpIngestadapterOperation(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/adapter/operation/" + param1);

        return DataList;
    }

    //    dpIngestadapterOperationIt	/dp/ingest/adapter	/operation/instance/{param1}	get
    @GetMapping(value = {"/operation/instance/{param1}"})
    public Map dpIngestadapterOperationIt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/adapter/operation/instance/" + param1);

        return DataList;
    }

    //    dpIngestadapterStatus		/status	post
    @PostMapping(value = {"/status"})
    public Map dpIngestadapterStatus(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/status", params);

        return DataList;
    }

    //    dpIngestadapterItStatus		/instance/status	post
    @PostMapping(value = {"/instance/status"})
    public Map dpIngestadapterItStatus(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/instance/status", params);

        return DataList;
    }

    //    dpIngestadapterStart		/start	post
    @PostMapping(value = {"/start"})
    public Map dpIngestadapterStart(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/start", params);

        return DataList;
    }

    //    dpIngestadapterStop		/stop	post
    @PostMapping(value = {"/stop"})
    public Map dpIngestadapterStop(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/stop", params);

        return DataList;
    }

    //    dpIngestadapterItStart		/instance/start	post
    @PostMapping(value = {"/instance/start"})
    public Map dpIngestadapterItStart(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/instance/start", params);

        return DataList;
    }

    //    dpIngestadapterItStop		/instance/stop	post
    @PostMapping(value = {"/instance/stop"})
    public Map dpIngestadapterItStop(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/instance/stop", params);

        return DataList;
    }
    // dpIngestadapterItPpSave   /instance/property/save/{param1} post
    @PostMapping(value = {"/instance/property/save/{param1}"})
    public Map dpIngestadapterItPpSave(@PathVariable String param1, @RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/adapter/instance/property/save/" + param1, params);

        return DataList;
    }

    @GetMapping(value = {"/instance/{param1}/detail"})
    public Map dp_ingest_adapter_it_dt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/adapter/instance/" + param1 + "/detail");

        return DataList;
    }

}
