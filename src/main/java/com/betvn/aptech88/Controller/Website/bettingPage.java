package com.betvn.aptech88.Controller.Website;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class bettingPage {
    @RequestMapping("/web/betting")
    public String index(@RequestParam("match") Integer match) {
        return "web-betting";
    }
}
