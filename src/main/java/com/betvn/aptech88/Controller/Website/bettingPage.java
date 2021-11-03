package com.betvn.aptech88.Controller.Website;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class bettingPage {
    @RequestMapping("/web/betting")
    public String index() {
        return "web-betting";
    }
}
