package com.ast.adminData.controller.apiData;

import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Slf4j
@RestController
@RequestMapping("/dp/ingest/popup")
@RequiredArgsConstructor
@ResponseBody
public class PopupApiController {
    private final RestService restService;

    @GetMapping(value = {"/{param1}/dataset"})
    public Map dpIngestMetaTblDset(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/popup/" + param1 + "/dataset");

        return DataList;
    }

    //    dpIngestPopupDset01		/dataset01	get
    @GetMapping(value = {"/dataset01"})
    public Map dpIngestPopupDset01(HttpServletRequest request) {

//        Map<String, Object> DataList = restService.getApi("/dp/ingest/popup");
        Map<String, Object> DataList = restService.getApi(request.getServletPath() + "?" + request.getQueryString());

        return DataList;
    }

    //    dpIngestPopupTblColum		/table_colum/{param1}	get
    @GetMapping(value = {"/table_colum/{param1}"})
    public Map dpIngestPopupTblColum(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/popup/table_colum/" + param1);

        return DataList;
    }

    //    dpIngestPopupPpPath   /property_path/{param1}	get
    @GetMapping(value = {"/property_path/{param1}"})
    public Map dpIngestPopupPpPath(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/dp/ingest/popup/property_path/" + param1);

        return DataList;
    }

    //    dpIngestPopupMetaTbl	/metaTable	get
    @GetMapping(value = {"/meta_table"})
    public Map dpIngestPopupMetaTbl(@RequestParam(value="table_korean_nm", required = false) String table_korean_nm) {
        Map<String, Object> DataList = restService.getApi("/dp/ingest/popup/meta_table?table_korean_nm=" + table_korean_nm);

        return DataList;
    }
}
