package com.ast.adminData.controller.apiData;

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
    public Map dpIngestMetaTblDset(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi(param1 + "/dataset");

        return DataList;
    }

    //    dpIngestPopupDset01		/dataset01	get
    @GetMapping(value = {"/dataset01"})
    public Map dpIngestPopupDset01() {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/popup");

        return DataList;
    }

    //    dpIngestPopupTblColum		/table_colum/{param1}	get
    @GetMapping(value = {"/table_colum/{param1}"})
    public Map dpIngestPopupTblColum(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/table_colum/" + param1);

        return DataList;
    }

    //    dpIngestPopupPpPath   /property_path/{param1}	get
    @GetMapping(value = {"/property_path/{param1}"})
    public Map dpIngestPopupPpPath(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/property_path/" + param1);

        return DataList;
    }

    //    dpIngestPopupMetaTbl	/metaTable	get
    @GetMapping(value = {"/metaTable"})
    public Map dpIngestPopupMetaTbl() {

        Map<String, Object> DataList = restService.getApi("/metaTable");

        return DataList;
    }
}
