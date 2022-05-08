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
public class MetaDataApiController {

    private final RestService restService;

    @PostMapping(value = {"/dp/ingest/meta/item"})
    public Map dp_ingest_meta_item(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/item", params);

        return DataList;
    }

  /*  @PostMapping(value = {"/dp/ingest/data/models/property/{param1}"})
    public Map dp_ingest_data_models_pp(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/data/models/property/", params);

        return DataList;
    }*/
    @PostMapping(value = {"/dp/ingest/meta/dataset/type/{param1}"})
    public Map dp_ingest_meta_dset_type(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/dataset/type/", params);

        return DataList;
    }
    @PostMapping(value = {"/dp/ingest/meta/dataset/detail/{param1}"})
    public Map dp_ingest_meta_dset_dt(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/dataset/detail/", params);

        return DataList;
    }


    @PostMapping(value = {"/dp/ingest/meta/item/save"})
    public Map dp_ingest_meta_item_save(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/item/save", params);

        return DataList;
    }
    
    /*@PostMapping(value = {"/dp/ingest/meta/dataset/update/{param1}"})
    public Map dp_ingest_meta_dset_update(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/dataset/update/", params);

        return DataList;
    }*/

/*    @PostMapping(value = {"/dp/ingest/meta/dataset/delete/{param1}"})
    public Map dp_ingest_meta_dset_del(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/dataset/delete/", params);

        return DataList;
    }*/
}
