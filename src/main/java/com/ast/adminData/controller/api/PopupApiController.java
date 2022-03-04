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
@RequestMapping("/dp/ingest/popup")
@RequiredArgsConstructor
public class PopupApiController {
    private final RestService restService;

    @GetMapping(value = {"/{param1}/dataset"})
    public String dpIngestMetaTblDset(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi(param1 + "/dataset");

        return DataList.toString();
    }

    //    dpIngestPopupDset01		/dataset01	get
    @GetMapping(value = {"/dataset01"})
    public String dpIngestPopupDset01() {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/popup");

        return DataList.toString();
    }

    //    dpIngestPopupTblColum		/table_colum/{param1}	get
    @GetMapping(value = {"/table_colum/{param1}"})
    public String dpIngestPopupTblColum(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/table_colum/" + param1);

        return DataList.toString();
    }

    //    dpIngestPopupPpPath   /property_path/{param1}	get
    @GetMapping(value = {"/property_path/{param1}"})
    public String dpIngestPopupPpPath(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/property_path/" + param1);

        return DataList.toString();
    }

    //    dpIngestPopupMetaTbl	/metaTable	get
    @GetMapping(value = {"/metaTable"})
    public String dpIngestPopupMetaTbl() {

        Map<String, Object> DataList = restService.getApi("/metaTable");

        return DataList.toString();
    }
}
