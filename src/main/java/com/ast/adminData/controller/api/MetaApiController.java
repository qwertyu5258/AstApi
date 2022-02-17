package com.ast.adminData.controller.api;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/dp/ingest/meta/tables")
@RequiredArgsConstructor
public class MetaApiController {

    @GetMapping(value = {"", "/"})
    public String metaTable() {
        return "metaTable";
    }
    @GetMapping("/{tables}/dataset")
    public String metaTableDset(@PathVariable String tables) {
        return tables;
    }
}
