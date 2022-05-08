package com.ast.adminData.controller.apiData;


import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.Map;


@Slf4j
@RestController
@RequiredArgsConstructor
@ResponseBody
public class CategoryApiController {

    private final RestService restService;
    //    dp_cm_category	분류 조회	get	/dp/cm/category
    @GetMapping(value = {"/dp/cm/category"})
    public Map dp_cm_category(@RequestParam(value="clsf_id", required = false) String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/cm/category?clsf_id=" + param1);

        return DataList;
    }

    //    dp_cm_category_list	분류 관리 조회	get	/dp/cm/category/list
    @PostMapping(value = {"/dp/cm/category/list"})
    public Map dp_cm_category_list() {

        Map<String, Object> DataList = restService.postApi("/dp/cm/category/list");

        return DataList;
    }

    //    dp_cm_category_dt	분류 항목 조회	get	/dp/cm/category/detail/{}
    @PostMapping(value = {"/dp/cm/category/detail/{param1}"})
    public Map dp_cm_category_dt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/dp/cm/category/detail/" + param1);

        return DataList;
    }

    //    dp_cm_category_save	분류 항목 저장	post	/dp/cm/category/save
    @PostMapping(value = {"/dp/cm/category/save"})
    public Map dp_cm_category_save(@RequestBody Map<String, Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/cm/category/save", params);

        return DataList;
    }

    //    dp_cm_category_update	분류 항목 수정	post	/dp/cm/category/update/{}
    @PostMapping(value = {"/dp/cm/category/update/{param1}"})
    public Map dp_cm_category_update(@PathVariable String param1, @RequestBody Map<String, Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/cm/category/update/" + param1, params);

        return DataList;
    }

    //    dp_cm_category_del	분류 항목 삭제	post	/dp/cm/category/delete/{}
    @PostMapping(value = {"/dp/cm/category/delete/{param1}"})
    public Map dp_cm_category_del(@PathVariable String param1, @RequestBody Map<String, Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/cm/category/delete/" + param1, params);

        return DataList;
    }

    //    dp_cm_category_del_chk	분류 항목 삭제 전 하위분류 체크	post	/dp/cm/category/delete/check/{}
    @PostMapping(value = {"/dp/cm/category/delete/check/{param1}"})
    public Map dp_cm_category_del_chk(@PathVariable String param1, @RequestBody Map<String, Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/cm/category/delete/check/" + param1, params);

        return DataList;
    }


}
