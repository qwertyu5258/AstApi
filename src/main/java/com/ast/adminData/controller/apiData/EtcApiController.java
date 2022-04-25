package com.ast.adminData.controller.apiData;

import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.Map;

@Slf4j
@RestController
@RequiredArgsConstructor
public class EtcApiController {

    private final RestService restService;

    //    dpIngestMetaTblUpdate	/dp/ingest/meta/table/update/{param1}		post
    @PostMapping(value = {"/dp/ingest/meta/table/update/{param1}"})
    public String dpIngestMetaTblUpdate(@PathVariable String param1, @RequestBody Map<String,Object> params) {

        Map<String, Object> DataList = restService.postApi("/dp/ingest/meta/table/update/" + param1, params);

        return DataList.toString();
    }

    @GetMapping(value = {"/dp/ingest/pre"})
    public Map dp_ingest_pre(@RequestParam(value="search", required = false) String search,
                             @RequestParam(value="pageCurrent", required = false, defaultValue = "1") String pageCurrent
                             ) {
        Map<String, Object> DataList = restService.getApi("/dp/ingest/pre?search" + search + "&pageCurrent" + pageCurrent);

        return DataList;
    }

    @GetMapping(value = {"/dp/ingest/property/type"})
    public Map dp_ingest_it_pp_type(HttpServletRequest request) throws UnsupportedEncodingException {

        Map<String, Object> DataList = restService.getApi(request.getServletPath());

        return DataList;
    }

}
