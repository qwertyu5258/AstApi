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
public class MetaTblApiController {

    private final RestService restService;

//    @PostMapping(value = { "/test111"})
//    public Map metaTable() {
//        return "metaTable";
//    }

    @PostMapping(value = {"/dp/ingest/meta/tables/metaTest"})
    public Map metaTest(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/D0000000000000000005/dataset", params);

        return DataList;
    }

//    @PostMapping("/{tables}/dataset")
//    public Map metaTableDset(@PathVariable String tables) {
//        return tables;
//    }

    //    dpIngestMetaTbl	/dp/ingest/meta/tables	get
    @PostMapping(value = {"/dp/ingest/meta/tables"})
    public Map dpIngestMetaTbl(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables", params);

        return DataList;
    }

    //    dpIngestMetaTblDset	/dp/ingest/meta/tables/{param1}/dataset	get
    @PostMapping(value = {"/dp/ingest/meta/tables/dataset"})
    public Map dpIngestMetaTblDset(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/dataset", params);

        return DataList;
    }

    //    dpIngestMetaTblTbl	/dp/ingest/meta/tables/{}/table	get
    @PostMapping(value = {"/dp/ingest/meta/tables/table"})
    public Map dpIngestMetaTblTbl(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/table", params);

        return DataList;
    }

    //    dpIngestMetaTblCol	/dp/ingest/meta/tables/{param1}/column/{param1}	get
    @PostMapping(value = {"/dp/ingest/meta/tables/column"})
    public Map dpIngestMetaTblCol(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/column", params);

        return DataList;
    }
    @PostMapping(value = {"/dp/ingest/meta/tables/column/detail"})
    public Map dp_ingest_meta_tbl_col_dt(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/column/detail", params);

        return DataList;
    }

    //    dpIngestMetaTblDsetIdChk	/dp/ingest/meta/tables/dataset/id/check	get
    @GetMapping(value = {"/dp/ingest/meta/tables/dataset/id/check"})
    public Map dpIngestMetaTblDsetIdChk() {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/meta/tables/dataset/id/check");

        return DataList;
    }

    //    dpIngestMetaTblChk	/dp/ingest/meta/tables/{param1}/check	get
    @PostMapping(value = {"/dp/ingest/meta/tables/check"})
    public Map dpIngestMetaTblChk(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/check", params);

        return DataList;
    }

    //    dpIngestMetaTblDelDset	/dp/ingest/meta/tables/delete/{param1}/dataset	post
    @PostMapping(value = {"/dp/ingest/meta/tables/delete/dataset"})
    public Map dpIngestMetaTblDelDset(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/delete/dataset", params);

        return DataList;
    }

    //    dpIngestMetaTblDelTbl	/dp/ingest/meta/tables/delete/{param1}/table	post
    @PostMapping(value = {"/dp/ingest/meta/tables/delete/table"})
    public Map dpIngestMetaTblDelTbl(@RequestBody Map<String, Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/delete/table", params);

        return DataList;
    }

    //    dpIngestMetaTblDelCol	/dp/ingest/meta/tables/delete/{}/column/{}	post
    @PostMapping(value = {"/dp/ingest/meta/tables/delete/column"})
    public Map dpIngestMetaTblDelCol(@RequestBody Map<String, Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/delete/column", params);

        return DataList;
    }

    //    dpIngestMetaTblDelChkTbl	/dp/ingest/meta/tables/delete/check/{param1}/table	get
    @PostMapping(value = {"/dp/ingest/meta/tables/delete/check/table"})
    public Map dpIngestMetaTblDelChkTbl(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/delete/check/table", params);

        return DataList;
    }

    //    dpIngestMetaTblDelChkCol	/dp/ingest/meta/tables/delete/check/{}/column/{}	get
    @PostMapping(value = {"/dp/ingest/meta/tables/delete/check/column"})
    public Map dpIngestMetaTblDelChkCol(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/delete/check/column", params);

        return DataList;
    }

    //    dpIngestMetaTblSaveDset	/dp/ingest/meta/tables/save/dataset	post
    //    dpIngestMetaTblSaveTbl	/dp/ingest/meta/tables/save/table	post


    //    public Map dpIngestMetaTblSaveDset(@RequestBody Map<String, String> params) {
//    public Map dpIngestMetaTblSaveDset(@RequestBody String params) {
    @PostMapping(value = {"/dp/ingest/meta/tables/save/dataset"}, produces = "application/json")
    @ResponseBody
    public Map dpIngestMetaTblSaveDset(@RequestBody Map<String, Object> params) throws Exception {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/save/dataset", params);

        return DataList;
    }

    @PostMapping(value = {"/dp/ingest/meta/tables/save/table"})
    public Map dpIngestMetaTblSaveTbl(@RequestBody Map<String, Object> params) throws Exception {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/save/table", params);

        return DataList;
    }

    //    dpIngestMetaTblSaveCol	/dp/ingest/meta/tables/save/column	post
    @PostMapping(value = {"/dp/ingest/meta/tables/save/column"})
    public Map dpIngestMetaTblSaveCol(@RequestBody Map<String, Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/save/column", params);

        return DataList;
    }

    //    dpIngestMetaTblUpdateDset	/dp/ingest/meta/tables/update/dataset/{param1}	post
    @PostMapping(value = {"/dp/ingest/meta/tables/update/dataset"})
    public Map dpIngestMetaTblUpdateDset(@RequestBody Map<String, Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/update/dataset", params);

        return DataList;
    }

    //    dpIngestMetaTblUpdateTbl	/dp/ingest/meta/tables/update/table/{}	post
    @PostMapping(value = {"/dp/ingest/meta/tables/update/table"})
    public Map dpIngestMetaTblUpdateTbl(@RequestBody Map<String, Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/update/table", params);

        return DataList;
    }

    //    dpIngestMetaTblUpdateCol	/dp/ingest/meta/tables/update/{}/column/{}	post
    @PostMapping(value = {"/dp/ingest/meta/tables/update/column"})
    public Map dpIngestMetaTblUpdateCol(@RequestBody Map<String, Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/update/column", params);

        return DataList;
    }
}
