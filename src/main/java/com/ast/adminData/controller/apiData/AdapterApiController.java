package com.ast.adminData.controller.apiData;


import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

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
    public Map dpIngestAdapter(
            @RequestParam(value="search", required = false) String search,
            @RequestParam(value="search_type", required = false) String search_type,
            @RequestParam(value="pageCurrent", required = false, defaultValue = "1") String pageCurrent) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/adapter?search="+ search +"&search_type=" + search_type + "&pageCurrent=" + pageCurrent);

        return DataList;
    }
    //    dpIngestadapterSave		/save	post
    @PostMapping(value = {"/save"})
    public Map dpIngestadapterSave() {

        Map<String, Object> DataList = restService.postApi("/save");

        return DataList;
    }

    //    dpIngestadapterIdChk		/id/check/{param1}	get
    @GetMapping(value = {"/id/check/{param1}"})
    public Map dpIngestadapterIdChk(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/id/check/" + param1);

        return DataList;
    }

    //    dpIngestadapterItIdChk		/instance/id/check/{param1}	get
    @GetMapping(value = {"/instance/id/check/{param1}"})
    public Map dpIngestadapterItIdChk(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/instance/id/check/" + param1);

        return DataList;
    }

    //    dpIngestadapterDt		/{param1}	get
    @GetMapping(value = {"/{param1}"})
    public Map dpIngestadapterDt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/" + param1);

        return DataList;
    }

    //    dpIngestadapterIt		/instance/{param1}	get
    @GetMapping(value = {"/instance/{param1}"})
    public Map dpIngestadapterIt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/instance/" + param1);

        return DataList;
    }

    //    dpIngestadapterDel		/delete/{param1}	post
    @PostMapping(value = {"/delete/{param1}"})
    public Map dpIngestadapterDel(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/delete/" + param1);

        return DataList;
    }

    //    dpIngestadapterUpdate		/update/{param1}	post
    @PostMapping(value = {"/update/{param1}"})
    public Map dpIngestadapterUpdate(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/update/" + param1);

        return DataList;
    }

    //    dpIngestadapterItSave		/instance/save	post
    @PostMapping(value = {"/instance/save"})
    public Map dpIngestadapterItSave() {

        Map<String, Object> DataList = restService.postApi("/instance/save");

        return DataList;
    }

    //    dpIngestadapterItDel		/instance/delete/{param1}	post
    @PostMapping(value = {"/instance/delete/{param1}"})
    public Map dpIngestadapterItDel(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/instance/delete/" + param1);

        return DataList;
    }

    //    dpIngestadapterItUpdate		/instance/update/{param1}	post
    @PostMapping(value = {"/instance/update/{param1}"})
    public Map dpIngestadapterItUpdate(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/instance/update/" + param1);

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

        Map<String, Object> DataList = restService.getApi("/instance/property/" + param1);

        return DataList;
    }

    //    dpIngestadapterItMatch	/instance/match/{param1}    get
    @GetMapping(value = {"/instance/match/{param1}"})
    public Map dpIngestadapterItMatch(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/instance/match/" + param1);

        return DataList;
    }

    //    dpIngestadapterItPre		/instance/pre   get
    @GetMapping(value = {"/instance/pre"})
    public Map dpIngestadapterItPre() {

        Map<String, Object> DataList = restService.getApi("/instance/pre");

        return DataList;
    }

    //    dpIngestadapterItSource		/instance/source/{param1}   get
    @GetMapping(value = {"/instance/source/{param1}"})
    public Map dpIngestadapterItSource(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/instance/source/" + param1);

        return DataList;
    }

    //    dpIngestadapterItMatchSave		/instance/match/save/{param1}   post
    @PostMapping(value = {"/instance/match/save/{param1}"})
    public Map dpIngestadapterItMatchSave(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/instance/match/save/" + param1);

        return DataList;
    }

    //    dpIngestadapterOperation	/dp/ingest/adapter	/operation/{param1}	get
    @GetMapping(value = {"/operation/{param1}"})
    public Map dpIngestadapterOperation(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/operation/" + param1);

        return DataList;
    }

    //    dpIngestadapterOperationIt	/dp/ingest/adapter	/operation/instance/{param1}	get
    @GetMapping(value = {"/operation/instance/{param1}"})
    public Map dpIngestadapterOperationIt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/operation/instance/" + param1);

        return DataList;
    }

    //    dpIngestadapterStatus		/status	post
    @PostMapping(value = {"/status"})
    public Map dpIngestadapterStatus() {

        Map<String, Object> DataList = restService.postApi("/status");

        return DataList;
    }

    //    dpIngestadapterItStatus		/instance/status	post
    @PostMapping(value = {"/instance/status"})
    public Map dpIngestadapterItStatus() {

        Map<String, Object> DataList = restService.postApi("/instance/status");

        return DataList;
    }

    //    dpIngestadapterStart		/start	post
    @PostMapping(value = {"/start"})
    public Map dpIngestadapterStart() {

        Map<String, Object> DataList = restService.postApi("/start");

        return DataList;
    }

    //    dpIngestadapterStop		/stop	post
    @PostMapping(value = {"/stop"})
    public Map dpIngestadapterStop() {

        Map<String, Object> DataList = restService.postApi("/stop");

        return DataList;
    }

    //    dpIngestadapterItStart		/instance/start	post
    @PostMapping(value = {"/instance/start"})
    public Map dpIngestadapterItStart() {

        Map<String, Object> DataList = restService.postApi("/instance/start");

        return DataList;
    }

    //    dpIngestadapterItStop		/instance/stop	post
    @PostMapping(value = {"/instance/stop"})
    public Map dpIngestadapterItStop() {

        Map<String, Object> DataList = restService.postApi("/instance/stop");

        return DataList;
    }
    // dpIngestadapterItPpSave   /instance/property/save/{param1} post
    @PostMapping(value = {"/instance/property/save/{param1}"})
    public Map dpIngestadapterItPpSave(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/instance/property/save/" + param1);

        return DataList;
    }

}
