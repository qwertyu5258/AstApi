package com.ast.adminData.controller.api;

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
public String dpIngestAdaptorItIdChk() {

    Map<String, Object> DataList = restService.getApi("");

    return DataList.toString();
}
//    dpIngestProDt		/{param1}	get
@GetMapping(value = {"/{param1}"})
public String dpIngestProDt(@PathVariable String param1) {

    Map<String, Object> DataList = restService.getApi("/" + param1);

    return DataList.toString();
}
//    dpIngestProIdChk		/id/check/{param1}	get
@GetMapping(value = {"/id/check/{param1}"})
public String dpIngestProIdChk(@PathVariable String param1) {

    Map<String, Object> DataList = restService.getApi("/id/check/" + param1);

    return DataList.toString();
}
//    dpIngestProIdDelChk		/id/delete/check/	get
@GetMapping(value = {"/id/delete/check"})
public String dpIngestProIdDelChk() {

    Map<String, Object> DataList = restService.getApi("/id/delete/check");

    return DataList.toString();
}
//    dpIngestProSave		/save	post
@PostMapping(value = {"/save"})
public String dpIngestProSave() {

    Map<String, Object> DataList = restService.postApi("/save");

    return DataList.toString();
}
//    dpIngestProDel		/delete/{param1}	post
@PostMapping(value = {"/delete/{param1}"})
public String dpIngestProDel(@PathVariable String param1) {

    Map<String, Object> DataList = restService.postApi("/delete/" + param1);

    return DataList.toString();
}
//    dpIngestProUpdate		/update/{param1}	post
@PostMapping(value = {"/update/{param1}"})
public String dpIngestProUpdate(@PathVariable String param1) {

    Map<String, Object> DataList = restService.postApi("/update/" + param1);

    return DataList.toString();
}


}
