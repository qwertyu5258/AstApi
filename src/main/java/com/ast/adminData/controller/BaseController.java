package com.ast.adminData.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BaseController {

    @RequestMapping("/")
    public String root(Model model) {
        model.addAttribute("attr","attr121212");
        return "index";
    }

    @RequestMapping("/clcntErrorDetail")
    public String clcntErrorDetail() {
        return "clcntErrorDetail";
    }

    @RequestMapping("/data")
    public String data() {
        return "data";
    }
    @RequestMapping("/metaInfoList")
    public String metaInfoList() { return "A2.DataSet/metaInfoList";}
    @RequestMapping("/metaInfoDetail")
    public String metaInfoDetail() {return "A2.DataSet/metaInfoDetail";}
    @RequestMapping("/dataSetList")
    public String dataSetList() {return "A2.DataSet/dataSetList";}
    @RequestMapping("/dataSetDetail")
    public String dataSetDetail() {return "A2.DataSet/dataSetDetail";}
    @RequestMapping("/multiDataList")
    public String multiDataList() {return "A2.DataSet/multiDataList";}
    @RequestMapping("/multiDataDetail")
    public String multiDataDetail() {return "A2.DataSet/multiDataDetail";}
    @RequestMapping("/multiDataSet")
    public String multiDataSet() {return "A2.DataSet/multiDataSet";}
    @RequestMapping("/index")
    public String index() {
        return "index";
    }
    @RequestMapping("/input")
    public String input() {
        return "input";
    }
    @RequestMapping("/modal")
    public String modal() {
        return "modal";
    }
    @RequestMapping("/port")
    public String port() {
        return "A3.Port/port";
    }
    @RequestMapping("/sandbox")
    public String sandbox() {
        return "sandbox";
    }
    @RequestMapping("/sandboxRgstr")
    public String sandboxRgstr() {
        return "sandboxRgstr";
    }
    @RequestMapping("/scenario")
    public String scenario() {
        return "scenario";
    }
    @RequestMapping("/search")
    public String search() {
        return "search";
    }
    @RequestMapping("/table")
    public String table() {
        return "table";
    }
    @RequestMapping("/metaTable")
    public String metaTable() {
        return "A2.MetaTblManage/metaTable";
    }
    @RequestMapping("/dataModelList")
    public String dataModelList() {
        return "A2.DataModelManage/dataModelList";
    }
    @RequestMapping("/dataModelRegist")
    public String dataModelRegist() {
        return "A2.DataModelManage/dataModelRegist";
    }
    @RequestMapping("/dataModelDetail")
    public String dataModelDetail() {
        return "A2.DataModelManage/dataModelDetail";
    }
    @RequestMapping("/adaptorConfig")
    public String adaptorConfig() {
        return "A2.AdaptorManage/adaptorConfig";
    }
    @RequestMapping("/adaptorDetail")
    public String adaptorDetail() {
        return "A2.AdaptorManage/adaptorDetail";
    }
    @RequestMapping("/instanceDetail")
    public String instanceDetail() {
        return "A2.AdaptorManage/instanceDetail";
    }
    @RequestMapping("/instanceConfig")
    public String instanceConfig() {
        return "A2.AdaptorManage/instanceConfig";
    }
    @RequestMapping("/adaptorOperation")
    public String adaptorOperation() {
        return "A2.AdaptorManage/adaptorOperation";
    }
    @RequestMapping("/instanceInquiry")
    public String instanceInquiry() {
        return "A2.AdaptorManage/instanceInquiry";
    }
    @RequestMapping("/instanceSet")
    public String instanceSet() {
        return "A2.AdaptorManage/instanceSet";
    }
    @RequestMapping("/adaptorSet")
    public String adaptorSet() {
        return "A2.AdaptorManage/adaptorSet";
    }
    @RequestMapping("/processList")
    public String processList() {
        return "A2.AdaptorManage/processList";
    }
    @RequestMapping("/processRegist")
    public String processRegist() {
        return "A2.AdaptorManage/processRegist";
    }
    @RequestMapping("/dataCollectList")
    public String dataCollectList() {
        return "A2.DataCollectManage/dataCollectList";
    }
    @RequestMapping("/dataCollectDetail")
    public String dataCollectDetail() {
        return "A2.DataCollectManage/dataCollectDetail";
    }
    @RequestMapping("/codeSet")
    public String codeSet() {
        return "A2.CodeManage/codeSet";
    }
}
