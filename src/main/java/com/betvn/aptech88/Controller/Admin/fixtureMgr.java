package com.betvn.aptech88.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class fixtureMgr {
    @RequestMapping("/admin/fixture")
    public String index() {
        return "ad-fixture";
    }
}
