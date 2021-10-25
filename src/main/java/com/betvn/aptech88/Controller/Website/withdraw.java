package com.betvn.aptech88.Controller.Website;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class withdraw {
    @RequestMapping("/web/withdraw")
    public String index() {
        return "web-withdraw";
    }
}
