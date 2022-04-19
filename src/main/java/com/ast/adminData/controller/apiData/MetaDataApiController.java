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

    @GetMapping(value = {"/dp/ingest/meta/item"})
    public Map dp_ingest_meta_item() {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/meta/item");

        return DataList;
    }

  /*  @GetMapping(value = {"/dp/ingest/data/models/property/{param1}"})
    public Map dp_ingest_data_models_pp(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/data/models/property/" + param1);

        return DataList;
    }*/
    @GetMapping(value = {"/dp/ingest/meta/dataset/type/{param1}"})
    public Map dp_ingest_meta_dset_type(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/meta/dataset/type/" + param1);

        return DataList;
    }
    @GetMapping(value = {"/dp/ingest/meta/dataset/detail/{param1}"})
    public Map dp_ingest_meta_dset_dt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/meta/dataset/detail/" + param1);

        return DataList;
    }


    @PostMapping(value = {"/dp/ingest/meta/item/save"})
    public Map dp_ingest_meta_item_save(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/item/save");

        return DataList;
    }
    
    /*@PostMapping(value = {"/dp/ingest/meta/dataset/update/{param1}"})
    public Map dp_ingest_meta_dset_update(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/dataset/update/" + param1);

        return DataList;
    }*/

/*    @PostMapping(value = {"/dp/ingest/meta/dataset/delete/{param1}"})
    public Map dp_ingest_meta_dset_del(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/dataset/delete/" + param1);

        return DataList;
    }*/
}
