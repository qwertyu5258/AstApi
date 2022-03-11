package com.ast.adminData.controller.apiData;


import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.Map;


@Slf4j
@RestController
@RequestMapping("/dp/ingest/adaptor")
@RequiredArgsConstructor
public class AdaptorApiController {

    private final RestService restService;

    //    dpIngestAdaptor	/		get
    @GetMapping(value = {""})
    public String dpIngestAdaptor() {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/adaptor");

        return DataList.toString();
    }

    //    dpIngestAdaptorSave		/save	post
    @PostMapping(value = {"/save"})
    public String dpIngestAdaptorSave() {

        Map<String, Object> DataList = restService.postApi("/save");

        return DataList.toString();
    }

    //    dpIngestAdaptorIdChk		/id/check/{param1}	get
    @GetMapping(value = {"/id/check/{param1}"})
    public String dpIngestAdaptorIdChk(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/id/check/" + param1);

        return DataList.toString();
    }

    //    dpIngestAdaptorItIdChk		/instance/id/check/{param1}	get
    @GetMapping(value = {"/instance/id/check/{param1}"})
    public String dpIngestAdaptorItIdChk(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/instance/id/check/" + param1);

        return DataList.toString();
    }

    //    dpIngestAdaptorDt		/{param1}	get
    @GetMapping(value = {"/{param1}"})
    public String dpIngestAdaptorDt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/" + param1);

        return DataList.toString();
    }

    //    dpIngestAdaptorIt		/instance/{param1}	get
    @GetMapping(value = {"/instance/{param1}"})
    public String dpIngestAdaptorIt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/instance/" + param1);

        return DataList.toString();
    }

    //    dpIngestAdaptorDel		/delete/{param1}	post
    @PostMapping(value = {"/delete/{param1}"})
    public String dpIngestAdaptorDel(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/delete/" + param1);

        return DataList.toString();
    }

    //    dpIngestAdaptorUpdate		/update/{param1}	post
    @PostMapping(value = {"/update/{param1}"})
    public String dpIngestAdaptorUpdate(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/update/" + param1);

        return DataList.toString();
    }

    //    dpIngestAdaptorItSave		/instance/save	post
    @PostMapping(value = {"/instance/save"})
    public String dpIngestAdaptorItSave() {

        Map<String, Object> DataList = restService.postApi("/instance/save");

        return DataList.toString();
    }

    //    dpIngestAdaptorItDel		/instance/delete/{param1}	post
    @PostMapping(value = {"/instance/delete/{param1}"})
    public String dpIngestAdaptorItDel(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/instance/delete/" + param1);

        return DataList.toString();
    }

    //    dpIngestAdaptorItUpdate		/instance/update/{param1}	post
    @PostMapping(value = {"/instance/update/{param1}"})
    public String dpIngestAdaptorItUpdate(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/instance/update/" + param1);

        return DataList.toString();
    }
// 중복 주소(from 엑셀API)
//    //    dpIngestAdaptorItDt		/instance2/{param1}	get
//    @GetMapping(value = {"/instance2/{param1}"})
//    public String dpIngestAdaptorItDt(@PathVariable String param1) {
//
//        Map<String, Object> DataList = restService.getApi("/instance/" + param1);
//
//        return DataList.toString();
//    }

    //    dpIngestAdaptorItPp		/instance/property/{param1}	get
    @GetMapping(value = {"/instance/property/{param1}"})
    public String dpIngestAdaptorItPp(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/instance/property/" + param1);

        return DataList.toString();
    }

    //    dpIngestAdaptorItMatch	/instance/match/{param1}    get
    @GetMapping(value = {"/instance/match/{param1}"})
    public String dpIngestAdaptorItMatch(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/instance/match/" + param1);

        return DataList.toString();
    }

    //    dpIngestAdaptorItPre		/instance/pre   get
    @GetMapping(value = {"/instance/pre"})
    public String dpIngestAdaptorItPre() {

        Map<String, Object> DataList = restService.getApi("/instance/pre");

        return DataList.toString();
    }

    //    dpIngestAdaptorItSource		/instance/source/{param1}   get
    @GetMapping(value = {"/instance/source/{param1}"})
    public String dpIngestAdaptorItSource(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/instance/source/" + param1);

        return DataList.toString();
    }

    //    dpIngestAdaptorItMatchSave		/instance/match/save/{param1}   post
    @PostMapping(value = {"/instance/match/save/{param1}"})
    public String dpIngestAdaptorItMatchSave(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/instance/match/save/" + param1);

        return DataList.toString();
    }

    //    dpIngestAdaptorOperation	/dp/ingest/adaptor	/operation/{param1}	get
    @GetMapping(value = {"/operation/{param1}"})
    public String dpIngestAdaptorOperation(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/operation/" + param1);

        return DataList.toString();
    }

    //    dpIngestAdaptorOperationIt	/dp/ingest/adaptor	/operation/instance/{param1}	get
    @GetMapping(value = {"/operation/instance/{param1}"})
    public String dpIngestAdaptorOperationIt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/operation/instance/" + param1);

        return DataList.toString();
    }

    //    dpIngestAdaptorStatus		/status	post
    @PostMapping(value = {"/status"})
    public String dpIngestAdaptorStatus() {

        Map<String, Object> DataList = restService.postApi("/status");

        return DataList.toString();
    }

    //    dpIngestAdaptorItStatus		/instance/status	post
    @PostMapping(value = {"/instance/status"})
    public String dpIngestAdaptorItStatus() {

        Map<String, Object> DataList = restService.postApi("/instance/status");

        return DataList.toString();
    }

    //    dpIngestAdaptorStart		/start	post
    @PostMapping(value = {"/start"})
    public String dpIngestAdaptorStart() {

        Map<String, Object> DataList = restService.postApi("/start");

        return DataList.toString();
    }

    //    dpIngestAdaptorStop		/stop	post
    @PostMapping(value = {"/stop"})
    public String dpIngestAdaptorStop() {

        Map<String, Object> DataList = restService.postApi("/stop");

        return DataList.toString();
    }

    //    dpIngestAdaptorItStart		/instance/start	post
    @PostMapping(value = {"/instance/start"})
    public String dpIngestAdaptorItStart() {

        Map<String, Object> DataList = restService.postApi("/instance/start");

        return DataList.toString();
    }

    //    dpIngestAdaptorItStop		/instance/stop	post
    @PostMapping(value = {"/instance/stop"})
    public String dpIngestAdaptorItStop() {

        Map<String, Object> DataList = restService.postApi("/instance/stop");

        return DataList.toString();
    }
    // dpIngestAdaptorItPpSave   /instance/property/save/{param1} post
    @PostMapping(value = {"/instance/property/save/{param1}"})
    public String dpIngestAdaptorItPpSave(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/instance/property/save/" + param1);

        return DataList.toString();
    }

}
