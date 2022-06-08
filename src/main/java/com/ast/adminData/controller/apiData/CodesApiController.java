package com.ast.adminData.controller.apiData;

import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Slf4j
@RestController
@RequiredArgsConstructor
public class CodesApiController {

    private final RestService restService;

    //    dpCmCodesDt		/detail/{param1}	get
    @PostMapping(value = {"/dp/cm/codes/detail/{param1}"})
    public Map dpCmCodesDt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/detail/" + param1);

        return DataList;
    }

    //
//    dpCmCodes		/{param1}	get
    @PostMapping(value = {"/dp/cm/codes/{param1}"})
    public Map dpCmCodes(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/" + param1);

        return DataList;
    }

    //    dpCmCodesSave		/save	post
    @PostMapping(value = {"/dp/cm/codes/save"})
    public Map dpCmCodesSave(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/cm/codes/save", params);

        return DataList;
    }
    @PostMapping(value = {"/dp/cm/codes"})
    public Map dpCmCodes(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/cm/codes", params);

        return DataList;
    }

    //    dpCmCodesUpdate		/update/{param1}	post
    @PostMapping(value = {"/dp/cm/codes/update"})
    public Map dpCmCodesUpdate(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/cm/codes/update", params);

        return DataList;
    }

    //    dpCmCodesDel		/delete/{param1}	post
    @PostMapping(value = {"/dp/cm/codes/delete"})
    public Map dpCmCodesDel(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/cm/codes/delete", params);

        return DataList;
    }

    //    dpCmCodesDtSave		/detail/save	post
    @PostMapping(value = {"/dp/cm/codes/detail/save"})
    public Map dpCmCodesDtSave(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/cm/codes/detail/save", params);

        return DataList;
    }
    @PostMapping(value = {"/dp/cm/codes/detail"})
    public Map dpCmCodesDt(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/cm/codes/detail", params);

        return DataList;
    }

    //    dpCmCodesDtUpdate		/detail/update/{param1}	post
    @PostMapping(value = {"/dp/cm/codes/detail/update"})
    public Map dpCmCodesDtUpdate(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/cm/codes/detail/update", params);

        return DataList;
    }

    //    dpCmCodesDtDel		/detail/delete/{param1}	post
    @PostMapping(value = {"/dp/cm/codes/detail/delete"})
    public Map dpCmCodesDtDel(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/cm/codes/detail/delete", params);

        return DataList;
    }
    @GetMapping(value = {"/dp/cm/codes/clct_mthd"})
    public Map dp_cm_codes_clct_mthd(@RequestParam(value="group_code", required = false) String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/cm/codes/clct_mthd?group_code=" + param1);

        return DataList;
    }
    @GetMapping(value = {"/dp/cm/codes/clct_ty"})
    public Map dp_cm_codes_clct_ty(@RequestParam(value="group_code", required = false) String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/cm/codes/clct_mthd?group_code=" + param1);

        return DataList;
    }
}
