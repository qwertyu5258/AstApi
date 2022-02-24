package com.ast.adminData.controller.api;

import com.ast.adminData.common.RestService;
import com.ast.adminData.configProperties.ConfigProperties;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Slf4j
@RestController
@RequestMapping("/dp/ingest/meta/tables")
@RequiredArgsConstructor
public class MetaTblApiController {

    private final RestService restService;

    @GetMapping(value = {"", "/test111"})
    public String metaTable() {
        return "metaTable";
    }

    @GetMapping(value = {"/metaTest"})
    public String metaTest() {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/meta/tables");

        return DataList.toString();
    }

    @GetMapping("/{tables}/dataset")
    public String metaTableDset(@PathVariable String tables) {
        return tables;
    }

    //    dpIngestMetaTbl	/dp/ingest/meta/tables	get
    @GetMapping(value = {""})
    public String dpIngestMetaTbl() {

        Map<String, Object> DataList = restService.getApi("");

        return DataList.toString();
    }

    //    dpIngestMetaTblDset	/dp/ingest/meta/tables/{param1}/dataset	get
    @GetMapping(value = {"/{param1}/dataset"})
    public String dpIngestMetaTblDset(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi(param1 + "/dataset");

        return DataList.toString();
    }

    //    dpIngestMetaTblTbl	/dp/ingest/meta/tables/{param1}/table	get
    @GetMapping(value = {"/{param1}/table"})
    public String dpIngestMetaTblTbl(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi(param1 + "/table");

        return DataList.toString();
    }

    //    dpIngestMetaTblCol	/dp/ingest/meta/tables/{param1}/column/{param1}	get
    @GetMapping(value = {"/{param1}/column/{param2}"})
    public String dpIngestMetaTblCol(@PathVariable String param1, @PathVariable String param2) {

        Map<String, Object> DataList = restService.getApi(param1 + "/column/" + param2);

        return DataList.toString();
    }

    //    dpIngestMetaTblDsetIdChk	/dp/ingest/meta/tables/dataset/id/check	get
    @GetMapping(value = {"/dataset/id/check"})
    public String dpIngestMetaTblDsetIdChk() {

        Map<String, Object> DataList = restService.getApi("/dataset/id/check");

        return DataList.toString();
    }

    //    dpIngestMetaTblChk	/dp/ingest/meta/tables/{param1}/check	get
    @GetMapping(value = {"/{param1}/check"})
    public String dpIngestMetaTblChk(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi(param1 + "/check");

        return DataList.toString();
    }

    //    dpIngestMetaTblDelDset	/dp/ingest/meta/tables/delete/{param1}/dataset	post
    @PostMapping(value = {"/delete/{param1}/dataset"})
    public String dpIngestMetaTblDelDset(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/delete/" + param1 + "/dataset");

        return DataList.toString();
    }

    //    dpIngestMetaTblDelTbl	/dp/ingest/meta/tables/delete/{param1}/table	post
    @PostMapping(value = {"/delete/{param1}/table"})
    public String dpIngestMetaTblDelTbl(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/delete/" + param1 + "/table");

        return DataList.toString();
    }

    //    dpIngestMetaTblDelCol	/dp/ingest/meta/tables/delete/{param1}/column/{param1}	post
    @PostMapping(value = {"dp/ingest/meta/tables/delete/{param1}/column/{param2}"})
    public String dpIngestMetaTblDelCol(@PathVariable String param1, @PathVariable String param2) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/delete/" + param1 + "/column/" + param2);

        return DataList.toString();
    }

    //    dpIngestMetaTblDelChkTbl	/dp/ingest/meta/tables/delete/check/{param1}/table	get
    @GetMapping(value = {"/dp/ingest/meta/tables/delete/check/{param1}/table"})
    public String dpIngestMetaTblDelChkTbl(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/meta/tables/delete/check/" + param1 + "/table");

        return DataList.toString();
    }

    //    dpIngestMetaTblDelChkCol	/dp/ingest/meta/tables/delete/check/{param1}/column/{param1}	get
    @GetMapping(value = {"/dp/ingest/meta/tables/delete/check/{param1}/column/{param2}"})
    public String dpIngestMetaTblDelChkCol(@PathVariable String param1, @PathVariable String param2) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/meta/tables/delete/check/" + param1 + "/column/" + param2);

        return DataList.toString();
    }

    //    dpIngestMetaTblSaveDset	/dp/ingest/meta/tables/save/dataset	post
    @PostMapping(value = {"/dp/ingest/meta/tables/save/dataset"})
    public String dpIngestMetaTblSaveDset() {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/save/dataset");

        return DataList.toString();
    }

    //    dpIngestMetaTblSaveTbl	/dp/ingest/meta/tables/save/table	post
    @PostMapping(value = {"/dp/ingest/meta/tables/save/table"})
    public String dpIngestMetaTblSaveTbl() {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/save/table");

        return DataList.toString();
    }

    //    dpIngestMetaTblSaveCol	/dp/ingest/meta/tables/save/column	post
    @PostMapping(value = {"/dp/ingest/meta/tables/save/column"})
    public String dpIngestMetaTblSaveCol() {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/save/column");

        return DataList.toString();
    }

    //    dpIngestMetaTblUpdateDset	/dp/ingest/meta/tables/update/dataset/{param1}	post
    @PostMapping(value = {"/dp/ingest/meta/tables/update/dataset/{param1}"})
    public String dpIngestMetaTblUpdateDset(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/update/dataset/" + param1);

        return DataList.toString();
    }

    //    dpIngestMetaTblUpdateTbl	/dp/ingest/meta/tables/update/table/{param1}	post
    @PostMapping(value = {"/dp/ingest/meta/tables/update/table/{param1}"})
    public String dpIngestMetaTblUpdateTbl(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/update/table/" + param1);

        return DataList.toString();
    }

    //    dpIngestMetaTblUpdateCol	/dp/ingest/meta/tables/update/{param1}/column/{param1}	post
    @PostMapping(value = {"/dp/ingest/meta/tables/update/{param1}/column/{param2}"})
    public String dpIngestMetaTblUpdateCol(@PathVariable String param1, @PathVariable String param2) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/tables/update/" + param1 + "/column/" + param2);

        return DataList.toString();
    }
}
