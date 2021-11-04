package com.betvn.aptech88.Controller.Website;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class aboutUs {
    @RequestMapping("/web/about-us")
    public String index() {
        return "web-about-us";

    }
}
