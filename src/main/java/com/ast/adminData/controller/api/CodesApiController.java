package com.ast.adminData.controller.api;

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
    public String dpCmCodesDt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/detail/" + param1);

        return DataList.toString();
    }

    //
//    dpCmCodes		/{param1}	get
    @GetMapping(value = {"/{param1}"})
    public String dpCmCodes(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/" + param1);

        return DataList.toString();
    }

    //    dpCmCodesSave		/save	post
    @PostMapping(value = {"/save"})
    public String dpCmCodesSave() {

        Map<String, Object> DataList = restService.postApi("/save");

        return DataList.toString();
    }

    //    dpCmCodesUpdate		/update/{param1}	post
    @PostMapping(value = {"/update/{param1}"})
    public String dpCmCodesUpdate(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/update/" + param1);

        return DataList.toString();
    }

    //    dpCmCodesDel		/delete/{param1}	post
    @PostMapping(value = {"/delete/{param1}"})
    public String dpCmCodesDel(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/delete/" + param1);

        return DataList.toString();
    }

    //    dpCmCodesDtSave		/detail/save	post
    @PostMapping(value = {"/detail/save"})
    public String dpCmCodesDtSave() {

        Map<String, Object> DataList = restService.postApi("/detail/save");

        return DataList.toString();
    }

    //    dpCmCodesDtUpdate		/detail/update/{param1}	post
    @PostMapping(value = {"/detail/update/{param1}"})
    public String dpCmCodesDtUpdate(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/detail/update/" + param1);

        return DataList.toString();
    }

    //    dpCmCodesDtDel		/detail/delete/{param1}	post
    @PostMapping(value = {"/detail/delete/{param1}"})
    public String dpCmCodesDtDel(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/detail/delete/" + param1);

        return DataList.toString();
    }
}
