package com.betvn.aptech88.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class bettingType {
    @RequestMapping("/admin/betting-type")
    public String index() {
        return "ad-betting-type";
    }
}
