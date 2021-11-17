package com.betvn.aptech88.Controller.Website;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class match {
    @RequestMapping("/web/match")
    public String index(@RequestParam("league") Integer league) {
        return "web-choose-match";
    }
}
