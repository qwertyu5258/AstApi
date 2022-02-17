package com.ast.adminData.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BaseController {

    @RequestMapping("/")
    public String root(Model model) {
        model.addAttribute("attr","attr121212");
        return "index";
    }
    @RequestMapping("/table")
    public String table() {
        return "table";
    }

    @RequestMapping("/input")
    public String input() {
        return "input";
    }
    @RequestMapping("/modal")
    public String modal() {
        return "modal";
    }
    @RequestMapping("/search")
    public String search() {
        return "search";
    }
    @RequestMapping("/dataSetList")
    public String dataSetList() {
        return "dataSetList";
    }
    @RequestMapping("/clcntErrorDetail")
    public String clcntErrorDetail() {
        return "clcntErrorDetail";
    }
}
