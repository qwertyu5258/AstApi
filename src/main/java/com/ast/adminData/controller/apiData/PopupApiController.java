package com.ast.adminData.controller.apiData;

import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Slf4j
@RestController
@RequiredArgsConstructor
@ResponseBody
public class PopupApiController {
    private final RestService restService;

    @PostMapping(value = {"/dp/ingest/popup/dp/ingest/popup/{param1}/dataset"})
    public Map dpIngestMetaTblDset(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/popup/dataset", params);

        return DataList;
    }

    //    dpIngestPopupDset01		/dataset01	get
    @PostMapping(value = {"/dp/ingest/popup/dataset01"})
    public Map dpIngestPopupDset01(@RequestBody Map<String,Object> params) {

//        Map<String, Object> DataList = restService.postApi("/dp/ingest/popup/dp/ingest/popup");
//        Map<String, Object> DataList = restService.postApi(request.getServletPath() + "?" + request.getQueryString());

        Map<String, Object> DataList = restService.postApi("/dp/ingest/popup/dataset01", params);
        
        return DataList;
    }

    //    dpIngestPopupTblColum		/table_colum/{param1}	get
    @PostMapping(value = {"/dp/ingest/popup/table_colum"})
    public Map dpIngestPopupTblColum(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/popup/table_colum", params);

        return DataList;
    }

    //    dpIngestPopupPpPath   /property_path/{param1}	get
    @PostMapping(value = {"/dp/ingest/popup/property_path"})
    public Map dpIngestPopupPpPath(@RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/popup/property_path", params);

        return DataList;
    }

    //    dpIngestPopupMetaTbl	/metaTable	get
    @PostMapping(value = {"/dp/ingest/popup/meta_table"})
    public Map dpIngestPopupMetaTbl(@RequestBody Map<String,Object> params) {
        Map<String, Object> DataList = restService.postApi("/dp/ingest/popup/meta_table", params);

        return DataList;
    }
}
