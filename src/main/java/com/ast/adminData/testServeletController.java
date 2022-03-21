package com.ast.adminData;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testServeletController {

    @RequestMapping("/table11")
    public String table() {
        return "table";
    }
}