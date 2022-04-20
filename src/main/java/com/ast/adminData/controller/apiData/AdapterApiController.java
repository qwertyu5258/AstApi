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
    public String dpIngestAdapter(
            @RequestParam(value="search", required = false) String search,
            @RequestParam(value="search_type", required = false) String search_type,
            @RequestParam(value="pageCurrent", required = false, defaultValue = "1") String pageCurrent) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/adapter?search="+ search +"&search_type=" + search_type + "&pageCurrent=" + pageCurrent);

        return DataList.toString();
    }
    //    dpIngestadapterSave		/save	post
    @PostMapping(value = {"/save"})
    public String dpIngestadapterSave() {

        Map<String, Object> DataList = restService.postApi("/save");

        return DataList.toString();
    }

    //    dpIngestadapterIdChk		/id/check/{param1}	get
    @GetMapping(value = {"/id/check/{param1}"})
    public String dpIngestadapterIdChk(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/id/check/" + param1);

        return DataList.toString();
    }

    //    dpIngestadapterItIdChk		/instance/id/check/{param1}	get
    @GetMapping(value = {"/instance/id/check/{param1}"})
    public String dpIngestadapterItIdChk(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/instance/id/check/" + param1);

        return DataList.toString();
    }

    //    dpIngestadapterDt		/{param1}	get
    @GetMapping(value = {"/{param1}"})
    public String dpIngestadapterDt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/" + param1);

        return DataList.toString();
    }

    //    dpIngestadapterIt		/instance/{param1}	get
    @GetMapping(value = {"/instance/{param1}"})
    public String dpIngestadapterIt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/instance/" + param1);

        return DataList.toString();
    }

    //    dpIngestadapterDel		/delete/{param1}	post
    @PostMapping(value = {"/delete/{param1}"})
    public String dpIngestadapterDel(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/delete/" + param1);

        return DataList.toString();
    }

    //    dpIngestadapterUpdate		/update/{param1}	post
    @PostMapping(value = {"/update/{param1}"})
    public String dpIngestadapterUpdate(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/update/" + param1);

        return DataList.toString();
    }

    //    dpIngestadapterItSave		/instance/save	post
    @PostMapping(value = {"/instance/save"})
    public String dpIngestadapterItSave() {

        Map<String, Object> DataList = restService.postApi("/instance/save");

        return DataList.toString();
    }

    //    dpIngestadapterItDel		/instance/delete/{param1}	post
    @PostMapping(value = {"/instance/delete/{param1}"})
    public String dpIngestadapterItDel(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/instance/delete/" + param1);

        return DataList.toString();
    }

    //    dpIngestadapterItUpdate		/instance/update/{param1}	post
    @PostMapping(value = {"/instance/update/{param1}"})
    public String dpIngestadapterItUpdate(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/instance/update/" + param1);

        return DataList.toString();
    }
// 중복 주소(from 엑셀API)
//    //    dpIngestadapterItDt		/instance2/{param1}	get
//    @GetMapping(value = {"/instance2/{param1}"})
//    public String dpIngestadapterItDt(@PathVariable String param1) {
//
//        Map<String, Object> DataList = restService.getApi("/instance/" + param1);
//
//        return DataList.toString();
//    }

    //    dpIngestadapterItPp		/instance/property/{param1}	get
    @GetMapping(value = {"/instance/property/{param1}"})
    public String dpIngestadapterItPp(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/instance/property/" + param1);

        return DataList.toString();
    }

    //    dpIngestadapterItMatch	/instance/match/{param1}    get
    @GetMapping(value = {"/instance/match/{param1}"})
    public String dpIngestadapterItMatch(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/instance/match/" + param1);

        return DataList.toString();
    }

    //    dpIngestadapterItPre		/instance/pre   get
    @GetMapping(value = {"/instance/pre"})
    public String dpIngestadapterItPre() {

        Map<String, Object> DataList = restService.getApi("/instance/pre");

        return DataList.toString();
    }

    //    dpIngestadapterItSource		/instance/source/{param1}   get
    @GetMapping(value = {"/instance/source/{param1}"})
    public String dpIngestadapterItSource(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/instance/source/" + param1);

        return DataList.toString();
    }

    //    dpIngestadapterItMatchSave		/instance/match/save/{param1}   post
    @PostMapping(value = {"/instance/match/save/{param1}"})
    public String dpIngestadapterItMatchSave(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/instance/match/save/" + param1);

        return DataList.toString();
    }

    //    dpIngestadapterOperation	/dp/ingest/adapter	/operation/{param1}	get
    @GetMapping(value = {"/operation/{param1}"})
    public String dpIngestadapterOperation(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/operation/" + param1);

        return DataList.toString();
    }

    //    dpIngestadapterOperationIt	/dp/ingest/adapter	/operation/instance/{param1}	get
    @GetMapping(value = {"/operation/instance/{param1}"})
    public String dpIngestadapterOperationIt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/operation/instance/" + param1);

        return DataList.toString();
    }

    //    dpIngestadapterStatus		/status	post
    @PostMapping(value = {"/status"})
    public String dpIngestadapterStatus() {

        Map<String, Object> DataList = restService.postApi("/status");

        return DataList.toString();
    }

    //    dpIngestadapterItStatus		/instance/status	post
    @PostMapping(value = {"/instance/status"})
    public String dpIngestadapterItStatus() {

        Map<String, Object> DataList = restService.postApi("/instance/status");

        return DataList.toString();
    }

    //    dpIngestadapterStart		/start	post
    @PostMapping(value = {"/start"})
    public String dpIngestadapterStart() {

        Map<String, Object> DataList = restService.postApi("/start");

        return DataList.toString();
    }

    //    dpIngestadapterStop		/stop	post
    @PostMapping(value = {"/stop"})
    public String dpIngestadapterStop() {

        Map<String, Object> DataList = restService.postApi("/stop");

        return DataList.toString();
    }

    //    dpIngestadapterItStart		/instance/start	post
    @PostMapping(value = {"/instance/start"})
    public String dpIngestadapterItStart() {

        Map<String, Object> DataList = restService.postApi("/instance/start");

        return DataList.toString();
    }

    //    dpIngestadapterItStop		/instance/stop	post
    @PostMapping(value = {"/instance/stop"})
    public String dpIngestadapterItStop() {

        Map<String, Object> DataList = restService.postApi("/instance/stop");

        return DataList.toString();
    }
    // dpIngestadapterItPpSave   /instance/property/save/{param1} post
    @PostMapping(value = {"/instance/property/save/{param1}"})
    public String dpIngestadapterItPpSave(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/instance/property/save/" + param1);

        return DataList.toString();
    }

}
