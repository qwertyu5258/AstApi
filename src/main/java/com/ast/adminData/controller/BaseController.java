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
    @RequestMapping("/dataSetList")
    public String dataSetList() {
        return "A2.DataSet/dataSetList";
    }
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
}
