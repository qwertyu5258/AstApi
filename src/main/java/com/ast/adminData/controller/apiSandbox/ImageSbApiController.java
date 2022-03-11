package com.ast.adminData.controller.apiSandbox;

import com.ast.adminData.common.RestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Slf4j
@RestController
@RequestMapping("/services/sandbox")
@RequiredArgsConstructor
public class ImageSbApiController {

    private final RestService restService;

    //    analysisImages	GET	/services/sandbox	/images
    @GetMapping(value = {"/services/sandbox"})
    public String analysisImages() {

        Map<String, Object> DataList = restService.getApi("/services/sandbox");

        return DataList.toString();
    }

    //    analysisImagesDetail	GET	/images/{imageId}
    @GetMapping(value = {"/images/{param1}"})
    public String analysisImagesDetail(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/images/" + param1);

        return DataList.toString();
    }

    //    analysisImagesNmDupChk	GET		/images/exist/{param1}
    @GetMapping(value = {"/images/exist/{param1}"})
    public String analysisImagesNmDupChk(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/images/exist/" + param1);

        return DataList.toString();
    }

    //    analysisImagesInsert	POST		/images
    @PostMapping(value = {"/images"})
    public String analysisImagesInsert() {

        Map<String, Object> DataList = restService.postApi("/images");

        return DataList.toString();
    }

    //    analysisImagesUpdate	PATCH		/images/{param1}
    @PatchMapping(value = {"/images/{param1}"})
    public String analysisImagesUpdate(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/images/" + param1);

        return DataList.toString();
    }

    //    analysisImagesDelete	DELETE	    /images/{param1}
    @DeleteMapping(value = {"/images/{param1}"})
    public String analysisImagesDelete(@PathVariable String param1) {

        Map<String, Object> DataList = restService.getApi("/images/" + param1);

        return DataList.toString();
    }

}
