package com.ast.adminData.controller.api;

import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@Slf4j
@RestController
@RequestMapping("/dp/ingest/meta/tables")
@RequiredArgsConstructor
public class MetaTblApiController {

    @GetMapping(value = {"", "/test111"})
    public String metaTable() {
        return "metaTable";
    }

    @GetMapping(value = {"/metaTest"})
    public String metaTest() {

        Map<String, Object> DataList = RestService.getApi("/dp/ingest/meta/tables");

        return DataList.toString();
    }

    @GetMapping("/{tables}/dataset")
    public String metaTableDset(@PathVariable String tables) {
        return tables;
    }

    //    dpIngestMetaTbl	/dp/ingest/meta/tables	get
    @GetMapping(value = {""})
    public String dpIngestMetaTbl() {

        Map<String, Object> DataList = RestService.getApi("");

        return DataList.toString();
    }
//    dpIngestMetaTblDset	/dp/ingest/meta/tables/{param1}/dataset	get
@GetMapping(value = {"/{param1}/dataset"})
public String dpIngestMetaTblDset(@PathVariable String param1) {

    Map<String, Object> DataList = RestService.getApi(param1 + "/dataset");

    return DataList.toString();
}

//    dpIngestMetaTblTbl	/dp/ingest/meta/tables/{param1}/table	get
@GetMapping(value = {"/{param1}/table"})
public String dpIngestMetaTblTbl(@PathVariable String param1) {

    Map<String, Object> DataList = RestService.getApi(param1 + "/table");

    return DataList.toString();
}
//    dpIngestMetaTblCol	/dp/ingest/meta/tables/{param1}/column/{param1}	get
@GetMapping(value = {"/{param1}/column/{param2}"})
public String dpIngestMetaTblCol(@PathVariable String param1, @PathVariable String param2) {

    Map<String, Object> DataList = RestService.getApi(param1 + "/column/" + param2);

    return DataList.toString();
}

//    dpIngestMetaTblDsetIdChk	/dp/ingest/meta/tables/dataset/id/check	get
//    dpIngestMetaTblChk	/dp/ingest/meta/tables/{param1}/check	get
//    dpIngestMetaTblDelDset	/dp/ingest/meta/tables/delete/{param1}/dataset	post
//    dpIngestMetaTblDelTbl	/dp/ingest/meta/tables/delete/{param1}/table	post
//    dpIngestMetaTblDelCol	/dp/ingest/meta/tables/delete/{param1}/column/{param1}	post
//    dpIngestMetaTblDelChkTbl	/dp/ingest/meta/tables/delete/check/{param1}/table	get
//    dpIngestMetaTblDelChkCol	/dp/ingest/meta/tables/delete/check/{param1}/column/{param1}	get
//    dpIngestMetaTblSaveDset	/dp/ingest/meta/tables/save/dataset	post
//    dpIngestMetaTblSaveTbl	/dp/ingest/meta/tables/save/table	post
//    dpIngestMetaTblSaveCol	/dp/ingest/meta/tables/save/column	post
//    dpIngestMetaTblUpdateDset	/dp/ingest/meta/tables/update/dataset/{param1}	post
//    dpIngestMetaTblUpdateTbl	/dp/ingest/meta/tables/update/table/{param1}	post
//    dpIngestMetaTblUpdateCol	/dp/ingest/meta/tables/update/{param1}/column/{param1}	post


}
