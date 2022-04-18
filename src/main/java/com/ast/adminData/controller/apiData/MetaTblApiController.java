package com.ast.adminData.controller.apiData;

import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Slf4j
@RestController
@RequestMapping("/dp/ingest/meta/tables")
@RequiredArgsConstructor
@ResponseBody
public class MetaTblApiController {

    private final RestService restService;

//    @GetMapping(value = { "/test111"})
//    public Map metaTable() {
//        return "metaTable";
//    }

    @GetMapping(value = {"/metaTest"})
    public Map metaTest() {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/meta/tables/D0000000000000000005/dataset");

        return DataList;
    }

//    @GetMapping("/{tables}/dataset")
//    public Map metaTableDset(@PathVariable String tables) {
//        return tables;
//    }

    //    dpIngestMetaTbl	/dp/ingest/meta/tables	get
    @GetMapping(value = {"","/"})
    public Map dpIngestMetaTbl() {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/meta/tables");

        return DataList;
    }

    //    dpIngestMetaTblDset	/dp/ingest/meta/tables/{param1}/dataset	get
    @GetMapping(value = {"/{param1}/dataset"})
    public Map dpIngestMetaTblDset(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/meta/tables/" + param1 + "/dataset");

        return DataList;
    }

    //    dpIngestMetaTblTbl	/dp/ingest/meta/tables/{param1}/table	get
    @GetMapping(value = {"/{param1}/table"})
    public Map dpIngestMetaTblTbl(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/meta/tables/" + param1 + "/table");

        return DataList;
    }

    //    dpIngestMetaTblCol	/dp/ingest/meta/tables/{param1}/column/{param1}	get
    @GetMapping(value = {"/{param1}/column"})
    public Map dpIngestMetaTblCol(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/meta/tables/" + param1 + "/column");

        return DataList;
    }

    //    dpIngestMetaTblDsetIdChk	/dp/ingest/meta/tables/dataset/id/check	get
    @GetMapping(value = {"/dataset/id/check"})
    public Map dpIngestMetaTblDsetIdChk() {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/meta/tables/dataset/id/check");

        return DataList;
    }

    //    dpIngestMetaTblChk	/dp/ingest/meta/tables/{param1}/check	get
    @GetMapping(value = {"/{param1}/check"})
    public Map dpIngestMetaTblChk(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/meta/tables/" + param1 + "/check");

        return DataList;
    }

    //    dpIngestMetaTblDelDset	/dp/ingest/meta/tables/delete/{param1}/dataset	post
    @PostMapping(value = {"/delete/{param1}/dataset"})
    public Map dpIngestMetaTblDelDset(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables//delete/" + param1 + "/dataset");

        return DataList;
    }

    //    dpIngestMetaTblDelTbl	/dp/ingest/meta/tables/delete/{param1}/table	post
    @PostMapping(value = {"/delete/{param1}/table"})
    public Map dpIngestMetaTblDelTbl(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables//delete/" + param1 + "/table");

        return DataList;
    }

    //    dpIngestMetaTblDelCol	/dp/ingest/meta/tables/delete/{param1}/column/{param1}	post
    @PostMapping(value = {"/delete/{param1}/column/{param2}"})
    public Map dpIngestMetaTblDelCol(@PathVariable String param1, @PathVariable String param2) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/delete/" + param1 + "/column/" + param2);

        return DataList;
    }

    //    dpIngestMetaTblDelChkTbl	/dp/ingest/meta/tables/delete/check/{param1}/table	get
    @GetMapping(value = {"/delete/check/{param1}/table"})
    public Map dpIngestMetaTblDelChkTbl(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/meta/tables/delete/check/" + param1 + "/table");

        return DataList;
    }

    //    dpIngestMetaTblDelChkCol	/dp/ingest/meta/tables/delete/check/{param1}/column/{param1}	get
    @GetMapping(value = {"/delete/check/{param1}/column/{param2}"})
    public Map dpIngestMetaTblDelChkCol(@PathVariable String param1, @PathVariable String param2) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/meta/tables/delete/check/" + param1 + "/column/" + param2);

        return DataList;
    }

    //    dpIngestMetaTblSaveDset	/dp/ingest/meta/tables/save/dataset	post
    //    dpIngestMetaTblSaveTbl	/dp/ingest/meta/tables/save/table	post


//    public Map dpIngestMetaTblSaveDset(@RequestBody Map<String, String> params) {
//    public Map dpIngestMetaTblSaveDset(@RequestBody String params) {
    @PostMapping(value = {"/save/dataset"}, produces = "application/json")
    @ResponseBody
    public Map dpIngestMetaTblSaveDset(@RequestBody Map<String,Object> params) throws Exception {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/save/dataset", params);

        return DataList;
    }
    @PostMapping(value = {"/save/table"})
    public Map dpIngestMetaTblSaveTbl(@RequestBody Map<String,Object> params) throws Exception {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/save/table", params);

        return DataList;
    }

    //    dpIngestMetaTblSaveCol	/dp/ingest/meta/tables/save/column	post
    @PostMapping(value = {"/save/column"})
    public Map dpIngestMetaTblSaveCol() {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/save/column");

        return DataList;
    }

    //    dpIngestMetaTblUpdateDset	/dp/ingest/meta/tables/update/dataset/{param1}	post
    @PostMapping(value = {"/update/dataset/{param1}"})
    public Map dpIngestMetaTblUpdateDset(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/update/dataset/" + param1);

        return DataList;
    }

    //    dpIngestMetaTblUpdateTbl	/dp/ingest/meta/tables/update/table/{param1}	post
    @PostMapping(value = {"/update/table/{param1}"})
    public Map dpIngestMetaTblUpdateTbl(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/update/table/" + param1);

        return DataList;
    }

    //    dpIngestMetaTblUpdateCol	/dp/ingest/meta/tables/update/{param1}/column/{param1}	post
    @PostMapping(value = {"/update/{param1}/column/{param2}"})
    public Map dpIngestMetaTblUpdateCol(@PathVariable String param1, @PathVariable String param2) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/update/" + param1 + "/column/" + param2);

        return DataList;
    }
}
