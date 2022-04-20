package com.ast.adminData.controller.apiData;

import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.Map;


@Slf4j
@RestController
@RequestMapping("/dp/load")
@RequiredArgsConstructor
public class LoadApiController {

    private final RestService restService;

    @GetMapping(value = {""})
    public Map dpIngestErrors() {

        Map<String, Object> DataList = restService.getApi("");

        return DataList.toString();
    }

    //    dpLoadDset	/dataset	get
    @GetMapping(value = {"/dataset"})
    public Map dpdpLoadDsetIngestErrors() {

        Map<String, Object> DataList = restService.getApi("/dataset");

        return DataList.toString();
    }

    //    dpLoadDsetDt		/dataset/detail/{param1}	get
    @GetMapping(value = {"/dataset/detail/{param1}"})
    public Map dpLoadDsetDt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/dataset/detail/" + param1);

        return DataList.toString();
    }

    //    dpLoadDsetDtCt		/dataset/detail/collection	post
    @PostMapping(value = {"/dataset/detail/collection"})
    public Map dpLoadDsetDtCt() {

        Map<String, Object> DataList = restService.postApi("/dataset/detail/collection");

        return DataList.toString();
    }

    //    dpLoadPopupHistory_01		/popup/history/01/{param1}	get
    @GetMapping(value = {"/popup/history/01/{param1}"})
    public Map dpLoadPopupHistory_01(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/popup/history/01/" + param1);

        return DataList.toString();
    }

    //    dpLoadPopupHistoryDown_01		/popup/history/down/01/{param1}	post
    @PostMapping(value = {"/popup/history/down/01/{param1}"})
    public Map dpLoadPopupHistoryDown_01(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/popup/history/down/01/" + param1);

        return DataList.toString();
    }

    //    dpLoadDataComplex		/data_complex	get
    @GetMapping(value = {"/data_complex"})
    public Map dpLoadDataComplex() {

        Map<String, Object> DataList = restService.getApi("/data_complex");

        return DataList.toString();
    }

    //    dpLoadDataComplexDt		/data_complex/detail	get
    @GetMapping(value = {"/data_complex/detail"})
    public Map dpLoadDataComplexDt() {

        Map<String, Object> DataList = restService.getApi("/data_complex/detail");

        return DataList.toString();
    }

    //    dpLoadDataComplexDtCt		/data_complex/detail/collection	get
    @GetMapping(value = {"/data_complex/detail/collection"})
    public Map dpLoadDataComplexDtCt() {

        Map<String, Object> DataList = restService.getApi("/data_complex/detail/collection");

        return DataList.toString();
    }

    //    dpLoadPopupHistory_02		/popup/history/02/{param1}	get
    @GetMapping(value = {"/popup/history/02/{param1}"})
    public Map dpLoadPopupHistory_02(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/popup/history/02/" + param1);

        return DataList.toString();
    }

    //    dpLoadPopupHistoryDown_02		/popup/history/down/02/{param1}	post
    @PostMapping(value = {"/popup/history/down/02/{param1}"})
    public Map dpLoadPopupHistoryDown_02(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/popup/history/down/02/" + param1);

        return DataList.toString();
    }

    //    dpLoadDataComplexQDt		/data_complex/query/detail/{param1}	get
    @GetMapping(value = {"/data_complex/query/detail/{param1}"})
    public Map dpLoadDataComplexQDt(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/data_complex/query/detail/" + param1);

        return DataList.toString();
    }

    //    dpLoadDataComplexQTarget		/data_complex/query/target/{param1}	get
    @GetMapping(value = {"/data_complex/query/target/{param1}"})
    public Map dpLoadDataComplexQTarget(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/data_complex/query/target/" + param1);

        return DataList.toString();
    }

    //    dpLoadDataComplexQMatch		/data_complex/query/match/{param1}	get
    @GetMapping(value = {"/data_complex/query/match/{param1}"})
    public Map dpLoadDataComplexQMatch(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/data_complex/query/match/" + param1);

        return DataList.toString();
    }

    //    dpLoadDataComplexQComplex		/data_complex/query/complex/{param1}	get
    @GetMapping(value = {"/data_complex/query/complex/{param1}"})
    public Map dpLoadDataComplexQComplex(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/data_complex/query/complex/" + param1);

        return DataList.toString();
    }

    //    dpLoadDataComplexQSql		/data_complex/query/sql/{param1}	get
    @GetMapping(value = {"/data_complex/query/sql/{param1}"})
    public Map dpLoadDataComplexQSql(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/data_complex/query/sql/" + param1);

        return DataList.toString();
    }

    //    dpLoadDsetQSave		/dataset/query/save/{param1}	post
    @PostMapping(value = {"/dataset/query/save/{param1}"})
    public Map dpLoadDsetQSave(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/dataset/query/save/" + param1);

        return DataList.toString();
    }

    //    dpLoadDsetQDelChk		/dataset/query/delete/check	get
    @GetMapping(value = {"/dataset/query/delete/check"})
    public Map dpLoadDsetQDelChk() {

        Map<String, Object> DataList = restService.getApi("/dataset/query/delete/check");

        return DataList.toString();
    }

    //    dpLoadDsetQDel		/dataset/query/delete/{param1}	post
    @PostMapping(value = {"/dataset/query/delete/{param1}"})
    public Map dpLoadDsetQDel(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/dataset/query/delete/" + param1);

        return DataList.toString();
    }

    //    dpLoadDsetQExecStart		/dataset/query/exec/start/{param1}	post
    @PostMapping(value = {"/dataset/query/exec/start/{param1}"})
    public Map dpLoadDsetQExecStart(@PathVariable String param1) {

        Map<String, Object> DataList = restService.postApi("/dataset/query/exec/start/" + param1);

        return DataList.toString();
    }

    //    dpLoadPopupDset01		/popup/dataset01	get
    @GetMapping(value = {"/popup/dataset01"})
    public Map dpLoadPopupDset01() {

        Map<String, Object> DataList = restService.getApi("/popup/dataset01");

        return DataList.toString();
    }

    //    dpLoadPopupDset02		/popup/dataset02	get
    @GetMapping(value = {"/popup/dataset02"})
    public Map dpLoadPopupDset02() {

        Map<String, Object> DataList = restService.getApi("/popup/dataset02");

        return DataList.toString();
    }

}
