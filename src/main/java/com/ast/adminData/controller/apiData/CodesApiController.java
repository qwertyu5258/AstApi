package com.ast.adminData.controller.apiData;

import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Slf4j
@RestController
@RequestMapping("/dp/cm/codes")
@RequiredArgsConstructor
public class CodesApiController {

    private final RestService restService;

    //    dpCmCodesDt		/detail/{param1}	get
    @GetMapping(value = {"/detail/{param1}"})
    public Map dpCmCodesDt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/detail/" + param1);

        return DataList;
    }

    //
//    dpCmCodes		/{param1}	get
    @GetMapping(value = {"/{param1}"})
    public Map dpCmCodes(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/" + param1);

        return DataList;
    }

    //    dpCmCodesSave		/save	post
    @PostMapping(value = {"/save"})
    public Map dpCmCodesSave(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/save", params);

        return DataList;
    }

    //    dpCmCodesUpdate		/update/{param1}	post
    @PostMapping(value = {"/update/{param1}"})
    public Map dpCmCodesUpdate(@PathVariable String param1, @RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/update/" + param1, params);

        return DataList;
    }

    //    dpCmCodesDel		/delete/{param1}	post
    @PostMapping(value = {"/delete/{param1}"})
    public Map dpCmCodesDel(@PathVariable String param1, @RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/delete/" + param1, params);

        return DataList;
    }

    //    dpCmCodesDtSave		/detail/save	post
    @PostMapping(value = {"/detail/save"})
    public Map dpCmCodesDtSave(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/detail/save", params);

        return DataList;
    }

    //    dpCmCodesDtUpdate		/detail/update/{param1}	post
    @PostMapping(value = {"/detail/update/{param1}"})
    public Map dpCmCodesDtUpdate(@PathVariable String param1, @RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/detail/update/" + param1, params);

        return DataList;
    }

    //    dpCmCodesDtDel		/detail/delete/{param1}	post
    @PostMapping(value = {"/detail/delete/{param1}"})
    public Map dpCmCodesDtDel(@PathVariable String param1, @RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/detail/delete/" + param1, params);

        return DataList;
    }
}
